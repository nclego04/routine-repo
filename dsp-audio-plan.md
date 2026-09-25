# DSP / Audio — Invariant Core (Theory-First, Weeks 0.1 → 28)

**What this plan is:** the body of work that is correct **regardless of which program, advisor, or research direction you end up in.** It runs from where you are now (Phase 0, Week 0.4 Day 4) through Week 28, landing immediately before a Fall 2027 program start.

**Course structure.** Six linked courses — **DSP 501** (Phase 0), **DSP 502** (Phase 1), **DSP 503** (Phase 2), **DSP 504** (Phase 3), **DSP 505** (Phase 4), **DSP 506** (Phase 5) — each backed by a real course with video lectures and graded problem sets, in the same watch-lecture → work-assignment → self-check pattern RES.6-007 established for Phase 0. Every video source is listed once in the **Source Registry** below. Two blocks never had a full course and don't get one — DSP 503 Week 11 and DSP 506 in its entirety; see the **Coverage Ledger** for what replaces them and why that's final, not still-searching.

---

## What changed in this revision

Four things changed at once. Each cut below has an actual reason attached, not a rationalization.

**1. Target start moved from Spring 2027 to Fall 2027.** Every date in this document was recomputed from 2026-08-29 forward. The mid-January 2027 hard gate that Phase 0 + Phase 1 were paced against **no longer exists** and has been removed everywhere it appeared. Nothing is due in January now.

**2. The ~10 hrs/week assumption is cut.** It was never measured; it was assumed at the time this document was first written and never checked against `LOG.md`. It is wrong by a factor of two. The plan is now paced at **3 study days/week**, derived below from 45 days of your own log. Every phase boundary in this document carries a real date computed at that rate.

**3. "Don't plan past Week 16" is cut.** That instruction was correct when Week 16 sat just before a program start. Under Fall 2027 it lands **2027-04-02, about 20 weeks before you start**. Twenty unplanned weeks is not discipline, it's abdication. Weeks 17–28 are now specified: **Phase 4 (DSP 505)** and **Phase 5 (DSP 506)**, with the reasoning in *The Week 16 gap* below.

