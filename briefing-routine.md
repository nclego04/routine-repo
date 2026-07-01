# Morning Briefing Routine — DSP Learning Plan

A read-only routine that produces a single, buildable study session for the day.
Paste the prompt below into a Claude Code session opened on this repo.

**Do not edit any files** when running this routine — it only reads.

---

## The prompt

> This is a read-only morning briefing for my DSP learning plan. Do not edit any files.
>
> In this repo, read:
> - `progress.md` — parse the "Current: Week N, Day N" line and the recent ## Log entries.
> - `dsp-audio-6-month-plan-daily.md` — the plan, with day-level deliverables under each "### Week N".
>
> Find the deliverable for the current Week and Day (a "- **Day N:**" line, or a
> "- **Days X–Y:**" range that contains Day N), plus that week's *Resources:* line.
> Sanity-check the Current line against the log; if the log clearly implies a
> different day, use that and note it in one line.
>
> Then give me today's session:
> - **Today (Week N, Day N):** the plan's one-line deliverable.
> - **Do this:** a 3–6 step checklist to hit it in ~2 hours.
> - **Watch out for:** the one thing most likely to trip me up.
> - **Done when:** a concrete finish condition.
> - **Resources:** the week's resources line.
>
> Keep it concrete and buildable. No long theory lecture.

---

## After each session

Update `progress.md` yourself (this is the only write step, and you do it, not the briefing):

1. Bump the `Current: Week N, Day N` line to the next study day.
   - Days run 1–5 per week (5 study days). After Day 5, advance to the next
     week's Day 1.
2. Add a one-line `## Log` entry: `- WNDn: <what you built, any bug + how you fixed it>`.
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
