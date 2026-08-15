# Pset triage prompt (paste-in when a problem set is too long)

*Companion to `dsp-audio-plan.md`.*

*Use when a lecture's problem set is more than a ~2-hour day can hold. Paste this prompt plus the problem statements — solutions aren't needed (you self-check with those). It returns the minimal keep-set and the single highest-value problem, dropping redundant drill without touching the load-bearing concepts. Best on rust-buffer and consolidation days; it barely helps the two hardest stretches (the sampling/modulation weeks 0.4–0.5 are overloaded by lecture count, the Laplace/z weeks 0.5–0.6 by derivation depth — different valves).*

> I'm triaging this problem set to fit a ~2-hour study day without losing load-bearing concepts. Below the line are the problem statements from **[lecture / week]**. This week's **Done when** is: **[paste the week's Done-when line]**.
>
> Classify every problem internally as exactly one of the following — don't show me the classification, just use it to decide:
> - **derivation** — builds a result from scratch (e.g. rect pulse → sinc, H(z) from a difference equation). *Keep, always.*
> - **probe** — a boundary case, sign trap, ROC subtlety, or a "why" that catches a misconception. *Keep at least one per concept.*
> - **synthesis** — combines several ideas, usually near the end. *Keep if the day allows.*
> - **drill** — repeats a computation I've already done once in this set. *Skip after the first.*
>
> Then give me only these two things — no per-problem table, no walkthrough of the problems you dropped:
> 1. **The one problem to do if I only had time for one** — whichever best reaches the Done-when, with a one-line reason.
> 2. **The minimal keep-set** — the smallest list that reaches the Done-when, plus one stretch problem for durability. One short clause per problem saying which concept it carries; nothing more.
>
> Rules: reason from the problem statements — you don't need solutions to triage. Default to KEEP if any keep-signal fires (it makes me derive, probes a "why", or hits an edge case). Include the first and last problem in the keep-set unless one is pure drill. If a whole *type* ends up cut, add one closing line naming the concept that needs a **derivation-prompt card**, so spaced repetition maintains it instead of it silently dropping.

**The line you never cross:** the cut is drill (redundant computation), never derivations, and never a concept named in the week's Done-when. If trimming problems can't get a day down to size, the problem isn't the pset — see the fall-behind triage, and protect the derivation over the code.
