# Transcript pre-read prompt (paste-in before watching a lecture)

*Companion to `dsp-audio-plan.md`.*

*Use when you have the transcript for the next lecture and want to read a short primer before watching, so you watch actively instead of taking notes cold. This is a primer, not a summary — it should make you watch more sharply, not replace watching. Best pasted the night before or right before a Day-N video.*

> I'm about to watch **[lecture number / title]**, which feeds **[pset number]**. This week's **Done when** is: **[paste the week's Done-when line]**. Below the line is the lecture transcript.
>
> Give me a pre-watch primer, not a substitute for watching. Specifically:
>
> 1. **The one question this lecture answers**, in one sentence — the thing I should be able to answer myself by the end.
> 2. **Where this sits in the chain** — one line connecting it to the last thing I derived and the thing it sets up next (forward-link style, matching the plan's own framing).
> 3. **New notation/vocabulary**, defined plainly, so I'm not decoding symbols instead of following the logic in real time.
> 4. **The roadmap** — the sequence of moves the lecture makes to get from setup to result (e.g. "starts from X, applies Y, substitutes Z, arrives at W") — structure only, not the worked algebra. If the lecture's whole point is deriving a result, do not hand me the result; tell me the shape of the argument and let the video and my own hand deliver the punchline.
> 5. **One likely trap** — if this lecture's structure resembles a pattern I've gotten wrong before (negated-index sign flips, convolution-vs-multiplication-by-δ, a 0/0 indeterminate at DC, collapsing a signal to a number, etc. — check `cards.md` and `LOG.md`'s friction notes if you have them), tell me what to watch for, not the fix.
> 6. **Two questions to answer cold right after watching**, before I open the pset — a quick retrieval check, not a review of the primer itself.
>
> Keep the whole thing under half a page. Rules: reason only from the transcript — don't fill gaps from outside knowledge of the course.

**The line you never cross:** never state the lecture's final derived result if deriving it is the day's deliverable; the roadmap can name what gets derived without showing how it comes out.

## Where to get the transcript

- **YouTube:** open the lecture on the MIT OCW channel → "..." menu → **Show transcript** → copy the panel text (timestamps are harmless noise, ignore them).
- **OCW lecture page (ocw.mit.edu):** some RES.6-007 lectures ship a transcript PDF/text file alongside the video — check the "Resources" tab for the lecture.

## Why this is a primer prompt, not a summary prompt

Your plan already treats the derivation as the deliverable ("no day ends on watching video only," `cards.md`'s derivation-prompt cards). A primer that gives away the derived result — even a good one — quietly turns lecture-watch into lecture-confirm, which is weaker retrieval than deriving cold. The rule in step 4 and the closing line exist to stop that from happening by accident.