**4. "Adaptive filtering is the UIC/Corey branch reward" is cut.** The previous version reserved NPTEL-SSP Weeks 8–11 as a post-branch prize for one of two outcomes. That classification was wrong. Adaptive filtering is the estimation machinery under HRTF individualization as much as under beamforming; it is the direct generalization of the Wiener filter derived in Week 6 (Wiener is the known-statistics case, LMS is what you do when you don't know them, which is always); and `candidate-profile.md`'s own "Do NOT claim" list names *"adaptive filters, LMS/RLS"* as a gap with no branch attached to it. It was deferred for schedule. The schedule reason evaporated. It is now **Phase 4, invariant core**.

**5. Week 16 is demoted from branch point to checkpoint.** The branch decision is no longer a week number. It is a **dated event** — whenever the admissions answer actually lands — with a trigger rule attached. See *The branch decision*.

**Also cut, smaller:** the CSUF Open University August 10, 2026 item (the date passed, and `open-items-tracker.md` §6 records that you are not enrolling through that track at all); the "one thing that might still land in this window" section, which was entirely Spring-2027 reasoning; and the duplicated preamble sections, which were the visible seam from the previous two rewrites.

**Unchanged and deliberately so:** the DSP 501–504 phase framing, week numbering with build weeks starting at **Week 3**, the `P<wk>D<day>` / `W<wk>D<day>` log scheme, a **Done when** gate on every week, the Source Registry, and the Coverage Ledger. The day-level deliverables in Weeks 0.4–16 are unchanged in content.

**One open item this revision could not resolve:** `[CONFIRM]` — moving to Fall 2027 makes the existing UIC admission either a **deferral** or a **re-application**, and they are different situations. Deferral means UIC remains a known floor and only CSUF is open. Re-application means there is no floor until the Fall 2027 cycle resolves, and every "UIC is secured" claim below has to come out. This document currently assumes **deferral** and flags the assumption. Resolve it before trusting the branch section.

---

## Reading the calendar

**A "week" in this document is a unit of five study days. It is not a calendar week.** At your measured pace of three study days per week, one plan week takes **1.67 calendar weeks**.

The absence of that sentence is what let a six-week slip go unnamed. Every week below now carries the calendar date its final day lands on, computed at 3 study days/week from Monday 2026-08-31.

| Phase | Weeks | Closes |
|---|---|---|
| **DSP 501** — Phase 0, deterministic theory | 0.4 (resume) – 0.8 | **2026-10-20** |
| **DSP 502** — Phase 1, stochastic DSP | 3 – 7 | **2026-12-18** |
| **DSP 503** — Phase 2, filters, multirate, real-time C++ | 8 – 12 | **2027-02-14** |
| **DSP 504** — Phase 3, the STFT | 13 – 15 | **2027-03-21** |
| Week 16 — checkpoint | 16 | **2027-04-02** |
| **DSP 505** — Phase 4, adaptive & optimal filtering | 17 – 21 | **2027-05-30** |
| **DSP 506** — Phase 5, the artifact | 22 – 26 | **2027-07-27** |
| Week 27 — branch onramp | 27 | **2027-08-08** |
| Week 28 — pre-term consolidation | 28 | **2027-08-20** |

Assumed program start: **~2027-08-23**. Slack at 3 days/week: **three days.**

**That is zero slack, and it is stated rather than hidden.** If the pace holds at 3, this fits. If it drops, things get cut, and the cut order is decided now rather than in a panic later:

1. **Week 28 goes first** (pre-term consolidation — nice, not load-bearing).
2. **Then Week 27** (branch onramp — can be done in the first weeks of term instead).
3. **Then Phase 5 compresses** to Weeks 22–23 only: the partitioned convolution engine, without the adaptive stage on real audio.
4. **Phase 4 and everything before it do not get cut.** If the pace falls far enough to threaten Phase 4, the answer is to fix the pace, not the plan.

At 4 study days/week the whole thing closes **2027-05-23 with thirteen weeks of slack**. That is what one extra day per week buys, stated once here so it doesn't need re-litigating.

---

## Your measured throughput

This section exists because the previous version of this plan was paced on a number nobody had checked.

**Source: `LOG.md`, Phase 0 window 2026-07-09 (P1D1) → 2026-08-22 (P4D3), 45 days = 6.43 calendar weeks.**

| Measure | Value |
|---|---|
| Phase 0 log entries | 18 |
| Distinct study dates | 16 |
| Sessions with genuinely new work | 16 — P3D1 and P3D3 were bookkeeping; the deliverable was already satisfied by out-of-sequence PS10 prep |
| **Study days per week, whole period** | **2.5** |
| Study days per week, last three weeks | 3.85 |

**Planned vs. actual.** At the old 5-day assumption, 7.3 calendar weeks since P1D1 predicts 36 study days — Week 0.8 Day 1, Phase 0 essentially closed. Actual: **18 study days, Week 0.4 Day 3 complete.** Exactly half the assumed rate; Phase 0 alone is roughly 3.6 plan-weeks behind.

**The failure mode is gaps between sessions, not the sessions themselves.** The log shows an 11-day gap before P1D4, a 6-day gap before P2D1, and two 4-day gaps. Within a session, output is dense and frequently over-delivers: P2D3 closed a full triaged pset; P4D2 closed PS12's leftovers *and* committed the harness *and* reorganized the repo into `src/`. **The ~2 hrs/day unit is right. The 5-days/week assumption was not.** Do not shrink the daily unit. Add days.

**The trend is upward and that matters.** July ran ~1.5 days/week; August is running 3.85. The planning number is **3**: above the lifetime average, below the August burst, and it survives one bad week without turning the calendar into fiction.

**One caveat, stated because it is a real hole in the evidence:** the W-series stopped. W1D1–W1D4 ran 2026-06-30 to 07-04, Week 1 closed, and no build week has run since. **The 3-days/week figure is measured on theory days only.** Build weeks (Week 3 onward) have zero throughput evidence behind them. Week 3 is therefore also a measurement: log planned vs. actual every day of it and re-check this number at the Week 7 buffer.

---

## What is actually urgent, and it isn't this plan

**Advisor outreach is the critical path. This study plan is not.** That was true under Spring 2027 and the Fall 2027 move does not change it — it only moves the dates.

- **`[CONFIRM]` — deferral or re-application?** This gates everything else in this section. Until it is answered, you do not know whether you have a floor.
- **Corey (UIC).** Admission to a program is not the same thing as a specific advisor's committed thesis supervision. Programs admit; advisors commit separately. UIC remains the most expensive option on your list (~$85–90K). Until Corey has said yes specifically, and said it about **Fall 2027**, you are holding a cost premium against a research fit that is likely but not locked.
- **Faller (CSUF).** The open questions are unchanged: capacity to supervise a thesis student, EGEC 548's actual next offering, and the EGEC 518 catalog-versus-history contradiction. What changed is that a Fall 2027 start gives you **more time to ask properly** and moves the answer later, not earlier.

**If you have two hours this week and either advisor thread is unresolved, spend them there, not on Lec 16.**

---

## The invariant core

Strip out everything branch-specific and this is what remains standing under **every** program, advisor, and plausible thesis topic on your list:

| | Why it's invariant |
|---|---|
| **Phase 0 (DSP 501) — Deterministic theory** | Convolution, Fourier, sampling, z-transform, poles/zeros. Universal. Already in flight. |
| **Phase 1 (DSP 502) — Stochastic DSP** | **The one that matters most.** Random processes, PSD, Wiener filtering, linear prediction. This is *literally the coursework* at every program on your list — UIC ECE 418/530, CSUF EGEC 580, and its equivalent everywhere else. It is the prerequisite under HRTF estimation, source separation, MIR feature extraction, beamforming, and speech enhancement **alike**. There is no audio research path that avoids it, and it is the single largest gap in your current preparation. |
| **Phase 2 (DSP 503) — Filters, multirate, real-time C++** | Biquads, FIR, polyphase resampling, the audio-thread rules. Every branch, every lab, every implementation. |
| **Phase 3 (DSP 504) — The STFT** | The substrate of nearly all of it — spatial, music, and speech. |
| **Phase 4 (DSP 505) — Adaptive & optimal filtering** | **Reclassified in this revision.** Wiener assumes you know the statistics. You never do. LMS, NLMS, RLS, and the Kalman framing are what every real system does instead, and they sit under HRTF individualization, AEC, beamforming, and speech enhancement without distinction. Named as a gap in `candidate-profile.md` with no branch attached. |
| **Phase 5 (DSP 506) — One measured artifact** | `candidate-profile.md`: *"No audio-domain project of any kind."* Nothing in Weeks 1–16 closes this — the harness, biquad, and STFT toolkit are instruments, not an artifact. The new-grad eligibility window expires **~May 2027**, inside this stretch. |

**Everything else is contingent** and gets chosen *after* you know where you're going: HRTF/binaural individualization, MVDR/GSC beamforming, source separation, embedded fixed-point ports, MIR feature pipelines, ANC. Building any of them now is a bet on a branch you haven't picked.

---

## The Week 16 gap — the decision, and why

Week 16 ends **2027-04-02**. A Fall 2027 term starts around **2027-08-23**. That is **20.4 weeks — 4.7 months — of unplanned time**, and it is the single largest structural problem this revision had to solve.

**First, the observation that settles the shape of the answer:**

| Pace | Week 16 ends | Gap to start |
|---|---|---|
| 3 days/wk | 2027-04-02 | **20.4 weeks** |
| 4 days/wk | 2027-02-07 | 28.1 weeks |
| 5 days/wk | 2027-01-06 | 32.7 weeks |

**Going faster makes the gap bigger.** The gap is not a pacing problem and cannot be closed by pacing. It has to be filled with content.

**Rejected — commit to a branch early.** The branch information does not arrive sooner because the target moved; it arrives *later*. Committing at Week 16 means choosing with strictly less information than waiting, and paying 20 weeks of misdirected work if the guess is wrong. **Rejected — build branch-specific artifacts.** Same bet, extra steps.

**Chosen — extend the invariant core, then build one branch-neutral artifact.** This is not a stall, because there is genuinely 20 weeks of invariant material left and the previous version of this plan already knew what it was and mislabeled it. NPTEL-SSP Weeks 8–11 sat cut from DSP 502 and reserved as a branch reward. It is invariant material and it becomes **Phase 4**. On top of it, **Phase 5** builds the one thing the record still lacks — a measured audio artifact — chosen so that it is defensible under either branch and under an industry fallback: partitioned fast convolution (the machinery of HRTF convolution *and* of frequency-domain adaptive filtering) driving an NLMS stage on real audio, with numbers.

**Why the artifact lands before the term and not after:** `candidate-profile.md` flags the new-grad eligibility window as running through roughly **May 2027** and calls it a hard, expiring asset. Phase 5 runs Weeks 22–26, closing 2027-07-27. That is past May, and it is the honest constraint on this plan — if the eligibility window is the priority, Phase 5 moves ahead of Phase 4 and the adaptive material follows the artifact. **That reordering is available and is the one substantive alternative to the sequence below.** The default order keeps Phase 4 first because the artifact's adaptive stage depends on it.

---

## The branch decision

**Week 16 is no longer the branch point.** It is a checkpoint. The decision is a **dated event** — whenever the admissions answer actually lands — governed by one rule:

> **If the branch is known before Week 22 begins (~2027-05-30), Phase 5's artifact takes on branch flavor.** UIC/Corey: the adaptive stage becomes a two-mic AEC or a delay-and-sum front end. CSUF/Faller: the convolution engine runs measured HRIRs and the report addresses ITD/ILD preservation. **If the branch is not known by then, the branch-neutral default runs and nothing waits.**

Nothing in Weeks 17–26 blocks on the answer. That is the point of choosing invariant content for the gap.

| If you land at… | The next block is… | Spine, if already identified |
|---|---|---|
| **UIC / Corey** | Mic arrays and beamforming (delay-and-sum → MVDR → GSC), then source separation. Aligns with ECE 516 and ECE 531. Phase 4 is the prerequisite you'll already hold. | Phase 4 covers the adaptive prerequisite; array-specific material is term-one coursework. |
| **CSUF / Faller** | HRTF and binaural processing, ITD/ILD cues, fast HRTF convolution, individualization. Phase 5's convolution engine is the substrate. | No single course identified. `open-items-tracker.md` §7 tracks this; Phase 5's artifact is the partial answer. |
| **Neither (self-study continues)** | Choose a target industry and build the second artifact against it. Phase 5's engine is the base to extend, not restart. | — |

---

## Run these habits every week

- **Dev journal (`LOG.md`).** Unchanged. `P<wk>D<day>` in Phase 0, `W<wk>D<day>` from Week 3. Keep the bug stories.
- **Log planned vs. actual — made concrete.** This habit was listed before and never ran; one entry in the entire log does it. **The new form: every entry ends with the date, the plan week/day it satisfied, and the number of days since the previous entry.** Three tokens. If the gap number exceeds 3 twice in a row, that is the signal to re-pace, and it will be visible instead of inferred six weeks later.
- **Spaced-repetition deck.** Start each session with a ~5-min review, then add 3–5 cards from the day's friction. This carries more load now: you will not touch the orthogonality principle between Week 6 and Week 17.
- **Review problems — every session (revised from checkpoint-only).** Alongside the cards pass, run `review-problem-prompt.md` for one problem (~10–15 min) from a non-adjacent earlier week, weighted toward whichever week has gone longest untouched or carries a logged error pattern. Tests derivation fluency, which cards don't. Named cost: ~10–15 min/day against a plan paced at 3 study days/week with three days of slack — re-check at the Week 16 throughput re-measure. Phase checkpoints (the ✅ lines closing DSP 501–505, Week 16, Week 28) keep their own larger full-chain/full-deck passes, unchanged by this.
- **Dual-language workflow — from Week 7.** Prototype and validate in **Python/NumPy**, port to **C++**, assert numerical agreement. C++-only makes you slow to explore and gives you nothing to check the C++ against.
- **Measure, don't listen.** If it doesn't have a number, it isn't done.
- **Commit small + test as you go.** GitHub Actions from Week 8.
- **Project work cannot displace derivations or problem sets.** Standing rule, unchanged. What changed is that it no longer has a January deadline attached — deferred project work is redirected to **Phase 5**, which is where it now belongs by design rather than by exile.

---

## Source Registry

Every video source used anywhere in this plan, listed once. Referenced by tag in the weeks below.

| Tag | Course | Access | URL |
|---|---|---|---|
| **RES.6-007** | MIT *Signals and Systems* (Oppenheim) | Free, OCW | https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/video_galleries/video-lectures/ |
| **NPTEL-SSP** | *Statistical Signal Processing*, Prof. Prabin Kumar Bora, IIT Guwahati | Free | https://nptel.ac.in/courses/108103158 |
| **NPTEL-ATS** | *Applied Time-Series Analysis*, Prof. Arun Tangirala, IIT Madras — 12-week course, video permanently archived on archive.org, weekly tests and assignments. Includes prior estimation-theory lectures, so its periodogram treatment is properly random-process-framed, not just a DFT-computation exercise. | Free | https://archive.org/details/IIT_Madras_Applied_Time_Series_Analysis |
| **EPFL DSP2** | *Digital Signal Processing 2: Filtering*, EPFL (Prandoni & Vetterli) — Module 1 (filter theory) and Module 3 (random signals, adaptive filters) both cited in this plan; Module 2 (filter design) also used. | Coursera (video + graded assignments accessible without certificate) | https://www.coursera.org/specializations/digital-signal-processing (individual course pages within the specialization; direct per-course URLs not independently verified) |
| **EPFL DSP3** | *Digital Signal Processing 3: Sampling and Quantization*, EPFL (Prandoni & Vetterli) | Coursera (same access as above) | see above |
| **EPFL DSP4** | *Digital Signal Processing 4: Real-Time DSP*, EPFL (Prandoni & Vetterli) — checked directly and ruled out as Week 11's fix: covers real-time audio on a hardware board, which is embedded microcontroller work, not audio-thread discipline | Coursera (same access as above) | see above |
| **ASPMA** | *Audio Signal Processing for Music Applications*, Serra (UPF) & J.O. Smith (Stanford) | Coursera (same access as above) | https://www.coursera.org/learn/audio-signal-processing |
| **NPTEL-MR** | *Advanced DSP — Multirate and Wavelets*, Prof. V.M. Gadre, IIT Bombay — secondary/optional cross-reference for Week 10, superseded by EE123 as primary source | Free, YouTube/NPTEL | search the NPTEL archive |
| **NPTEL-DR** | *Digital Signal Processing*, Prof. S.C. Dutta Roy, IIT Delhi (40+ lectures) | Free | https://nptel.ac.in/courses/117102060 |
| **sms-tools** | ASPMA's Python package (reference implementation, not a course) | Free | https://github.com/MTG/sms-tools |
| **JOS** | Julius O. Smith, *Spectral Audio Signal Processing* et al. — text, not video | Free, online books | https://ccrma.stanford.edu/~jos |
| **6.341** | MIT *Discrete-Time Signal Processing* (Oppenheim) — **lecture notes only, no video on OCW** | Free, OCW | search "MIT OCW 6.341" |
| **RES.6-008** | MIT *Digital Signal Processing* (Oppenheim, 1987 distance-ed course) — full video, problem sets, and solutions, hosted permanently on OCW | Free, OCW | https://ocw.mit.edu/courses/res-6-008-digital-signal-processing-spring-2011/ |
| **EE123** | UC Berkeley *Digital Signal Processing* (Miki Lustig) — 36 lectures, video hosted on archive.org via UC Berkeley's own webcast archive; weekly self-graded problem sets. **Confirmed to derive: COLA explicitly (Lec 10–11, DSP 504 Wk 13); polyphase decomposition and the noble identities (Lec 16–18, DSP 503 Wk 10). Not confirmed to cover periodogram/Welch (Lec 8–9) — it's a deterministic-signals course, and that argument needs the random-process framework EE123 doesn't build; use NPTEL-ATS instead for that.** | Free, video on archive.org (search "EE123 Spring 2015 Berkeley Lustig"); current problem sets at the live course site, may require checking for public access | http://www.infocobuild.com/education/audio-video-courses/electronics/ee123-spring2015-berkeley.html |
| **Bela** | *C++ Real-Time Audio Programming with Bela* (Andrew McPherson, adapted from Queen Mary University of London's Music & Audio Programming MSc course) — 18+ lectures, confirmed live, consistent uploads since 2020. **Covers audio-thread rules and timing/block-size generally (DSP 503 Wk 11 Days 1, 4); does NOT cover denormals or lock-free multithreading specifically — its "Circular Buffers" lecture is framed for delay-line DSP, not inter-thread communication. No formally graded assignments, just downloadable hands-on examples.** | Free, YouTube | search "C++ Real-Time Audio Programming with Bela" |
| **Audio-Number-Formats** | Independent YouTube series on digital audio fundamentals (sample rate, bit depth, dithering, floating-point formats) — three connected playlists, independently praised for clarity by a producer-focused newsletter, not just inferred from the title. Episode 10 covers subnormal/denormal numbers specifically (DSP 503 Wk 11 Day 2). **No institutional backing, no assignments — a well-vetted individual resource, not a course.** | Free, YouTube | search "Audio Number Formats denormal subnormal" |
| **Frasch-SPSC** | Charles Frasch, *"Single Producer Single Consumer Lock-free FIFO From the Ground Up"* — CppCon 2023 (DSP 503 Wk 11 Day 3). **A single talk, not a series, but built as a ground-up derivation rather than a survey — stronger single reference than a generic search result. No assignment.** | Free, YouTube | search "Charles Frasch SPSC Lock-free FIFO CppCon 2023" |
| **moodycamel** | `readerwriterqueue` — the de facto standard open-source SPSC queue implementation. **Not a video or course; a verification tool.** Used as a reference to diff against for DSP 503 Wk 11 Day 3, the same role sms-tools plays for Week 14. | Free, open source | github.com/cameron314/readerwriterqueue |
| **ThreadSanitizer** | Compiler-integrated data-race detector (`-fsanitize=thread`, GCC/Clang). **Not a video or course; the closest thing Week 11 has to an automated grader.** Run your Day 3 stress test under it — clean or not-clean is a binary, objective result. | Free, built into GCC/Clang | — |
| **Haykin-AFT** | Simon Haykin, *Adaptive Filter Theory* — the standard reference for Phase 4 (DSP 505). Text, not video; used alongside NPTEL-SSP Wk 8–11 for the derivations LMS/RLS chapters state without proof. | Text | — |
| **RADSan** | Real-time-safety sanitizer — flags allocations, syscalls, and locks specifically on a marked real-time path. Optional depth for DSP 503 Wk 11 Day 3; **promoted to required for DSP 506 Wk 23 Day 2**, where the whole point is a clean RT path. | Free, open source | search "RADSan real-time sanitizer" |

**Note on Phase 4's spine.** NPTEL-SSP Weeks 8–11 are the same course already used for Phase 1, continued rather than newly sourced — the lecturer, notation, and assignment format are ones you will already know by Week 17. That continuity is the reason to prefer it over Haykin-as-primary, which is a better reference book and a worse course.

**Note on ASPMA:** taught by **Xavier Serra**, a leading authority on this exact material. No longer relevant as an outreach angle now that UPF isn't on your shortlist, but the course quality stands on its own.

**Note on Coursera access:** video and graded/programming assignments are both accessible on audit; only the certificate is gated. Treat EPFL DSP2–DSP4 and ASPMA as fully usable course spines, not partial ones.

---

## Phase 0 (DSP 501) — Theory Foundation — closes 2026-10-20

*Resource: MIT RES.6-007 (ocw.mit.edu). **Every lecture ships a problem set with full solutions** — those are your daily deliverables. Textbook pairing: Oppenheim & Willsky follows the course chapter-for-chapter. **Rule: one lecture + its problem set per study day** — never two lectures and two psets in one day (the P1D1 log proved you need this pace). The skim lectures (13–15, 25–26) ship no pset and may share a day; code days and consolidation days stay whole. **No day ends on "watched the video"** — each ends on a self-checked pset, a by-hand derivation, a batch of new flashcards, or committed code.*

**Priority note:** nothing in Phase 0 is safely skippable, and two lectures previously marked "skim" were promoted, because both turned out to be load-bearing for the invariant core rather than for the plugin track that got cut in an earlier revision:

- **DT modulation (Lec 15, Wk 0.4 D3)** is **core, with its pset.** The multiply-in-time ↔ shift-in-frequency pair is the root of the **STFT** (Phase 3). *(Closed at P4D3, 2026-08-22.)*
- **Decimation (Lec 19, Wk 0.5 D2)** is core: multirate gets its own week (Week 10), and every real audio pipeline resamples (16 / 44.1 / 48 kHz).
- **Feedback & stability (Lec 25–26, Wk 0.7 D3)** stays a summary, but it is load-bearing for **anything recursive** — IIR filters, adaptive-filter convergence bounds (Phase 4 leans directly on this), and any feedback loop you later build.

If you must cut, cut Lec 13–14 (CT AM) and nothing else.

### ✅ Weeks 0.1 – 0.3 and Week 0.4 Days 1–3 — closed

Logged P1D1 through P4D3, 2026-07-09 → 2026-08-22. Lec 1–12 and Lec 15; PS1–PS12 and PS15 closed; `convolve()`, the O(N²) DFT, the WAV reader, and the measurement harness built, committed, and reading flat 0.00 dB pass-through across all 257 bins. Day-level detail lives in `LOG.md`; it is not restated here.

### Week 0.4 (resume) — Sampling begins (Lec 16–17) — ends 2026-09-04
- **Day 4:** **[LEC]** **[PSET]** Lec 16 (sampling theorem, Nyquist). **Deliverable:** state and sketch-prove the sampling theorem in your own words; PS16 checked. *(P15.1 from P4D3 is the ready-made sketch-proof — the replica picture plus ω_s > 2ω_M is the theorem, and it was derived there rather than assumed.)* The theory under `aliasing.md`.
- **Day 5:** **[LEC]** **[PSET]** Lec 17 (interpolation / reconstruction). **Deliverable:** PS17 checked; a one-line statement of how ideal reconstruction interpolates between samples.
- **Done when:** you can state and sketch-prove the sampling theorem from a blank page.

### Week 0.5 — Sampling & decimation; aliasing code; Laplace begins (Lec 18–20) — ends 2026-09-15
- **Day 1:** **[LEC]** **[PSET]** Lec 18 (DT processing of CT signals). **Deliverable:** PS18 checked.
- **Day 2:** **[LEC]** **[PSET]** Lec 19 (decimation / downsampling) — **core.** **Deliverable:** PS19 checked; write the "filter *before* you decimate, and why" note. **Forward-link:** Week 10 builds polyphase decimation/interpolation and rate conversion.
- **Day 3:** **[PSET]** Problem-set / consolidation day — the sampling+modulation block is the lecture-dense stretch. **Deliverable:** any slipped PS16–PS19 worked, every miss re-worked to correct.
- **Day 4:** Code. **Deliverable:** aliasing fold-back confirmed numerically (tones above Nyquist measured against `f_s − f`); `aliasing.md` updated to cite the sampling theorem, not just the spectrogram. LOG.
- **Day 5:** **[LEC]** **[PSET]** Lec 20 (Laplace; s-plane, poles/zeros, ROC). **Deliverable:** Laplace transform + ROC + pole/zero plot of a first-order system by hand; PS20 checked.
- **Done when:** your measured aliased frequencies match the sampling-theorem prediction, and you can place a first-order system's poles in the s-plane.

### Week 0.6 — Second-order systems, z-transform, the one-pole (Lec 21–22) — the payoff week — ends 2026-09-27
- **Day 1:** **[LEC]** **[PSET]** Lec 21 (CT second-order systems; resonance, Q). **Deliverable:** pole-pair diagrams for under/critical/over-damped, relating ζ and ω_n to pole location; PS21 checked.
- **Day 2:** **[LEC]** **[PSET]** Lec 22 (z-transform). **Deliverable:** z-transform + ROC + pole/zero of a first-order difference equation by hand; PS22 checked; add the deferred card — *"How does the DTFT relate to the z-transform?"* → the unit-circle-slice answer — plus *"What does moving off the unit circle in the z-plane buy you over the DTFT?"* *(Both were deliberately deferred at P3D4 because writing them before Lec 22 would have been writing them blind.)*
- **Day 3:** **[PSET]** Problem-set day — the dedicated pset-catch for the Laplace/z block (Lec 20–22), the derivation-dense stretch. **Deliverable:** remaining PS20–PS22 problems worked, every miss re-worked to correct.
- **Day 4:** Derive + build. **Deliverable:** by hand, `y[n] = (1−a)x[n] + a·y[n−1]` → `H(z) = (1−a)/(1 − a·z⁻¹)`, pole at `z = a`; one-pole implemented in C++. **Harness migration lands here:** the current `double (*system)(double)` function-pointer interface cannot hold state. Move to an object with `process(double)` + `reset()`, where the system owns its state and `measure` calls `reset()` before each run. This was flagged as a known limitation at P4D1 and this is the day it becomes blocking.
- **Day 5:** Verify. **Deliverable:** one-pole impulse response through the migrated harness; the pole predicts the measured −3 dB point and rolloff. Commit + LOG.
- **Done when:** your paper pole location matches the measured magnitude response, and the harness handles a stateful system correctly.

### Week 0.7 — CT→DT mapping, Butterworth, feedback + consolidate (Lec 23–26) — ends 2026-10-09
- **Day 1:** **[LEC]** **[PSET]** Lec 23 (mapping CT→DT filters = the bilinear transform). **Deliverable:** re-derive the bilinear substitution on paper, showing the frequency warping; PS23 checked.
- **Day 2:** **[LEC]** **[PSET]** Lec 24 (Butterworth). **Deliverable:** derive the maximally-flat magnitude-squared response and the pole positions on the s-plane circle; PS24 checked.
- **Day 3:** **[LEC]** Lec 25–26 (feedback) — *skim to a summary, no pset, keep the concept.* **Deliverable:** one paragraph on feedback and stability (poles leaving the unit circle). **Load-bearing for anything recursive** — IIR stability, and directly for Phase 4's adaptive-filter convergence bounds. Skim the video if tight; do not cut the idea.
- **Day 4:** **[PSET]** Consolidation. **Deliverable:** every Phase-0 pset closed; a from-memory bilinear-transform derivation, no notes.
- **Day 5:** Full deck review + gap-fill. **Deliverable:** a complete review pass; every link in the chain — signal → convolution → Fourier → sampling → Laplace/z → poles/zeros → transfer function → filter — has at least one card you answer cold, plus derivation-prompt cards for the one-pole and the bilinear transform. LOG.
- **Done when:** you can walk the full chain unaided and re-derive the bilinear transform from scratch.

### Week 0.8 — 🔧 Phase 0 buffer / consolidation — ends 2026-10-20
*The only slack in Phase 0. Its primary job is to absorb overrun from the two hardest stretches — the sampling/modulation weeks (0.4–0.5, overloaded by lecture count) and the Laplace/z weeks (0.5–0.6, overloaded by derivation depth) — which have no catch-up elsewhere. If a block slipped, the slid psets/derivations/code land on the matching day below. If you're fully on track, the default is a **spaced second pass**: re-derive the load-bearing results cold, a day per block. Spacing is exactly what depth topics respond to, so this week is productive even when nothing slipped. It can compress to 2–3 days if truly clean — and given the measured pace, expect to need it rather than compress it.*
- **Day 1:** **[PSET]** Fourier block (Weeks 0.2–0.3). **Deliverable:** any slipped PS7–PS12 closed; else re-derive rect → sinc and the DTFT of a rectangular window cold, no notes.
- **Day 2:** **[PSET]** Sampling/modulation block (Weeks 0.4–0.5). **Deliverable:** any slipped PS16–PS19 or the Week 0.5 aliasing code closed; else re-state and sketch-prove the sampling theorem cold and re-confirm the fold-back (`f_s − f`) against `aliasing.md`.
- **Day 3:** **[PSET]** Laplace/z block (Weeks 0.5–0.6). **Deliverable:** any slipped PS20–PS22 or the one-pole code closed; else re-derive `H(z) = (1−a)/(1 − a·z⁻¹)` with its pole at `z = a` cold, and re-run the one-pole through the harness.
- **Day 4:** **[PSET]** CT→DT mapping block (Week 0.7). **Deliverable:** any slipped PS23–PS24 closed; else re-derive the bilinear substitution from scratch (frequency warping shown) and the Butterworth pole placement.
- **Day 5:** Whole-chain gate. **Deliverable:** a single unaided pass down the full chain; every link has a card you answer cold; nothing from 0.1–0.7 left open. LOG.
- **Done when:** no Phase-0 pset, derivation, or code item is still open, and you can walk the chain and re-derive both the one-pole and the bilinear transform from a blank page.

**✅ DSP 501 Checkpoint (2026-10-20):** You can derive a filter's transfer function from its difference equation, place its poles, and predict its magnitude response — then confirm it with your own harness. The z-transform is no longer magic.

---
## Phase 1 (DSP 502) — Stochastic Signal Processing (Weeks 3–7) — closes 2026-12-18

**The largest gap in your preparation, and the highest-leverage weeks in this document.** Oppenheim & Willsky is entirely deterministic — known signals, known systems. But real audio signals are *random*: speech, noise, room reverberation, and the interference every algorithm is built to fight. You cannot derive the Wiener filter, NLMS, MVDR beamforming, or any modern estimator without autocorrelation, power spectral density, and the orthogonality principle.

This is also the material your graduate coursework will assume you have. Doing it now means arriving to UIC ECE 418 or CSUF EGEC 580 having already derived the results rather than meeting them cold.

*Resources:* **Hayes, _Statistical Digital Signal Processing and Modeling_** (primary — Ch. 2–3, 4, 6–7). Haykin, _Adaptive Filter Theory_ Ch. 1–2 (alternate framing). Stanford EE264 / Georgia Tech ECE 6255 notes for worked problems. **Video spine: NPTEL-SSP** (Prof. Prabin Kumar Bora, IIT Guwahati — free, video + graded assignments) **+ EPFL DSP2 Module 3** (Coursera, random-signal analysis and adaptive filters) for Weeks 3–4.

### What got cut from NPTEL-SSP, and why

NPTEL-SSP is a 12-week course. You are taking **roughly a third of it**, deliberately:

- **Cut — NPTEL Weeks 2–4** (MVUE, Cramér–Rao bound, sufficient statistics, ML/MAP estimation). Detection-and-estimation theory. Genuinely valuable, on no path to this course's Done-when, and three weeks long.
- **Deferred, not cut — NPTEL Weeks 8–11** (steepest descent, LMS, RLS, Kalman). This is *adaptive filtering*. The previous version of this plan called it branch-specific and reserved it as a UIC-only reward; **that classification was wrong and this revision corrects it.** It is invariant core, and it is now **Phase 4 (DSP 505), Weeks 17–21**. It stays out of Phase 1 for one reason only: sequencing. You derive Wiener from known statistics first, then meet LMS as what you do when you don't know them. Pulling it forward inverts that and costs you the contrast. Don't.
- **Keep — NPTEL Weeks 1, 5, 6, 7.** Random processes; LMMSE, the orthogonality principle, Wiener–Hopf; FIR Wiener, linear prediction, Levinson–Durbin, LPC of speech; causal/non-causal IIR Wiener.

### ⚠️ Ordering — resolved, do not re-litigate mid-week

NPTEL derives the orthogonality principle **first** (its Wk 5) and treats linear prediction as an application (its Wk 6). This plan does the reverse: LPC first, then Wiener as the generalization.

**Decision: keep this plan's order, but pull NPTEL Wk 5 forward to Week 5 Day 2.** The orthogonality principle is the derivation engine — the normal equations fall straight out of it — so it arrives exactly when Day 2 needs it, and NPTEL's Wk 6 lectures stop forward-referencing a result you haven't seen yet.

**Two consequences, both intentional:**
1. **Week 6 Day 2 is no longer first exposure.** It becomes a *cold re-derivation after a one-week gap* — which is strictly better. Spacing is what depth results respond to, and the orthogonality principle is the single most exam-relevant result in the course.
2. **Week 5 Day 2 carries two lectures' worth of load.** It is the heaviest single day in DSP 502. If a day is going to slip, this is the one — Week 7's buffer exists for it.

### Week 3 — Random processes, stationarity, autocorrelation — ends 2026-11-01
*Video: EPFL DSP2 Module 3 (random signals) + NPTEL-SSP Wk 1*

- **Day 1:** **[LEC]** EPFL DSP2 M3 opening videos on random signals; NPTEL-SSP Wk 1 (random processes). Random variables → random *processes*. Ensemble average vs. time average. **Deliverable:** written statement, in your own words, of what a random process *is* and why one realization can't characterize it.
- **Day 2:** **[LEC]** NPTEL-SSP Wk 1 (stationarity, ergodicity). Wide-sense stationarity; ergodicity. **Deliverable:** show by hand that a specific process is WSS; state precisely what ergodicity buys you — it is what licenses estimating from *one* recording, which is the entire practical foundation of the field.
- **Day 3:** Autocorrelation `r_x[k]` — definition and properties (symmetry, `r_x[0]` = power, positive semi-definiteness). **Deliverable:** derive the autocorrelation of white noise, and of a sinusoid in noise, by hand.
- **Day 4:** The autocorrelation *matrix* **R**. Toeplitz structure; why it's PSD. **Deliverable:** build **R** by hand for a 3-tap case; verify positive semi-definiteness numerically in Python.
- **Day 5:** **[PSET]** Code. **Deliverable:** Python — estimate autocorrelation from a finite record; show the estimator's variance blowing up at large lags. Submit the EPFL DSP2 M3 graded assignment. Commit + LOG.
- **Done when:** you can explain why `r_x[k]`, not the signal itself, is the object every estimator actually optimizes against.

### Week 4 — Power spectral density; filtering random processes — ends 2026-11-13
*Video: EPFL DSP2 Module 3 (remainder) + NPTEL-SSP Wk 1*

- **Day 1:** PSD; the **Wiener–Khinchin** theorem (PSD = FT of autocorrelation). **Deliverable:** derive it. Derivation-prompt card. *(This is the stochastic mirror of Phase 0's conv↔mult duality — same structure, new object.)*
- **Day 2:** **Filtering a random process:** `S_y(ω) = |H(e^jω)|² · S_x(ω)`. **Deliverable:** derive from scratch. This is the most-used identity in everything downstream.
- **Day 3:** White noise through a filter; spectral factorization; the innovations representation. **Deliverable:** by hand, find the filter that shapes white noise into a given PSD.
- **Day 4:** **[LEC]** *Video: NPTEL-ATS Lecture 49 ("Periodogram as PSD Estimator")* — found on a second search pass after general search missed it, since the course is indexed under time-series analysis, not DSP; the course's own prior estimation-theory lectures (Lec 36A) confirm it treats the periodogram as a statistical estimator, not just a DFT computation. The periodogram and its **inconsistency**; Welch's method and why averaging fixes it. **Deliverable:** written explanation of why a longer FFT does *not* reduce periodogram variance but averaging does; use the lecture as the reference derivation, checked against Hayes Ch. 8. *(This is a favorite interview and qualifying-exam question precisely because it's counterintuitive.)*
- **Day 5:** Code. **Deliverable:** Python — Welch PSD estimator from scratch, validated against `scipy.signal.welch`. Commit + LOG.
- **Done when:** you can predict the output PSD of any LTI filter driven by any input PSD, and explain why a raw periodogram is a bad estimator.

### Week 5 — Linear prediction — ends 2026-11-24
*Video: NPTEL-SSP Wk 6 (linear prediction, Levinson–Durbin, LPC of speech) + **NPTEL-SSP Wk 5 pulled forward to Day 2** (LMMSE, orthogonality principle, Wiener–Hopf). Optional supplement: MIT 6.341 Lec 12–13 lecture notes (notes only, no video).*

- **Day 1:** The forward linear-prediction problem. **Deliverable:** set up the prediction-error minimization by hand.
- **Day 2:** **[LEC]** ⚑ **Heaviest day in the course.** Watch **NPTEL-SSP Wk 5** (LMMSE, orthogonality principle, Wiener–Hopf) *first* — it is the derivation engine, and the normal equations fall out of it. Then the **normal equations** (`R·a = r`). **Deliverable:** full derivation of the normal equations, no notes, showing explicitly which step is the orthogonality condition. Derivation-prompt card. *If any day in DSP 502 slips into the Week 7 buffer, expect it to be this one — that's planned for, not failure.*
- **Day 3:** **Levinson–Durbin** recursion — exploiting Toeplitz structure to get O(p²). **Deliverable:** work the recursion by hand for p = 3; state what the reflection coefficients mean.
- **Day 4:** LPC and speech: the source-filter model, and why a vocal tract is an all-pole filter. **Deliverable:** write the connection from the all-pole model back to Phase 0's pole/zero work. **This is where your z-plane intuition first cashes out on a real signal.**
- **Day 5:** **[PSET]** Code. **Deliverable:** Python — LPC analysis of a real speech frame; plot the LPC spectral envelope over the FFT magnitude and show it tracking the formants. Submit the NPTEL assignment for the covered weeks. Commit + LOG.
- **Done when:** you can derive the normal equations cold and explain what LPC is *modeling*.

### Week 6 — The Wiener filter — the payoff week — ends 2026-12-06
*Video: NPTEL-SSP Wk 7 (causal/non-causal IIR Wiener — stretch). **NPTEL Wk 5 was already watched in Week 5 Day 2** — this week works from your own notes, not a re-watch.*

- **Day 1:** The MMSE estimation problem. The cost function; why mean-*square*. **Deliverable:** state the problem formally; identify precisely what is known and what is estimated.
- **Day 2:** The **orthogonality principle** — **re-derive it cold, one week after first seeing it, no notes and no re-watch.** This is a spaced second pass by design, not first exposure. **Deliverable:** full derivation from a blank page, plus a written geometric interpretation (the error is orthogonal to the data subspace). If you can't get there unaided, *that* is the signal to go back to the NPTEL lecture — and it's better to find out here than in an exam. **This is the conceptual keystone of estimation theory.** Derivation-prompt card, no exceptions — it is the single result most likely to appear in a graduate exam, a qualifying exam, and an interview.
- **Day 3:** The **FIR Wiener filter**: `w = R⁻¹·p`. **Deliverable:** derive it from the orthogonality principle; compute the resulting MMSE. Note its structural identity with the normal equations — LPC *is* a Wiener filter predicting `x[n]` from its own past.
- **Day 4:** The Wiener filter for **noise reduction**: derive the frequency-domain gain `H(ω) = S_s(ω) / (S_s(ω) + S_n(ω))`. **Deliverable:** this derivation, by hand. Note what it implies: every practical enhancement algorithm ever built is an attempt to *estimate* those two PSDs online, because you never actually know them.
- **Day 5:** **[PSET]** Code. **Deliverable:** Python — FIR Wiener filter denoising a synthetic signal where you *do* know both PSDs (the oracle case); measure the SNR improvement. Submit the NPTEL assignment. Commit + LOG.
- **Done when:** you can derive `w = R⁻¹p` from the orthogonality principle on a blank page, and name exactly which quantity every practical algorithm is forced to estimate rather than know. **Forward-link:** that naming is the whole premise of Phase 4 — LMS is the answer to "you don't know `R` or `p`, now what."

### Week 7 — 🔧 Phase 1 buffer + numerical workflow — ends 2026-12-18
- **Days 1–3:** Absorb overrun. Weeks 5–6 (normal equations, orthogonality) are the derivation-dense stretch and the likely slip — Week 5 Day 2 in particular. If clean: spaced second pass — re-derive Wiener–Khinchin, the normal equations, and `w = R⁻¹p` cold, one per day.
- **Day 4:** **Stand up the dual-language workflow.** **Deliverable:** repo scaffold with `python/` and `cpp/` trees, a shared test-vector format, and a harness that runs an algorithm in both and asserts numerical agreement to a stated tolerance. Prove it on the one-pole from Week 0.6.
- **Day 5:** Deck gap-fill across Phase 1. LOG.
- **Done when:** nothing from Weeks 3–6 is open, and you have a working Python↔C++ agreement harness you'll use for every algorithm from here on.

**✅ DSP 502 Checkpoint (2026-12-18):** You can derive the Wiener filter from the orthogonality principle, predict any LTI filter's output PSD, and explain why every practical algorithm is an approximation to a filter nobody can actually build. **You are now prepared for graduate DSP coursework anywhere on your list.**

---

## Phase 2 (DSP 503) — Filters, multirate, and real-time C++ (Weeks 8–12) — closes 2027-02-14

*Resources:* RBJ Audio EQ Cookbook; Proakis & Manolakis (FIR design, multirate); Crochiere & Rabiner, _Multirate Digital Signal Processing_; Ross Bencina, "Real-time audio programming 101"; Timur Doumler's real-time C++ talks. **Video spine: EPFL DSP2 Modules 1–2** (filter theory and design, Coursera) **+ EPFL DSP3** (sampling/multirate, Coursera) **+ EE123** (UC Berkeley, Lustig — Week 10's primary multirate source) **+ NPTEL-DR** (free, deep bench). **Week 11 has no full course** — Bela covers two of its five days; see that week for detail.

### Week 8 — Biquads — ends 2026-12-29
*Video: EPFL DSP2 Module 1 (13 videos — how digital filters work in time and frequency) + NPTEL-DR Lec 28–30 (filter structures, IIR realizations, all-pass)*

- **Day 1:** RBJ cookbook; Direct Form I vs. II vs. transposed DF-II, and why DF-II behaves worse numerically. **Deliverable:** written comparison. With the bilinear transform already derived in Phase 0, this is coefficient bookkeeping, not new theory.
- **Day 2:** Implement a `Biquad` class (DF-I) with LPF coefficients. **Deliverable:** compiles, runs, committed.
- **Day 3:** Add HPF, peaking, shelf. **Deliverable:** all four types; trace Q behavior back to RES.6-007 Lec 21's pole pairs.
- **Day 4:** Measure all four through the Phase 0 harness. **Deliverable:** measured |H| matches designed |H| for each type.
- **Day 5:** **[PSET]** Unit tests (DC gain, Nyquist gain, coefficient sanity); GitHub Actions running them on push. Submit the DSP2 Module 1 graded assignment. **Deliverable:** green CI. Commit + LOG.
- **Done when:** measured response matches theory for all four types, and CI is green.

### Week 9 — FIR design — ends 2027-01-10
*Video: EPFL DSP2 Module 2 (13 videos — designing filters via the z-transform and numerical tools) + NPTEL-DR Lec 38–40, 42 (FIR by windowing, by frequency sampling)*

- **Day 1:** Linear phase — the four types, the symmetry condition, group delay. **Deliverable:** derive why symmetric taps ⇒ linear phase. **Phase matters** for spatial audio (ITD cues), for array processing, and for anything binaural — in a way plugin EQ let you ignore.
- **Day 2:** Window-method design; the mainlobe/sidelobe tradeoff. **Deliverable:** design an LPF by windowing; measure it.
- **Day 3:** Optimal design — Parks–McClellan / equiripple; the alternation theorem conceptually. **Deliverable:** design the same LPF with `remez`; compare stopband attenuation against the window method, with numbers.
- **Day 4:** **[LEC]** *Video: RES.6-008 Lecture 10 ("Circular Convolution")* — overlap-add and overlap-save both derive from the relationship between linear and circular convolution via zero-padding, which this lecture builds from scratch, with its own problem set and solutions. **Overlap-add and overlap-save convolution.** **Deliverable:** derive both, using the lecture as the reference derivation; implement overlap-add in Python. *(Direct forward-link: this is the machinery of Week 13's STFT, of Week 20's frequency-domain adaptive filter, and of Week 22's partitioned convolution engine — the artifact's core. Overlap-save is load-bearing three separate times after this week.)*
- **Day 5:** **[PSET]** Code. Submit the DSP2 Module 2 graded assignment. **Deliverable:** C++ FIR + overlap-add, agreeing with the Python reference via the Week 7 harness. Commit + LOG.
- **Done when:** you can say when FIR beats IIR and why, and your overlap-add convolution matches direct convolution to machine precision.

### Week 10 — Multirate — ends 2027-01-22
*Video: EE123 Lec 16–18 ("Resampling" → "Lab III and Polyphase Filters" → "Filter Banks") — confirmed to derive both polyphase decomposition and the noble identities directly (the interchange-of-operations diagrams showing downsample-then-filter ≡ filter-then-downsample), from the same durable archive.org-hosted source already used for Week 13. EPFL DSP3 (sampling, interpolation, A/D–D/A conversion) covers Day 1's setup. NPTEL-MR is now optional/secondary — useful for extra practice, not required.*

- **Day 1:** Decimation and interpolation — the identities and the required anti-alias / anti-image filters. **Deliverable:** derive the spectral effect of ↓M and ↑L by hand.
- **Day 2:** **Polyphase decomposition.** **Deliverable:** derive it; show why it's an M× saving (you filter only the samples you keep).
- **Day 3:** The **noble identities**; cascaded rate conversion by L/M. **Deliverable:** derive; sketch an efficient 48 ↔ 44.1 kHz converter (the hard, ugly, real-world ratio).
- **Day 4:** Code. **Deliverable:** polyphase resampler in Python; measure residual aliasing and imaging.
- **Day 5:** **[PSET]** Code. Submit the DSP3 graded assignment. **Deliverable:** port to C++; agree with Python via the harness. Commit + LOG.
- **Done when:** your resampler is measurably clean, and you can derive polyphase's saving from first principles.

### Week 11 — Real-time audio constraints — ends 2027-02-02

**No single course covers this week, and this is the final state — checked repeatedly, from every reasonable angle, and confirmed empty each time.** EPFL DSP4 covers real-time audio on a hardware board, but that's embedded microcontroller work, not audio-thread discipline. Bela's *C++ Real-Time Audio Programming* (Andrew McPherson, adapted from Queen Mary University of London's MSc course, confirmed live) covers Days 1 and 4 well — audio-thread rules and timing/block-size generally — but does not reach denormals or lock-free multithreading specifically. Days 2 and 3 have named individual video references (a well-vetted independent series for denormals, a single ground-up CppCon talk for lock-free SPSC), and — more importantly — objective, falsifiable checks in place of a graded assignment: a benchmark that either shows the denormal fix worked or didn't, and ThreadSanitizer, which reports a ring buffer clean or not-clean with no room for self-deception. No course exists for this week, but that's not the same as no verification. Treat that as a feature, not a gap: this is exactly the material that separates people who've shipped audio from people who've only taken courses.

- **Day 1:** **[LEC]** *Video: Bela Lecture 1 ("Real Time")* — general concepts, cross-check against Bencina's article for the canonical rule list. Bencina's article; the audio-thread rules. **Deliverable:** notes — the list of what you may *never* do on the audio thread, and why the criterion is *unbounded*, not *slow*.
- **Day 2:** **[LEC]** *Video: Audio-Number-Formats Episode 10 ("Subnormal/Denormal Numbers")* — no institutional backing or assignment, but a well-vetted, focused resource. Denormals; flush-to-zero; where they bite (IIR tails, decaying states, adaptive coefficients). **Deliverable, falsifiable via benchmark:** write a decaying IIR, let its state run into denormal range, benchmark it (wall-clock or cycles), apply flush-to-zero, benchmark again. **The check:** if the fixed version isn't measurably faster, either the denormal case wasn't actually triggered or the fix didn't take — the stopwatch is the answer key, no professor required.
- **Day 3:** **[LEC]** *Video: Charles Frasch, "Single Producer Single Consumer Lock-free FIFO From the Ground Up" (CppCon 2023)* — a single talk, but a ground-up derivation rather than a survey; use alongside Doumler's talks for the memory-ordering side. Lock-free communication — atomics, memory ordering, SPSC ring buffers. **Deliverable, falsifiable via ThreadSanitizer + reference diff:** implement an SPSC ring buffer independently, then (1) diff its structure and behavior against moodycamel's `readerwriterqueue` — the de facto standard open-source implementation, used here the same way sms-tools is used in Week 14: a reference to compare against, not to start from; (2) compile with `-fsanitize=thread` and run your threaded stress test under it. **The check:** ThreadSanitizer reports clean or it doesn't — that's an automated, binary pass/fail no self-set deliverable normally gets. State precisely why a mutex is disqualified. *(Optional, for depth: RADSan, a newer sanitizer built specifically to catch real-time-safety violations — allocations, syscalls, locks — on the audio thread.)*
- **Day 4:** **[LEC]** *Video: Bela Lecture 9 ("Timing") and Lecture 17 ("Block-based Processing")* — general treatment of latency and block-size tradeoffs, not audio-plugin-specific but directly transferable. Block processing; latency vs. block size; the algorithmic-delay budget. **Deliverable:** written latency analysis of a full-duplex audio pipeline.
- **Day 5:** **Deliverable:** a one-page real-time-audio cheat sheet, written cold. Commit + LOG.
- **Done when:** you can explain the audio-thread rules, denormals, and lock-free SPSC from memory; your denormal fix is confirmed faster by benchmark, not just observed; and your ring buffer passes ThreadSanitizer clean, not just "seems to work" under a stress test.

### Week 12 — 🔧 Buffer / consolidation — ends 2027-02-14
*A plain buffer. This week lands 2027-02-02 → 2027-02-14; under the Fall 2027 timeline no registration window or admissions deadline sits inside it, so the application-season double-booking that used to define this week is gone entirely. Straightforward study-overrun absorption, same pattern as Weeks 0.8 and 7.*
- **Days 1–3:** Absorb study overrun from Weeks 8–11. Week 11 is the likely source — it is the week with no course and the highest chance of a day going sideways on a data race.
- **Day 4:** Harden the C++ DSP core — biquad, FIR, overlap-add, polyphase, ring buffer — into a clean, tested, documented unit.
- **Day 5:** README for the DSP core (theory → implementation → measured verification), written cold. LOG.
- **Done when:** the DSP core is tested, CI-green, and pushed.

**✅ DSP 503 Checkpoint (2027-02-14):** A tested C++ DSP core (filters, overlap-add, multirate, lock-free IO), a Python reference for all of it, and the real-time rules cold.

---

## Phase 3 (DSP 504) — The STFT (Weeks 13–15) — closes 2027-03-21

The last invariant block. The STFT is the shared substrate of nearly every audio research direction on your list — spatial (binaural cues per band), music (chroma, onsets, MIR features), and speech (enhancement, separation). Whatever branch you take, you will build on this.

*Resources:* Smith, _Spectral Audio Signal Processing_ (JOS, free online — Ch. on STFT and COLA). Allen & Rabiner (1977) for the original framing. **Video spine: Coursera ASPMA** (Xavier Serra, UPF, & Julius O. Smith, Stanford).

### What you take from ASPMA, and what you don't

ASPMA is a 10-week course. You take **Weeks 1–4 and 9**:

- **Skim — ASPMA Wk 1–3** (intro, DFT, Fourier properties). Largely redundant with Phase 0; watch at speed to pick up the sms-tools workflow and Serra's framing, and do the programming assignments — they build the Python muscle memory you need in Wk 4. *Verify the exact week topics against the live syllabus on first contact before planning around them.*
- **Core — ASPMA Wk 4** (STFT equation, analysis window, FFT size and hop size, the time-frequency compromise, inverse STFT — 6 videos, 1 quiz, 1 programming assignment). This is the whole spine of Weeks 13–14.
- **Cut — ASPMA Wk 5–8** (sinusoidal model, harmonic model, sinusoidal-plus-residual modeling, sound transformations). Unambiguously MIR/music-branch material, and neither live branch (UIC or CSUF) nor the industry-fallback branch needs it. Full cut, no forward-link.
- **Core — ASPMA Wk 9** (extraction of audio features; describing sounds and collections). Your Week 15 Day 3.

### Week 13 — STFT theory — ends 2027-02-26
*Video: ASPMA Wk 4 (6 videos)*

- **Day 1:** The STFT as a filter bank vs. as a sequence of windowed transforms. **Deliverable:** state both views and reconcile them. *(This is the direct payoff of the Lec 15 promotion — each bin is a modulated, lowpassed channel.)*
- **Day 2:** Windows — Hann, Hamming, Blackman; mainlobe width vs. sidelobe level; spectral leakage. **Deliverable:** measure each window's leakage; pick one with a stated reason.
- **Day 3:** **[LEC]** *Video: EE123 Lecture 10 ("Time-Dependent Fourier Transform") and Lecture 11 ("Time-Frequency")* — these derive the reconstruction condition directly (the 50%-overlap requirement for Hann/Bartlett windows), which is COLA in practice; cross-check the derivation against JOS for the general condition. The **COLA** (constant overlap-add) condition. **Deliverable:** derive it; show why Hann at 50% overlap reconstructs perfectly.
- **Day 4:** Time-frequency resolution — the uncertainty tradeoff; hop size vs. window length. **Deliverable:** written analysis of why you cannot have both, with a worked example.
- **Day 5:** **[PSET]** Consolidate + cards. Submit the ASPMA Wk 4 quiz. **Deliverable:** derivation-prompt card for COLA. LOG.
- **Done when:** you can explain the STFT as a modulated filter bank and derive the COLA condition cold.

### Week 14 — STFT/ISTFT implementation — **a hard gate** — ends 2027-03-09
*Video: ASPMA Wk 4 programming assignment; sms-tools source as a reference implementation to diff against, not to start from.*

- **Days 1–2:** **[PSET]** STFT forward transform (Python), then inverse with overlap-add. Complete the ASPMA Wk 4 programming assignment. **Deliverable:** working analysis/synthesis. *Write yours before reading sms-tools' — then diff against it.*
- **Day 3:** **Perfect reconstruction.** **Deliverable:** analysis → synthesis with no modification returns the input to machine precision. **Do not proceed past this.** Off-by-one hop errors, window normalization, and edge handling are a rite of passage, and a subtly broken STFT will silently poison everything you build on it — and you will blame the algorithm instead.
- **Days 4–5:** Port to C++; agree with Python via the Week 7 harness. **Deliverable:** both implementations reconstructing to tolerance. Commit + LOG.
- **Done when:** round-trip error is at machine precision in *both* languages.

### Week 15 — STFT analysis tooling — ends 2027-03-21
*Video: ASPMA Wk 9 (audio feature extraction)*

The one application that is invariant: **measurement infrastructure.** Every branch needs to look at time-frequency data, and this upgrades the Phase 0 harness from a magnitude-response plotter into a real analysis rig.
- **Days 1–2:** Spectrogram — log-frequency and log-magnitude axes, dynamic-range control. **Deliverable:** your own spectrogram; reproduce the Week 1 aliasing-sweep figure with your own tool instead of Audacity's. *(A satisfying closure of the loop: you now own the instrument that first showed you the problem.)*
- **Day 3:** Basic spectral features — centroid, flux, rolloff. **Deliverable:** implemented and sanity-checked. These are foundational whether you go toward MIR or toward speech.
- **Day 4:** Phase — the phase spectrum, wrapping, group delay from the STFT. **Deliverable:** written note on why phase is so often discarded, and what it costs.
- **Day 5:** Commit the analysis toolkit. **Deliverable:** documented, tested, pushed. LOG.
- **Done when:** you can take an arbitrary WAV and produce a publication-quality time-frequency analysis with your own code.

**✅ DSP 504 Checkpoint (2027-03-21):** You own the STFT end to end — theory, perfect reconstruction, and an analysis toolkit — in both Python and C++.

---
## Week 16 — 📍 Checkpoint — ends 2027-04-02

**Demoted from branch point to checkpoint in this revision.** Under Spring 2027 this week sat just before a program start and a decision had to be made in it. Under Fall 2027 it sits twenty weeks out, and forcing a decision here would mean deciding with less information than waiting costs nothing to obtain. The branch decision moved to *The branch decision* above — a dated event with a trigger rule, not a week number.

What this week is instead: the last checkpoint before the invariant core stops being coursework and starts being your own build.

- **Day 1:** Reconcile the admissions state in one place. What has UIC confirmed about Fall 2027 specifically — deferral honored, or re-application required? What has Faller said? What has Corey said about supervision, as distinct from admission? Write it down. **If nothing has changed since today, write that down too** — a checkpoint that records "no new information" is doing its job.
- **Day 2:** Re-measure your throughput. You will have ~30 calendar weeks of `LOG.md` by this date, against the 6.4 weeks this plan was paced on. **Recompute study-days-per-week and compare it to 3.** If it came in above 3, the Weeks 17–28 calendar has slack you can spend on Phase 5's depth. If below, apply the cut order from *Reading the calendar* now rather than discovering it in July.
- **Day 3:** Full-chain review across DSP 501–504. **Deliverable:** one unaided pass — signal → convolution → Fourier → sampling → z-plane → filter design → multirate → STFT. Every gap found becomes a card.
- **Day 4:** Repo hygiene before the build phases. **Deliverable:** the C++ DSP core and Python reference build clean from a fresh checkout, CI green, README current.
- **Day 5:** Read Phase 4 and Phase 5 below against what you now know, and adjust the day-level plans if the evidence says to. **You will have better data about yourself than this document has.** Bring the changes and I'll pressure-test them.
- **Done when:** the admissions state is written down in one place, your real throughput number is recomputed and applied, and the DSP core builds clean.

---

## Phase 4 (DSP 505) — Adaptive & Optimal Filtering (Weeks 17–21) — closes 2027-05-30

**Promoted to invariant core in this revision.** Phase 1 taught you to derive the optimal filter when you know `R` and `p`. You never know `R` and `p`. This phase is the entire field's answer to that, and it is the same answer whether the signal is a room impulse response, a head-related transfer function, an echo path, or a beamformer's interference statistics. `candidate-profile.md` lists "adaptive filters, LMS/RLS" as a gap with no branch attached; this closes it.

*Resources:* **NPTEL-SSP Weeks 8–11** (the block deferred from Phase 1 — same lecturer, notation, and assignment format you'll have used for five weeks already). **Haykin-AFT** Ch. 4–6, 9–10 as the reference for what the lectures state without proof. **EPFL DSP2 Module 3** adaptive-filter videos as a second framing.

### Week 17 — The error surface and steepest descent — ends 2027-04-13
- **Day 1:** The MSE cost surface. **Deliverable:** derive `J(w) = σ²_d − 2wᵀp + wᵀRw`; show it is a paraboloid; identify its minimum as `w = R⁻¹p` and recognize it as Week 6's result arriving from a different direction.
- **Day 2:** Steepest descent: `w(n+1) = w(n) + μ[p − Rw(n)]`. **Deliverable:** derive the update; derive the stability bound `0 < μ < 2/λ_max` from the modal decomposition. Derivation-prompt card.
- **Day 3:** Convergence modes and eigenvalue spread. **Deliverable:** by hand, decouple the update into independent modes via **R**'s eigenvectors; state the time constant of each and why the spread `λ_max/λ_min`, not the size of **R**, sets convergence speed.
- **Day 4:** Code (Python). **Deliverable:** steepest descent on a known `R, p`; plot the trajectory over the error-surface contours; **confirm the μ bound by making it diverge on purpose, predicting the divergence threshold before running it.**
- **Day 5:** **[PSET]** Consolidate + cards. **Deliverable:** derivation-prompt cards for the error surface and the μ bound. Submit the NPTEL assignment for the covered week. Commit + LOG.
- **Done when:** you can derive the steepest-descent stability bound from **R**'s eigenvalues, and you produced a divergence you predicted numerically before you saw it.

### Week 18 — LMS and NLMS — ends 2027-04-25
- **Day 1:** The stochastic-gradient approximation. **Deliverable:** derive LMS from steepest descent by replacing the expectation with its instantaneous single-sample estimate. **State precisely what is being approximated and what is being given up** — this is the conceptual hinge of the whole phase.
- **Day 2:** Convergence in the mean and in the mean square; **misadjustment**. **Deliverable:** derive the misadjustment expression; state the three-way tradeoff between `μ`, convergence speed, and steady-state excess error.
- **Day 3:** **NLMS.** **Deliverable:** derive the normalized step from the minimum-disturbance principle; show why it removes LMS's sensitivity to input power, and why that is what makes it usable on real audio whose level you don't control.
- **Day 4:** Code (Python). **Deliverable:** LMS and NLMS identifying a known FIR plant; learning curves averaged over runs; **measured misadjustment compared against the Day 2 prediction, with numbers.**
- **Day 5:** **[PSET]** Code (C++). **Deliverable:** port both via the Week 7 harness; the two languages agree to stated tolerance. Submit the NPTEL assignment. Commit + LOG.
- **Done when:** your measured misadjustment matches the derived expression, and you can state in one sentence what LMS approximates and what that approximation costs.

### Week 19 — RLS — ends 2027-05-07
- **Day 1:** Deterministic least squares vs. stochastic MMSE. **Deliverable:** derive the deterministic normal equations; state exactly how they differ from Week 5's, and what changes when the expectation becomes a sum over observed data.
- **Day 2:** The matrix inversion lemma and the RLS recursion. **Deliverable:** derive RLS from the lemma; state the role of the forgetting factor `λ` and what `λ = 1` means physically. Derivation-prompt card.
- **Day 3:** RLS vs. LMS — convergence rate, cost, numerical stability. **Deliverable:** written comparison carrying the `O(p)` vs `O(p²)` accounting explicitly, plus the divergence failure mode RLS has and LMS doesn't.
- **Day 4:** Code. **Deliverable:** RLS on the Week 18 plant; overlay all three learning curves; **quantify both the convergence-rate advantage and the cost penalty.** A claim with no number is not a result.
- **Day 5:** **[PSET]** Consolidate + cards. Submit the NPTEL assignment. Commit + LOG.
- **Done when:** you can derive RLS from the matrix inversion lemma, and say with numbers when it is worth its cost and when it isn't.

### Week 20 — Frequency-domain adaptive filtering; the Kalman frame — ends 2027-05-18
- **Day 1:** Block LMS. **Deliverable:** derive it; state its exact relationship to sample-by-sample LMS and what block length costs in tracking speed.
- **Day 2:** **Frequency-domain adaptive filtering (FDAF) via overlap-save.** **Deliverable:** derive it using Week 9's overlap-save directly; identify where the gradient constraint enters and state what the unconstrained version buys and breaks. *(This is the second of three times overlap-save is load-bearing.)*
- **Day 3:** The Kalman filter as recursive Bayesian estimation. **Deliverable:** state the state-space model; derive the update as predict-then-correct; **show RLS falling out as a special case.** This is the unifying view, and it is what makes the whole phase one idea rather than four algorithms.
- **Day 4:** Code. **Deliverable:** FDAF on the Week 18 plant; **measure per-sample cost against time-domain NLMS at matched filter lengths and locate the crossover length empirically.**
- **Day 5:** **[PSET]** Consolidate. Submit the NPTEL assignment. Commit + LOG.
- **Done when:** your FDAF matches time-domain NLMS in converged response and beats it in measured cost at long filter lengths, at a crossover you can explain.

### Week 21 — 🔧 Phase 4 buffer — ends 2027-05-30
*Weeks 18–19 are the derivation-dense stretch — misadjustment and the matrix inversion lemma are the two most likely days to slip. Same pattern as Weeks 0.8, 7, and 12.*
- **Days 1–3:** Absorb overrun. If clean: spaced second pass — re-derive the `μ` bound, NLMS from minimum-disturbance, and RLS from the lemma, cold, one per day.
- **Day 4:** Integration rehearsal. **Deliverable:** NLMS running inside the Week 7 dual-language harness with a fixed test vector, ready to be dropped into Phase 5 without re-litigating its correctness.
- **Day 5:** Deck gap-fill across Phase 4. LOG.
- **Done when:** nothing from Weeks 17–20 is open, and you can derive LMS, NLMS, and RLS from a blank page.

**✅ DSP 505 Checkpoint (2027-05-30):** You can derive every standard adaptive algorithm from the optimal filter it approximates, predict its convergence and steady-state error, and choose between them on measured cost rather than reputation.

---

## Phase 5 (DSP 506) — The Artifact (Weeks 22–26) — closes 2027-07-27

**The one thing five phases of theory still leaves missing.** `candidate-profile.md` is blunt about it: *"No audio-domain project of any kind."* The harness, the biquad, the resampler, and the STFT toolkit are instruments — real work, but instruments. This phase builds the thing you put a link to.

**What it is:** a **real-time partitioned fast-convolution engine driving an NLMS adaptive stage on real audio**, in C++ with a Python reference, measured end to end, documented.

**Why this and not something else.** It is branch-neutral by construction: partitioned convolution is the machinery of HRTF rendering (CSUF/Faller) *and* of frequency-domain adaptive filtering (UIC/Corey), and the adaptive stage is the core of AEC, noise suppression, and array front-ends without distinction. It cashes out Week 9's overlap-save, Week 11's real-time rules, Week 15's analysis toolkit, and all of Phase 4 simultaneously — **it builds nothing new, it integrates everything.** And it produces a number, which is what a portfolio artifact has to do.

**No course covers this phase, and none should.** It is integration work against your own prior code. See the Coverage Ledger.

### Week 22 — Partitioned convolution — ends 2027-06-11
- **Day 1:** Uniformly partitioned overlap-save. **Deliverable:** derive the partition scheme; write the latency budget explicitly — algorithmic delay, block delay, and where each comes from.
- **Day 2:** Non-uniform partitioning: a zero-latency head block with progressively larger tail blocks. **Deliverable:** derive the schedule; state the cost-versus-latency tradeoff and why the uniform scheme cannot have both.
- **Day 3:** Code (Python). **Deliverable:** uniform partitioned convolution; **verified against direct convolution to machine precision.** *(Same discipline as Week 14's gate: a subtly wrong convolver poisons everything downstream and you will blame the adaptive filter.)*
- **Days 4–5:** Port to C++; agree with Python via the Week 7 harness. **Deliverable:** both implementations at machine precision, plus a benchmark against direct convolution locating the crossover length. Commit + LOG.
- **Done when:** your partitioned convolver reconstructs to machine precision in both languages and beats direct convolution past a crossover length you predicted before measuring.

### Week 23 — Real-time integration — ends 2027-06-22
- **Day 1:** Put the convolver on an audio thread under the Week 11 rules. **Deliverable:** preallocated buffers, no allocation, no locks, no syscalls on the RT path; parameter changes crossing via your Week 11 SPSC ring buffer.
- **Day 2:** **Audit it, don't trust it.** **Deliverable, falsifiable:** run under **RADSan** (promoted from optional to required here) and ThreadSanitizer. **The check:** zero real-time-safety violations reported, or it isn't done. "Seems to work" is not a result and this is exactly the material where self-assessment fails silently.
- **Day 3:** Denormals in the adaptive tail. **Deliverable, falsifiable via benchmark:** let the NLMS coefficient state decay into denormal range, benchmark, apply flush-to-zero, benchmark again. If it isn't measurably faster, the case wasn't triggered or the fix didn't take.
- **Day 4:** Block-size sweep. **Deliverable:** measured throughput and **worst-case** block processing time versus block size; the deadline-miss curve. Worst case, not mean — the mean is not what drops audio.
- **Day 5:** Commit + LOG.
- **Done when:** the engine runs a full-duplex block loop with zero reported RT-path violations and a measured worst-case block time inside a stated budget.

### Week 24 — The adaptive stage on real audio — ends 2027-07-04
- **Day 1:** State the problem formally before writing code. **Deliverable:** a written signal model — which signal is desired, which is the reference, what the error is, and what assumption about their correlation makes the whole thing work.
- **Day 2:** NLMS on real recordings. **Deliverable:** convergence curves on real input, with step size and regularization chosen for stated reasons rather than tuned until the plot looked nice.
- **Day 3:** **Failure modes, produced deliberately.** **Deliverable:** reproduce non-stationarity, a correlated reference, and divergence; log what each looks like in the curves. *(You will meet all three in a lab. Meeting them here, on purpose, is cheaper.)*
- **Day 4:** The metric. **Deliverable:** one defensible number — ERLE or segmental SNR improvement — computed identically every run, with the measurement procedure written down so a stranger could reproduce it.
- **Day 5:** Commit + LOG.
- **Done when:** you have one reproducible number that says whether it works, and you can diagnose each failure mode from its curve alone.

### Week 25 — Write it up — ends 2027-07-16
- **Days 1–2:** The report: theory, implementation, measurement method, results, **and limitations stated plainly.** **Deliverable:** draft. The limitations section is not a formality — it is the part that reads as engineering rather than marketing.
- **Day 3:** Figures, generated with your own Week 15 analysis toolkit rather than a library's defaults. **Deliverable:** spectrograms and convergence plots that are yours end to end. *(The loop closes: your instrument measures your artifact.)*
- **Day 4:** README, build instructions, CI green **on a clean checkout on a machine that isn't yours.**
- **Day 5:** Final pass. Commit + LOG.
- **Done when:** someone who has never seen the repo can clone it, build it, run it, and read what it does and how well it does it.

### Week 26 — 🔧 Phase 5 buffer / hardening — ends 2027-07-27
- **Days 1–3:** Absorb overrun. Week 23 (RT audit) and Week 24 (real audio) are the likely sources — real recordings break assumptions that synthetic ones don't.
- **Day 4:** Test coverage on the DSP path; property tests where they're cheap (round-trip precision, gain at DC and Nyquist, convergence to a known plant).
- **Day 5:** Final polish. LOG.
- **Done when:** the artifact is tested, CI-green, documented, measured, and you would put the link in an application without a caveat.

**✅ DSP 506 Checkpoint (2027-07-27):** You have a real-time audio system you built, that works, that you can prove works with numbers, and that you can explain from first principles at every layer. The "no audio-domain project" line comes out of `candidate-profile.md`.

---

## Week 27 — Branch onramp — ends 2027-08-08

**First week where branch-specific work is the correct thing to do**, because by now the answer exists.

- **Day 1:** Confirm the branch, the advisor, the term-one schedule, and the registration state. **Deliverable:** written, in one place.
- **Days 2–4:** Three papers from your advisor's actual recent work, read properly — one per day. **Deliverable per paper:** a one-page summary answering what problem, what prior work it improves on, what the core technical move is, and **which result in this plan you would need in order to reproduce it.** That last question is the point of the exercise.
- **Day 5:** Write the term-one reading plan and the questions you want to ask in the first advisor meeting. **Deliverable:** both, committed.
- **Done when:** you can describe your advisor's current research direction in your own words and name the specific gap between what you know and what their work assumes.

*First to be cut if the pace drops. This is doable in the first weeks of term; Phases 4 and 5 are not.*

## Week 28 — Pre-term consolidation — ends 2027-08-20

- **Days 1–2:** Full deck pass across DSP 501–505. **Deliverable:** every derivation-prompt card answered cold. This deck was built over twelve months for this week.
- **Day 3:** Re-derive the four load-bearing results from a blank page: the bilinear transform, `w = R⁻¹p` from the orthogonality principle, the NLMS update, and the COLA condition.
- **Day 4:** Repo final state — everything builds, CI green, READMEs current, `LOG.md` closed out with a retrospective entry.
- **Day 5:** Stop. **Deliverable:** nothing. Start the term rested rather than mid-sprint.
- **Done when:** you can walk the whole chain from a blank page, and the repo is in a state you'd hand to someone else.

*Second to be cut if the pace drops. Note that Day 5 is not padding — starting a graduate program already depleted is a real and common failure, and this plan has run for twelve months by this point.*

---
## Coverage Ledger — closed

Four rounds of search closed every video-coverage gap Weeks 0.1–16 had, down to one week that never had a full course and doesn't get one: DSP 503, Week 11. RES.6-008 Lec 10 closed overlap-add. EE123 Lec 10–11 closed COLA. NPTEL-ATS Lec 49 closed the periodogram gap on a second pass. Bela closed Days 1 and 4 of Week 11. A third pass gave Days 2–3 named individual references in place of a generic pointer. A fourth pass replaced "no assignment" with objective, falsifiable checks — a benchmark for the denormal fix, ThreadSanitizer plus a reference-diff for the ring buffer.

**This revision adds two rows and closes one.** Phase 4 (DSP 505) **closes** rather than opens a gap: NPTEL-SSP Weeks 8–11 was always a real course with graded assignments, previously deferred rather than unsourced, so Phase 4 arrives fully covered on day one. Phase 5 (DSP 506) has no course by design, and that needs saying explicitly so nobody goes looking for one later.

| Block | What's different from the rest of the plan | Why that's acceptable here |
|---|---|---|
| **DSP 503, Wk 11** | No formal course, no graded assignment. Bela (Days 1, 4) plus named individual references (Days 2–3) instead. | Verification is falsifiable, not absent: a before/after benchmark for denormals, ThreadSanitizer + a moodycamel reference-diff for the ring buffer. |
| **DSP 505, Wks 17–21** | *No gap.* NPTEL-SSP Wk 8–11, graded, same lecturer and notation as Phase 1. | Listed only to record that the "no course for adaptive filtering" question was never open — the material was deferred, not missing. Do not re-search it. |
| **DSP 506, Wks 22–26** | No course, and none is wanted. | **This is integration work against your own prior code, and a course would be the wrong instrument.** Verification is stronger here than anywhere else in the plan: machine-precision reconstruction (Wk 22), RADSan and ThreadSanitizer clean (Wk 23), a benchmarked denormal fix (Wk 23), a worst-case block-time budget (Wk 23), and one reproducible ERLE/SNR number (Wk 24). Five objective checks, no grader. |

**Week 11 is the final state.** No formal course exists and none is coming — checked directly, repeatedly, from every reasonable angle (course platforms, university programs, hardware-vendor courses, dedicated video search), and confirmed empty each time.

Courses checked and explicitly ruled out despite strong title matches, logged so none gets re-proposed without re-checking why it failed: MIT 2.161 (right content, no video at all), EE123 Lec 8–9 (video exists, wrong theoretical framing), Stanford CCRMA's real-time and embedded courses (real syllabi, some with public video, but Faust/HCI-framed or wrong language for the raw-C++ need), Vaidyanathan's own Caltech multirate course (hasn't been offered in years, no public video ever existed), Educative's "Embedded Programming with Modern C++" (text-based, not video, partially paywalled), and **EPFL DSP4** (real-time audio on a hardware board — embedded microcontroller work, not audio-thread discipline).

---

## Where you'll realistically fall behind

Rewritten in this revision around measured data rather than guesses.

1. **The pace, not any particular week.** This is now the top risk and it wasn't listed at all before. You are running at 2.5–3.85 study days/week against a plan that assumed 5, and the failure mode is week-long gaps between sessions, not slow sessions. **The countermeasure is the planned-vs-actual line in every `LOG.md` entry** — days since last entry, written down. If that number exceeds 3 twice running, re-pace immediately instead of accumulating a silent deficit. The last one ran six weeks before anyone noticed.
2. **Phase 1 (DSP 502) is the sleeper risk.** It looks like five quiet weeks of math. It is the load-bearing wall under Phases 4 and 5 and under every branch, and it is the material you have least prior exposure to. Do not compress it. Week 7's buffer exists for Weeks 5–6 specifically, and Week 5 Day 2 — carrying the pulled-forward orthogonality lecture — is the single most likely day to need it.
3. **Week 14's perfect-reconstruction gate will take longer than a week looks like it should.** That's why it's a gate and not a checkpoint. Week 22 Day 3 is the same gate in a different costume; expect it to bite the same way.
4. **Week 11 and Week 23, Days 2–3.** Denormals and lock-free code have falsifiable checks precisely because self-assessment fails silently on exactly this class of bug. It is tempting to eyeball a ring buffer that "seems to work." A data race that doesn't crash in testing is still a data race, and skipping the sanitizer is the actual risk, not writing the bug.
5. **Week 24 is where synthetic assumptions die.** Everything before it runs on signals you generated. Real recordings are non-stationary, correlated, and level-inconsistent. Budget for the adaptive filter behaving worse than Week 18's plots and treat that as information, not failure.
6. **The twenty-week gap will feel like slack, and it is not.** Weeks 17–28 have three days of margin against a Fall 2027 start. The cut order is written in *Reading the calendar* precisely so that the decision gets made deliberately rather than in July.
7. **Advisor outreach is still the critical path, and the Fall 2027 move made it feel less urgent without making it less important.** Corey's specific supervision commitment, and Faller's answers on capacity and course offerings, are worth more than any week in this document. **Neither should wait on this plan.**
8. **`[CONFIRM]` — deferral or re-application.** Unresolved as of this revision, and it silently underpins the branch section. Answer it early; it is a single email.

---

## Paste-in prompts

Each lives in its own file:

- [`pset-triage-prompt.md`](pset-triage-prompt.md) — cuts an over-long problem set down to a ~2-hour day without losing load-bearing concepts. Returns the one problem to do and the minimal keep-set.
- [`transcript-pre-read-prompt.md`](transcript-pre-read-prompt.md) — turns a lecture transcript into a short pre-watch primer, so you watch actively instead of taking notes cold. Never gives away a result the day's deliverable is to derive.
- [`review-problem-prompt.md`](review-problem-prompt.md) — runs one review problem every session (~10–15 min) from a non-adjacent earlier week, testing derivation fluency instead of recall. Runs alongside `cards.md`, not a replacement for it.
