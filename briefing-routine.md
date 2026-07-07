# Morning Briefing Routine — DSP Learning Plan

A read-only routine that produces a single, buildable study session for the day.
Paste the prompt below into a Claude Code session opened on this repo.

**Do not edit any files** when running this routine — it only reads.

---

## The prompt

> This is a read-only morning briefing for my DSP learning plan. Do not edit any files.
>
> In this repo, read:
> - `LOG.md` — parse the "Current: ..." line and the recent ## Log entries. The
>   Current line is either a Phase-0 position ("Current: Phase 0, Week 0.N, Day N")
>   or a build-week position ("Current: Week N, Day N").
> - `dsp-audio-plan.md` — the plan. It has a "## Phase 0 — Theory Foundation"
>   section with weeks headed "### Week 0.N", followed by build months with weeks
>   headed "### Week N". Day-level deliverables sit under each week header.
>
> Find the week header matching the Current line (e.g. "### Week 0.1" for Phase 0,
> "### Week 3" for a build week), then the deliverable for the current Day (a
> "- **Day N:**" line, or a "- **Days X–Y:**" range that contains Day N), plus that
> week's *Resources:* line and any *Deliverable:* / *Done when:* text.
> Sanity-check the Current line against the log; if the log clearly implies a
> different day, use that and note it in one line.
>
> Then give me today's session:
> - **Today (<current position>):** the plan's one-line deliverable.
> - **Do this:** a 3–6 step checklist to hit it in ~2 hours.
> - **Watch out for:** the one thing most likely to trip me up.
> - **Done when:** a concrete finish condition.
> - **Resources:** the week's resources line.
>
> Keep it concrete and buildable. No long theory lecture.

---

## After each session

Update `LOG.md` yourself (this is the only write step, and you do it, not the briefing):

1. Bump the `Current:` line to the next study day.
   - Days run 1–5 per week (5 study days). After Day 5, advance to the next
     week's Day 1.
   - Phase 0 runs Weeks 0.1 → 0.6. After Phase 0, Week 0.6 Day 5, advance to the
     first build week, `Current: Week 3, Day 1` (build weeks start at Week 3;
     old Weeks 1–2 are retired into Phase 0).
2. Add a one-line `## Log` entry with the matching prefix:
   - Phase 0: `- P<week>D<day>:` (P for the theory phase, e.g. `P1D1:` for Week 0.1
     Day 1, `P6D5:` for Week 0.6 Day 5).
   - Build weeks: `- W<week>D<day>:` (e.g. `W3D1:` for Week 3 Day 1).
   - Keep the bug stories — they're your "walk me through a hard bug" interview
     material (see the plan's weekly habits).

That's it. Next morning, run the prompt again and it picks up from the new
`Current:` line.

---

## Notes

- The plan is 5 study days/week; weekends/off-days aren't tracked — just don't
  advance the `Current:` line on days you don't study.
- Catch-up weeks (4, 8, 12, 16, 20, 24) are real buffer. If a deliverable
  slips, slide the rest down and lean on the catch-up week rather than marking
  days done that aren't.
- The briefing trusts the log over the `Current:` line if they disagree, so an
  occasional missed bump self-corrects as long as your log entries are accurate.
