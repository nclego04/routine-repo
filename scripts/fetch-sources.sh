#!/usr/bin/env bash
# fetch-sources.sh — mirror RES.6-007 course sources into the repo.
#
# One-time setup so the morning routine reads psets/transcripts from the repo
# instead of fetching ocw.mit.edu (which the routine's sandbox blocks).
#
# Source: MIT OpenCourseWare, RES.6-007 Signals and Systems (Oppenheim),
# Spring 2011. Licensed CC BY-NC-SA 4.0. Attribution is preserved inside each
# PDF; do not strip it.
#
# Run from the repo root:  bash scripts/fetch-sources.sh

set -euo pipefail

ZIP_URL="https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/res.6-007-spring-2011.zip"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
PSETS="$REPO_ROOT/source/psets"
TRANSCRIPTS="$REPO_ROOT/source/transcripts"

echo "==> Repo root: $REPO_ROOT"
mkdir -p "$PSETS" "$TRANSCRIPTS"

# ---------------------------------------------------------------------------
# 1. Download + extract
# ---------------------------------------------------------------------------
echo "==> Downloading course archive (this is the slow part)..."
curl -fL --retry 3 -o "$WORK/course.zip" "$ZIP_URL"

echo "==> Extracting..."
unzip -q "$WORK/course.zip" -d "$WORK/course"

# The archive's internal layout has changed before. Find static_resources
# wherever it landed rather than assuming a fixed path.
RES_DIR="$(find "$WORK/course" -type d -name static_resources | head -1)"
if [ -z "$RES_DIR" ]; then
  echo "!! No static_resources/ directory found. Archive layout may have changed."
  echo "!! Extracted tree:"
  find "$WORK/course" -maxdepth 2 -type d | head -20
  exit 1
fi
echo "==> Resources at: $RES_DIR"

# ---------------------------------------------------------------------------
# 2. Problem sets + solutions (already correctly named, just copy)
# ---------------------------------------------------------------------------
echo "==> Copying problem sets and solutions..."
find "$RES_DIR" -name 'MITRES_6_007S11_hw*.pdf' -exec cp -n {} "$PSETS/" \;

# Strip the hash prefix if present: <hash>_MITRES_..._hw12.pdf -> MITRES_..._hw12.pdf
for f in "$PSETS"/*_MITRES_6_007S11_hw*.pdf; do
  [ -e "$f" ] || continue
  base="$(basename "$f")"
  clean="MITRES_6_007S11_${base#*MITRES_6_007S11_}"
  [ "$base" != "$clean" ] && mv -n "$f" "$PSETS/$clean"
done

PS_COUNT=$(find "$PSETS" -name '*hw*.pdf' ! -name '*_sol.pdf' | wc -l)
SOL_COUNT=$(find "$PSETS" -name '*hw*_sol.pdf' | wc -l)
echo "    problem sets: $PS_COUNT   solutions: $SOL_COUNT"
[ "$PS_COUNT" -lt 20 ] && echo "    !! expected ~26 psets — check the archive contents"

# ---------------------------------------------------------------------------
# 3. Transcripts — named by YouTube video ID, so identify by content
# ---------------------------------------------------------------------------
# Transcript PDFs carry no lecture number in the filename. Line 1 of each
# reads "MITOCW | MITRES_6-007S11lecNN_300k.mp4" — that string is the only
# reliable identifier, and it's the same check the routine's hard gate uses.
echo "==> Identifying transcripts by first-line marker..."

if ! python -c "import pypdf" 2>/dev/null; then
  echo "    pypdf not found. Install with:  pip install pypdf"
  echo "    Skipping transcripts; psets are done. Re-run after installing."
  exit 0
fi

python - "$RES_DIR" "$TRANSCRIPTS" <<'PY'
import re, shutil, sys
from pathlib import Path
from pypdf import PdfReader

res_dir, out_dir = Path(sys.argv[1]), Path(sys.argv[2])
pattern = re.compile(r"MITRES_6-007S11lec(\d{2})_300k")
found = {}

for pdf in res_dir.rglob("*.pdf"):
    if "MITRES_6_007S11_" in pdf.name:      # psets/lecture notes, not transcripts
        continue
    try:
        head = (PdfReader(str(pdf)).pages[0].extract_text() or "")[:200]
    except Exception:
        continue
    m = pattern.search(head)
    if m:
        n = int(m.group(1))
        dest = out_dir / f"lec{n:02d}_transcript.pdf"
        shutil.copyfile(pdf, dest)
        found[n] = dest.name

if found:
    for n in sorted(found):
        print(f"    lec{n:02d} -> {found[n]}")
    missing = [n for n in range(1, 27) if n not in found]
    if missing:
        print(f"    !! no transcript found for lectures: {missing}")
        print("    !! these may not ship in the archive — fetch individually if needed")
else:
    print("    !! no transcripts found in the archive.")
    print("    !! They may be web-only. Fetch them per-lecture instead.")
PY

# ---------------------------------------------------------------------------
# 4. Attribution
# ---------------------------------------------------------------------------
cat > "$REPO_ROOT/source/README.md" <<'EOF'
# Course sources (mirrored)

Problem sets, solutions, and lecture transcripts from **MIT OpenCourseWare,
RES.6-007 *Signals and Systems*** (Prof. Alan V. Oppenheim), Spring 2011.

Source: https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/
License: Creative Commons BY-NC-SA 4.0
(https://creativecommons.org/licenses/by-nc-sa/4.0/)

Mirrored here so the morning briefing routine can read them from the repo
rather than fetching ocw.mit.edu, which the routine's sandbox blocks.
Regenerate with `bash scripts/fetch-sources.sh`.

## Layout

- `psets/MITRES_6_007S11_hwNN.pdf`      — problem set NN
- `psets/MITRES_6_007S11_hwNN_sol.pdf`  — solutions for NN
- `transcripts/lecNN_transcript.pdf`    — lecture NN transcript
EOF

echo
echo "==> Done."
echo "    $PSETS"
echo "    $TRANSCRIPTS"
echo
echo "Next: review, then commit."
echo "  git add source/ scripts/fetch-sources.sh && git commit -m 'Mirror OCW sources'"
