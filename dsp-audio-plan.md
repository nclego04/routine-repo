# DSP / Audio — Invariant Core (Theory-First, Weeks 0.1 → 16)

**What this plan is:** the body of work that is correct **regardless of which program, advisor, or research direction you end up in.** It runs from where you are now (Phase 0, Week 0.1) through Week 16, and then it deliberately stops.

**Why it stops.** Your MS strategy has an active decision cluster — a self-set November 2026 go/no-go, and a December 2026 – February 2027 application window across seven programs (CSUF, UIC, KAIST, Aalto, PoliMi, Aalborg, UPF). Until that resolves, you don't know whether your next two years are mic arrays and source separation (UIC/Corey), HRTF and spatialization (CSUF/Faller), acoustic signal processing and hearing devices (Aalborg/CASPR), space-time audio (PoliMi/ISPG), spatial audio and acoustics (Aalto), or music information retrieval (KAIST/MACLab, UPF/MTG). **Those branches diverge after Week 16 and not before.** Planning past the branch point is inventing detail I'd only have to throw away — and this plan has now been rewritten twice for exactly that reason.

---

## What got cut, and the actual reason

The previous version of this plan targeted **boutique desktop-plugin work**: JUCE, VST3, APVTS, GUIs, presets, and three shipped plugins (EQ, delay/chorus, reverb, compressor). That's cut.

The reason isn't a job posting. It's that **the plugin track was misaligned with your own MS strategy, and had been from the start.** Nothing on your shortlist points at desktop plugins. Not Corey's mic arrays and assistive listening. Not Faller's HRTF work. Not CASPR's acoustic signal processing. Not ISPG's space-time audio. Not MACLab or the MTG. You were running a self-study track aimed at one industry and an admissions strategy aimed at another. The plugin work is genuinely enjoyable and genuinely orthogonal to every program you're actually applying to.

**What survives:** Phase 0 in full, the biquad, the measurement harness, the WAV/oscillator work already committed, and the real-time C++ discipline. Nothing you have done so far is wasted.

---

## The invariant core

Strip out everything branch-specific and this is what remains standing under **every** program, advisor, and plausible thesis topic on your list:

| | Why it's invariant |
|---|---|
| **Phase 0 — Deterministic theory** | Convolution, Fourier, sampling, z-transform, poles/zeros. Universal. Already in flight. |
| **Phase 1 — Stochastic DSP** | **The one that matters most.** Random processes, PSD, Wiener filtering, linear prediction. This is *literally the coursework* at every program on your list — UIC ECE 418/530, CSUF EGEC 580, and its equivalent everywhere else. It is also the prerequisite under HRTF estimation, source separation, MIR feature extraction, beamforming, and speech enhancement **alike**. There is no audio research path that avoids it. It is also the single largest gap in your current preparation. |
| **Phase 2 — Filters, multirate, real-time C++** | Biquads, FIR, polyphase resampling, the audio-thread rules. Every branch, every lab, every implementation. |
| **Phase 3 — The STFT** | The substrate of nearly all of it — spatial, music, and speech. |

**Everything else is contingent** and gets chosen *after* you know where you're going: AEC, beamforming, HRTF/binaural, embedded fixed-point ports, MIR feature pipelines, source separation, ANC. Building any of them now is a bet on a branch you haven't picked.

---

## ⚠️ This plan collides with application season

Weeks 11–16 land roughly **November 2026 – February 2027**, which is exactly your go/no-go month plus the full application cluster (PoliMi ~Dec 1; Aalto Dec 7 – Jan 5; KAIST ~Dec–Jan; UPF rolling from mid-Nov; UIC registration ~Nov 23–26).

**Do not plan for 10 hrs/week through that window.** Applications, statements of purpose, and advisor correspondence will eat study time, and pretending otherwise is how plans get abandoned rather than adjusted. Two deliberate responses are built in:
- **Week 12's buffer is explicitly reserved** for application overflow, not just study overrun.
- **Week 16 is a decision checkpoint, not a study week.**

If Phase 3 slides into March 2027, that is the plan working, not the plan failing.

---

## ⏰ What is actually urgent, and it isn't this plan

Your own strategy notes are unambiguous: **advisor outreach is the critical path, not applications, and not this study plan.**

- **CSUF Open University approval opens August 10, 2026, 8:00 a.m., first-come** — about a month out. The Faller email is supposed to land *before* that window so he has context when your request reaches him.
- **The Nam email (KAIST) is the single highest-leverage action for that entire path** — no advisor means no application at all, since GSCT requires an advisor name.
- **Corey (UIC) MS-thesis supervision is still unconfirmed**, and UIC is the most expensive option on your list (~$85–90K). You are currently holding a 4–5× cost premium against an unverified research fit.

None of those have been sent. The next 16 weeks of study are correct no matter what; the outreach has a clock on it. **If you have two hours this week, spend them on the Faller email, not on Lec 3.**

---

**Assumes ~10 hrs/week = 5 study days × ~2 hrs** (with the application-season exception above).
**Starting point:** ECE degree, comfortable in C++; WAV writer, oscillators, and the aliasing note already committed.
**Week numbering is unchanged:** build weeks still start at **Week 3**, so the `P<wk>D<day>` / `W<wk>D<day>` log scheme and the briefing routine's Phase-0 → Week-3 handoff both survive untouched.

---

## Run these habits every week

- **Dev journal (`LOG.md`).** Unchanged. `P<wk>D<day>` in Phase 0, `W<wk>D<day>` from Week 3. Keep the bug stories.
- **Spaced-repetition deck.** Unchanged, and it now carries more load: Phase 1 is where derivation-prompt cards pay off hardest, because you will not touch the orthogonality principle again between Week 6 and whenever your program starts. Start each session with a ~5-min review, then add 3–5 cards from the day's friction.
- **Dual-language workflow — new, from Week 7.** Prototype and validate in **Python/NumPy**, port to **C++**, and assert the two agree numerically. This is how every research group and every audio company actually works, and it's a habit you want *before* semester one, not during it. C++-only makes you slow to explore and gives you nothing to check the C against.
- **Measure, don't listen.** If it doesn't have a number, it isn't done.
- **Commit small + test as you go.** GitHub Actions from Week 8 (first unit tests).
- **Log planned vs actual.** Phase 1 is where the estimates will break.

---
## Phase 0 — Theory Foundation (≈7 weeks + a 1-week buffer)
*Resource: MIT RES.6-007 (ocw.mit.edu). **Every lecture ships a problem set with full solutions** — those are your daily deliverables. Textbook pairing: Oppenheim & Willsky follows the course chapter-for-chapter; read the matching sections. **Rule: one lecture + its problem set per study day** — never two lectures and two psets in one day (this pace is what the P1D1 log proved you need). The skim lectures (13–15, 25–26) ship no pset and may share a day; code days and consolidation days stay whole. **No day ends on "watched the video"** — each ends on a self-checked pset, a by-hand derivation, a batch of new flashcards, or committed code.*

**Priority note (revised):** nothing in Phase 0 is now safely skippable, and the two lectures previously marked "skim" have been *promoted*. Both turned out to be load-bearing for the invariant core rather than for the plugin track that got cut:
- **DT modulation (Lec 15, Wk 0.4 D3)** is now **core, with its pset.** The multiply-in-time ↔ shift-in-frequency pair is the root of the **STFT** (Phase 3), which underlies essentially every audio research path — spatial, music, and speech alike. Lec 13–14 (CT modulation / AM) remain optional watching.
- **Decimation (Lec 19, Wk 0.5 D2)** was previously waved off as out of scope. It is now core: multirate gets its own week (Week 10), and every real audio pipeline resamples (16 / 44.1 / 48 kHz).
- **Feedback & stability (Lec 25–26, Wk 0.7 D3)** stays a summary, but its forward-link is now generic rather than reverb-specific: it is load-bearing for **anything recursive** — IIR filters, adaptive filters, feedback loops. Keep the concept regardless of which branch you take.

If you must cut, cut Lec 13–14 (CT AM) and nothing else.

### Week 0.1 — Signals, systems, LTI, convolution (Lec 1–5)
- **Day 1:** Lec 1 (introduction). **Deliverable:** PS1 worked and self-checked against solutions; seed the deck with your first few cards (e.g., *"What makes a system LTI, and why does that property matter?"*).
- **Day 2:** Lec 2 (signals & systems). **Deliverable:** PS2 worked/checked; a card pinning down the difference between linearity and time-invariance.
- **Day 3:** Lec 3 (convolution). **Deliverable:** PS3 worked/checked; write the convolution-sum definition from memory with a one-line justification.
- **Day 4:** Lec 4 (convolution). **Deliverable:** one 3-tap convolution by hand, end to end; PS4 worked/checked.
- **Day 5:** Lec 5 (LTI properties). **Deliverable:** PS5 worked/checked; state in writing why an LTI system is fully described by its impulse response.
- **Done when:** you can say why an LTI system is fully described by its impulse response, and you've worked a 3-tap convolution by hand.

### Week 0.2 — Convolution in code, difference equations, CT Fourier begins (Lec 6–9)
- **Day 1:** Code. **Deliverable:** a C++ `convolve()` with a passing test against your Week 0.1 Day-4 hand example; committed.
- **Day 2:** Lec 6 (differential **and** difference equations — the difference-equation form is your recursive oscillator/filter). **Deliverable:** derive the impulse response of `y[n] = b0·x[n] + a1·y[n−1]` by hand; PS6 checked; LOG.
- **Day 3:** Lec 7 (CT Fourier series). **Deliverable:** compute the Fourier-series coefficients of a square wave by hand; PS7 checked.
- **Day 4:** Lec 8 (CT Fourier transform). **Deliverable:** derive the transform of a rectangular pulse → sinc by hand; PS8 checked.
- **Day 5:** Lec 9 (FT properties). **Deliverable:** one card per key property (linearity, shift, scaling, **conv↔mult**, duality) — property on the front, one-line statement + proof sketch on the back; PS9 checked.
- **Done when:** your `convolve()` matches the hand computation, and you can explain conv↔mult duality.

### Week 0.3 — CT Fourier catch-up + DFT; DT Fourier & filtering (Lec 10–12)
- **Day 1:** Problem-set day — the dedicated pset-catch for the CT Fourier block (Lec 7–9). **Deliverable:** remaining PS7–PS9 problems worked, every miss re-worked to correct.
- **Day 2:** Code. **Deliverable:** a naive O(N²) DFT in C++; single-bin spike for a sine, and your saw/square WAV harmonics match Audacity. LOG.
- **Day 3:** Lec 10 (DT Fourier series). **Deliverable:** DTFS of a short periodic sequence by hand; PS10 checked.
- **Day 4:** Lec 11 (DTFT — evaluated **on the unit circle**). **Deliverable:** derive the DTFT of a rectangular window; PS11 checked; add a card: *"How does the DTFT relate to the z-transform?"* → the unit-circle-slice answer.
- **Day 5:** Lec 12 (filtering). **Deliverable:** sketch ideal LPF/HPF/BPF magnitude responses and state why the ideal filter is non-causal; PS12 checked.
- **Done when:** your DFT locates a sine's frequency correctly and you can articulate the DTFT as the unit-circle evaluation.

### Week 0.4 — Measurement harness; DT modulation; sampling begins (Lec 13–17)
- **Day 1:** Code. **Deliverable:** the **measurement harness** — impulse in → transform the impulse response → plot |H(e^jω)|; pass-through reads flat. (The rig for the rest of the plan. Where the plan says "FFT," it means the **O(N²) DFT you built in Week 0.3** — that's the transform engine; a true radix-2 FFT is never required, though you can drop one in later if large-N measurements feel slow.)
- **Day 2:** Consolidate the DT-Fourier block. **Deliverable:** any remaining PS10–12 closed; harness committed + LOG.
- **Day 3:** Lec 15 (**DT modulation**) — *core, with pset.* Lec 13–14 (CT modulation / AM demo) are optional watching, no pset. **Deliverable:** PS15 worked/checked; write the multiply-in-time ↔ shift-in-frequency pair from memory and state where a frequency shift aliases. **Forward-link:** this is the seed of the STFT (Week 13) — windowing a signal *is* modulating it, and each analysis bin is a frequency-shifted, lowpassed copy. Add a derivation-prompt card.
- **Day 4:** Lec 16 (sampling theorem, Nyquist). **Deliverable:** state and sketch-prove the sampling theorem in your own words; PS16 checked. (The theory under `aliasing.md`.)
- **Day 5:** Lec 17 (interpolation / reconstruction). **Deliverable:** PS17 checked; a one-line statement of how ideal reconstruction interpolates between samples.
- **Done when:** the harness gives a sane magnitude response and you can state and sketch-prove the sampling theorem.

### Week 0.5 — Sampling & decimation; aliasing code; Laplace begins (Lec 18–20)
- **Day 1:** Lec 18 (DT processing of CT signals). **Deliverable:** PS18 checked.
- **Day 2:** Lec 19 (decimation / downsampling) — **core.** **Deliverable:** PS19 checked; write the "filter *before* you decimate, and why" note (the anti-aliasing-before-downsampling principle). **Forward-link:** Week 10 builds polyphase decimation/interpolation and rate conversion. Multirate is not a footnote — speech runs at 16 kHz, music at 44.1/48 kHz, and something always has to bridge them. *(Band-limited synthesis / BLEP is out of scope; no oscillator work remains.)*
- **Day 3:** Problem-set / consolidation day — the sampling+modulation block is the lecture-dense stretch. **Deliverable:** any slipped PS16–PS19 worked, every miss re-worked to correct.
- **Day 4:** Code. **Deliverable:** aliasing fold-back confirmed numerically (tones above Nyquist measured against `f_s − f`); `aliasing.md` updated to cite the sampling theorem, not just the spectrogram. LOG.
- **Day 5:** Lec 20 (Laplace; s-plane, poles/zeros, ROC). **Deliverable:** Laplace transform + ROC + pole/zero plot of a first-order system by hand; PS20 checked.
- **Done when:** your measured aliased frequencies match the sampling-theorem prediction, and you can place a first-order system's poles in the s-plane.

### Week 0.6 — Second-order systems, z-transform, the one-pole (Lec 21–22) — the payoff week
- **Day 1:** Lec 21 (CT second-order systems; resonance, Q). **Deliverable:** pole-pair diagrams for under/critical/over-damped, relating ζ and ω_n to pole location; PS21 checked. (Your biquad-Q intuition, early.)
- **Day 2:** Lec 22 (z-transform). **Deliverable:** z-transform + ROC + pole/zero of a first-order difference equation by hand; PS22 checked; add a card: *"What does moving off the unit circle in the z-plane buy you over the DTFT?"*
- **Day 3:** Problem-set day — the dedicated pset-catch for the Laplace/z block (Lec 20–22), the derivation-dense stretch. **Deliverable:** remaining PS20–PS22 problems worked, every miss re-worked to correct.
- **Day 4:** Derive + build. **Deliverable:** by hand, `y[n] = (1−a)x[n] + a·y[n−1]` → `H(z) = (1−a)/(1 − a·z⁻¹)`, pole at `z = a`; one-pole implemented in C++.
- **Day 5:** Verify. **Deliverable:** one-pole impulse response through the harness; the pole predicts the measured −3 dB point and rolloff. Commit + LOG. *(Closes the theory→measurement loop; completes old Week 2.)*
- **Done when:** your paper pole location matches the measured magnitude response.

### Week 0.7 — CT→DT mapping, Butterworth, feedback + consolidate (Lec 23–26)
- **Day 1:** Lec 23 (mapping CT→DT filters = the bilinear transform). **Deliverable:** re-derive the bilinear substitution on paper, showing the frequency warping; PS23 checked.
- **Day 2:** Lec 24 (Butterworth). **Deliverable:** derive the maximally-flat magnitude-squared response and the pole positions on the s-plane circle; PS24 checked.
- **Day 3:** Lec 25–26 (feedback) — *skim the lectures to a summary, no pset, but keep the concept.* **Deliverable:** one paragraph on feedback and stability (poles leaving the unit circle). **Load-bearing for anything recursive** — IIR filter stability, adaptive-filter convergence bounds, and any feedback loop you later build. Which specific one depends on your branch; the concept is invariant. Skim the video if tight; do not cut the idea.
- **Day 4:** Consolidation. **Deliverable:** every Phase-0 pset closed; a from-memory bilinear-transform derivation, no notes.
- **Day 5:** Full deck review + gap-fill. **Deliverable:** run a complete review pass; ensure every link in the chain — signal → convolution → Fourier → sampling → Laplace/z → poles/zeros → transfer function → filter — has at least one card you answer cold, plus derivation-prompt cards for the one-pole and the bilinear transform. This deck carries you to Month-6 interview prep. LOG.
- **Done when:** you can walk the full chain unaided and re-derive the bilinear transform from scratch.

### Week 0.8 — 🔧 Phase 0 buffer / consolidation
*The only slack in Phase 0. Its primary job is to absorb overrun from the two hardest stretches — the sampling/modulation weeks (0.4–0.5, overloaded by lecture count) and the Laplace/z weeks (0.5–0.6, overloaded by derivation depth) — which have no catch-up elsewhere. If a block slipped, the slid psets/derivations/code land on the matching day below. If you're fully on track, the default is a **spaced second pass**: re-derive the load-bearing results cold, a day per block. Spacing (revisiting after a gap) is exactly what depth topics like the z-transform respond to, so this week is productive even when nothing slipped — don't skip it just because you're caught up. It can compress to 2–3 days if truly clean.*
- **Day 1:** Fourier block (Weeks 0.2–0.3). **Deliverable:** any slipped PS7–PS12 closed; else re-derive one CT result (rect → sinc) and one DT result (DTFT of a rectangular window) cold, no notes.
- **Day 2:** Sampling/modulation block (Weeks 0.4–0.5 — the lecture-dense stretch). **Deliverable:** any slipped PS16–PS19 or the Week 0.5 aliasing code closed; else re-state and sketch-prove the sampling theorem cold and re-confirm the fold-back (`f_s − f`) against `aliasing.md`.
- **Day 3:** Laplace/z block (Weeks 0.5–0.6 — the depth stretch). **Deliverable:** any slipped PS20–PS22 or the one-pole code closed; else re-derive `H(z) = (1−a)/(1 − a·z⁻¹)` with its pole at `z = a` cold, and re-run the one-pole through the harness to reconfirm the −3 dB point.
- **Day 4:** CT→DT mapping block (Week 0.7). **Deliverable:** any slipped PS23–PS24 closed; else re-derive the bilinear substitution from scratch (frequency warping shown) with no notes, and re-derive the Butterworth pole placement.
- **Day 5:** Whole-chain gate. **Deliverable:** a single unaided pass down the full chain (signal → convolution → Fourier → sampling → Laplace/z → poles/zeros → transfer function → filter); every link has a card you answer cold; nothing from 0.1–0.7 is left open. LOG.
- **Done when:** no Phase-0 pset, derivation, or code item is still open, and you can walk the chain and re-derive both the one-pole and the bilinear transform from a blank page.

**✅ Phase 0 Checkpoint:** You can derive a filter's transfer function from its difference equation, place its poles, and predict its magnitude response — then confirm it with your own harness. The z-transform is no longer magic.

## Phase 1 — Stochastic Signal Processing (Weeks 3–7)

**The largest gap in your preparation, and the highest-leverage weeks in this document.** Oppenheim & Willsky is entirely deterministic — known signals, known systems. But real audio signals are *random*: speech, noise, room reverberation, and the interference every algorithm is built to fight. You cannot derive the Wiener filter, NLMS, MVDR beamforming, or any modern estimator without autocorrelation, power spectral density, and the orthogonality principle.

This is also the material your graduate coursework will assume you have. Doing it now means arriving to UIC ECE 418 or CSUF EGEC 580 having already derived the results rather than meeting them cold.

*Resources:* **Hayes, _Statistical Digital Signal Processing and Modeling_** (primary — Ch. 2–3, 4, 6–7). Haykin, _Adaptive Filter Theory_ Ch. 1–2 (alternate framing). Stanford EE264 / Georgia Tech ECE 6255 notes for worked problems.

### Week 3 — Random processes, stationarity, autocorrelation
- **Day 1:** Random variables → random *processes*. Ensemble average vs. time average. **Deliverable:** written statement, in your own words, of what a random process *is* and why one realization can't characterize it.
- **Day 2:** Wide-sense stationarity; ergodicity. **Deliverable:** show by hand that a specific process is WSS; state precisely what ergodicity buys you — it is what licenses estimating from *one* recording, which is the entire practical foundation of the field.
- **Day 3:** Autocorrelation `r_x[k]` — definition and properties (symmetry, `r_x[0]` = power, positive semi-definiteness). **Deliverable:** derive the autocorrelation of white noise, and of a sinusoid in noise, by hand.
- **Day 4:** The autocorrelation *matrix* **R**. Toeplitz structure; why it's PSD. **Deliverable:** build **R** by hand for a 3-tap case; verify positive semi-definiteness numerically in Python.
- **Day 5:** Code. **Deliverable:** Python — estimate autocorrelation from a finite record; show the estimator's variance blowing up at large lags. Commit + LOG.
- **Done when:** you can explain why `r_x[k]`, not the signal itself, is the object every estimator actually optimizes against.

### Week 4 — Power spectral density; filtering random processes
- **Day 1:** PSD; the **Wiener–Khinchin** theorem (PSD = FT of autocorrelation). **Deliverable:** derive it. Derivation-prompt card. *(This is the stochastic mirror of Phase 0's conv↔mult duality — same structure, new object.)*
- **Day 2:** **Filtering a random process:** `S_y(ω) = |H(e^jω)|² · S_x(ω)`. **Deliverable:** derive from scratch. This is the most-used identity in everything downstream.
- **Day 3:** White noise through a filter; spectral factorization; the innovations representation. **Deliverable:** by hand, find the filter that shapes white noise into a given PSD.
- **Day 4:** The periodogram and its **inconsistency**; Welch's method and why averaging fixes it. **Deliverable:** written explanation of why a longer FFT does *not* reduce periodogram variance but averaging does. *(This is a favorite interview and qualifying-exam question precisely because it's counterintuitive.)*
- **Day 5:** Code. **Deliverable:** Python — Welch PSD estimator from scratch, validated against `scipy.signal.welch`. Commit + LOG.
- **Done when:** you can predict the output PSD of any LTI filter driven by any input PSD, and explain why a raw periodogram is a bad estimator.

### Week 5 — Linear prediction
- **Day 1:** The forward linear-prediction problem. **Deliverable:** set up the prediction-error minimization by hand.
- **Day 2:** The **normal equations** (`R·a = r`). **Deliverable:** full derivation, no notes. Derivation-prompt card.
- **Day 3:** **Levinson–Durbin** recursion — exploiting Toeplitz structure to get O(p²). **Deliverable:** work the recursion by hand for p = 3; state what the reflection coefficients mean.
- **Day 4:** LPC and speech: the source-filter model, and why a vocal tract is an all-pole filter. **Deliverable:** write the connection from the all-pole model back to Phase 0's pole/zero work. **This is where your z-plane intuition first cashes out on a real signal.**
- **Day 5:** Code. **Deliverable:** Python — LPC analysis of a real speech frame; plot the LPC spectral envelope over the FFT magnitude and show it tracking the formants. Commit + LOG.
- **Done when:** you can derive the normal equations cold and explain what LPC is *modeling*.

### Week 6 — The Wiener filter — the payoff week
- **Day 1:** The MMSE estimation problem. The cost function; why mean-*square*. **Deliverable:** state the problem formally; identify precisely what is known and what is estimated.
- **Day 2:** The **orthogonality principle** — derive it. **Deliverable:** full derivation plus a written geometric interpretation (the error is orthogonal to the data subspace). **This is the conceptual keystone of estimation theory.** Derivation-prompt card, no exceptions — it is the single result most likely to appear in a graduate exam, a qualifying exam, and an interview.
- **Day 3:** The **FIR Wiener filter**: `w = R⁻¹·p`. **Deliverable:** derive it from the orthogonality principle; compute the resulting MMSE. Note its structural identity with the normal equations — LPC *is* a Wiener filter predicting `x[n]` from its own past.
- **Day 4:** The Wiener filter for **noise reduction**: derive the frequency-domain gain `H(ω) = S_s(ω) / (S_s(ω) + S_n(ω))`. **Deliverable:** this derivation, by hand. Note what it implies: every practical enhancement algorithm ever built is an attempt to *estimate* those two PSDs online, because you never actually know them.
- **Day 5:** Code. **Deliverable:** Python — FIR Wiener filter denoising a synthetic signal where you *do* know both PSDs (the oracle case); measure the SNR improvement. Commit + LOG.
- **Done when:** you can derive `w = R⁻¹p` from the orthogonality principle on a blank page, and name exactly which quantity every practical algorithm is forced to estimate rather than know.

### Week 7 — 🔧 Phase 1 buffer + numerical workflow
- **Days 1–3:** Absorb overrun. Weeks 5–6 (normal equations, orthogonality) are the derivation-dense stretch and the likely slip. If clean: spaced second pass — re-derive Wiener–Khinchin, the normal equations, and `w = R⁻¹p` cold, one per day.
- **Day 4:** **Stand up the dual-language workflow.** **Deliverable:** repo scaffold with `python/` and `cpp/` trees, a shared test-vector format, and a harness that runs an algorithm in both and asserts numerical agreement to a stated tolerance. Prove it on the one-pole from Week 0.6.
- **Day 5:** Deck gap-fill across Phase 1. LOG.
- **Done when:** nothing from Weeks 3–6 is open, and you have a working Python↔C++ agreement harness you'll use for every algorithm from here on.

**✅ Phase 1 Checkpoint:** You can derive the Wiener filter from the orthogonality principle, predict any LTI filter's output PSD, and explain why every practical algorithm is an approximation to a filter nobody can actually build. **You are now prepared for graduate DSP coursework anywhere on your list.**

---

## Phase 2 — Filters, multirate, and real-time C++ (Weeks 8–12)

*Resources:* RBJ Audio EQ Cookbook; Proakis & Manolakis (FIR design, multirate); Crochiere & Rabiner, _Multirate Digital Signal Processing_; Ross Bencina, "Real-time audio programming 101"; Timur Doumler's real-time C++ talks.

### Week 8 — Biquads
- **Day 1:** RBJ cookbook; Direct Form I vs. II vs. transposed DF-II, and why DF-II behaves worse numerically. **Deliverable:** written comparison. With the bilinear transform already derived in Phase 0, this is coefficient bookkeeping, not new theory.
- **Day 2:** Implement a `Biquad` class (DF-I) with LPF coefficients. **Deliverable:** compiles, runs, committed.
- **Day 3:** Add HPF, peaking, shelf. **Deliverable:** all four types; trace Q behavior back to Lec 21's pole pairs.
- **Day 4:** Measure all four through the Phase 0 harness. **Deliverable:** measured |H| matches designed |H| for each type.
- **Day 5:** Unit tests (DC gain, Nyquist gain, coefficient sanity); GitHub Actions running them on push. **Deliverable:** green CI. Commit + LOG.
- **Done when:** measured response matches theory for all four types, and CI is green.

### Week 9 — FIR design
- **Day 1:** Linear phase — the four types, the symmetry condition, group delay. **Deliverable:** derive why symmetric taps ⇒ linear phase. **Phase matters** for spatial audio (ITD cues), for array processing, and for anything binaural — in a way plugin EQ let you ignore.
- **Day 2:** Window-method design; the mainlobe/sidelobe tradeoff. **Deliverable:** design an LPF by windowing; measure it.
- **Day 3:** Optimal design — Parks–McClellan / equiripple; the alternation theorem conceptually. **Deliverable:** design the same LPF with `remez`; compare stopband attenuation against the window method, with numbers.
- **Day 4:** **Overlap-add and overlap-save convolution.** **Deliverable:** derive both; implement overlap-add in Python. *(Direct forward-link: this is the machinery of Week 13's STFT, and of fast convolution generally — including HRTF convolution, if you end up there.)*
- **Day 5:** Code. **Deliverable:** C++ FIR + overlap-add, agreeing with the Python reference via the Week 7 harness. Commit + LOG.
- **Done when:** you can say when FIR beats IIR and why, and your overlap-add convolution matches direct convolution to machine precision.

### Week 10 — Multirate
- **Day 1:** Decimation and interpolation — the identities and the required anti-alias / anti-image filters. **Deliverable:** derive the spectral effect of ↓M and ↑L by hand.
- **Day 2:** **Polyphase decomposition.** **Deliverable:** derive it; show why it's an M× saving (you filter only the samples you keep).
- **Day 3:** The **noble identities**; cascaded rate conversion by L/M. **Deliverable:** derive; sketch an efficient 48 ↔ 44.1 kHz converter (the hard, ugly, real-world ratio).
- **Day 4:** Code. **Deliverable:** polyphase resampler in Python; measure residual aliasing and imaging.
- **Day 5:** Code. **Deliverable:** port to C++; agree with Python via the harness. Commit + LOG.
- **Done when:** your resampler is measurably clean, and you can derive polyphase's saving from first principles.

### Week 11 — Real-time audio constraints
- **Day 1:** Bencina's article; the audio-thread rules. **Deliverable:** notes — the list of what you may *never* do on the audio thread, and why the criterion is *unbounded*, not *slow*.
- **Day 2:** Denormals; flush-to-zero; where they bite (IIR tails, decaying states, adaptive coefficients). **Deliverable:** demonstrate a denormal slowdown numerically, then fix it.
- **Day 3:** Lock-free communication — atomics, memory ordering, SPSC ring buffers. **Deliverable:** implement an SPSC ring buffer; state precisely why a mutex is disqualified.
- **Day 4:** Block processing; latency vs. block size; the algorithmic-delay budget. **Deliverable:** written latency analysis of a full-duplex audio pipeline.
- **Day 5:** **Deliverable:** a one-page real-time-audio cheat sheet, written cold. Commit + LOG.
- **Done when:** you can explain the audio-thread rules, denormals, and lock-free SPSC from memory, and your ring buffer survives a threaded stress test.

### Week 12 — 🔧 Buffer + application overflow
*This week is deliberately double-booked, and the applications win.* It lands near your November go/no-go and the opening of the application cluster.
- **Days 1–3:** Absorb study overrun **or** application work — statements of purpose, advisor correspondence, UIC registration (~Nov 23–26), whichever is live. Do not feel behind if no DSP happens this week.
- **Day 4:** If time: harden the C++ DSP core — biquad, FIR, overlap-add, polyphase, ring buffer — into a clean, tested, documented unit.
- **Day 5:** README for the DSP core (theory → implementation → measured verification), written cold. LOG.
- **Done when:** the DSP core is tested, CI-green, and pushed — *or* your applications are moving and you consciously chose that. Both are wins; only silence is a loss.

**✅ Checkpoint:** A tested C++ DSP core (filters, overlap-add, multirate, lock-free IO), a Python reference for all of it, and the real-time rules cold.

---

## Phase 3 — The STFT (Weeks 13–15)

The last invariant block. The STFT is the shared substrate of nearly every audio research direction on your list — spatial (binaural cues per band), music (chroma, onsets, MIR features), and speech (enhancement, separation). Whatever branch you take, you will build on this.

*Resources:* Smith, _Spectral Audio Signal Processing_ (JOS, free online — Ch. on STFT and COLA). Allen & Rabiner (1977) for the original framing.

### Week 13 — STFT theory
- **Day 1:** The STFT as a filter bank vs. as a sequence of windowed transforms. **Deliverable:** state both views and reconcile them. *(This is the direct payoff of the Lec 15 promotion — each bin is a modulated, lowpassed channel.)*
- **Day 2:** Windows — Hann, Hamming, Blackman; mainlobe width vs. sidelobe level; spectral leakage. **Deliverable:** measure each window's leakage; pick one with a stated reason.
- **Day 3:** The **COLA** (constant overlap-add) condition. **Deliverable:** derive it; show why Hann at 50% overlap reconstructs perfectly.
- **Day 4:** Time-frequency resolution — the uncertainty tradeoff; hop size vs. window length. **Deliverable:** written analysis of why you cannot have both, with a worked example.
- **Day 5:** Consolidate + cards. **Deliverable:** derivation-prompt card for COLA. LOG.
- **Done when:** you can explain the STFT as a modulated filter bank and derive the COLA condition cold.

### Week 14 — STFT/ISTFT implementation — **a hard gate**
- **Days 1–2:** STFT forward transform (Python), then inverse with overlap-add. **Deliverable:** working analysis/synthesis.
- **Day 3:** **Perfect reconstruction.** **Deliverable:** analysis → synthesis with no modification returns the input to machine precision. **Do not proceed past this.** Off-by-one hop errors, window normalization, and edge handling are a rite of passage, and a subtly broken STFT will silently poison everything you build on it — and you will blame the algorithm instead.
- **Days 4–5:** Port to C++; agree with Python via the Week 7 harness. **Deliverable:** both implementations reconstructing to tolerance. Commit + LOG.
- **Done when:** round-trip error is at machine precision in *both* languages.

### Week 15 — STFT analysis tooling
The one application that is invariant: **measurement infrastructure.** Every branch needs to look at time-frequency data, and this upgrades the Phase 0 harness from a magnitude-response plotter into a real analysis rig.
- **Days 1–2:** Spectrogram — log-frequency and log-magnitude axes, dynamic-range control. **Deliverable:** your own spectrogram; reproduce the Week 1 aliasing-sweep figure with your own tool instead of Audacity's. *(A satisfying closure of the loop: you now own the instrument that first showed you the problem.)*
- **Day 3:** Basic spectral features — centroid, flux, rolloff. **Deliverable:** implemented and sanity-checked. These are foundational whether you go toward MIR or toward speech.
- **Day 4:** Phase — the phase spectrum, wrapping, group delay from the STFT. **Deliverable:** written note on why phase is so often discarded, and what it costs.
- **Day 5:** Commit the analysis toolkit. **Deliverable:** documented, tested, pushed. LOG.
- **Done when:** you can take an arbitrary WAV and produce a publication-quality time-frequency analysis with your own code.

**✅ Phase 3 Checkpoint:** You own the STFT end to end — theory, perfect reconstruction, and an analysis toolkit — in both Python and C++.

---

## Week 16 — 🔀 The branch point

**This is a decision week, not a study week.** By now you should know where you're going, or be very close.

- **Day 1:** Reconcile. Which programs admitted you? Which advisors confirmed? What did Faller, Corey, and Nam actually say? Write it down in one place.
- **Day 2:** Pick the branch. The contingent tracks, and what each would look like:

| If you land at… | The next block is… |
|---|---|
| **UIC / Corey** | Adaptive filtering (LMS → NLMS → frequency-domain), then mic arrays and beamforming (delay-and-sum → MVDR → GSC), then source separation. Aligns with ECE 516 and ECE 531. |
| **CSUF / Faller** | HRTF and binaural processing, ITD/ILD cues, fast HRTF convolution (your Week 9 overlap-add), individualization. Builds directly on your existing JUCE room-acoustics project. |
| **Aalborg / CASPR** | Acoustic signal processing for hearing devices — multichannel enhancement, noise reduction, the Oticon-adjacent stack. |
| **PoliMi / ISPG** | Space-time audio processing, acoustic source localization, array geometry. |
| **Aalto** | Spatial audio and acoustics — room acoustics, auralization, ambisonics. |
| **KAIST / MACLab or UPF / MTG** | MIR and music AI — feature pipelines on top of your Week 15 toolkit, then deep learning for audio. |
| **No program (self-study continues)** | Then choose a target *industry* and build the matching artifacts. This is the branch where the earlier embedded/speech plan (AEC, beamforming, Cortex-M port) becomes the right answer — but only in this branch. |

- **Days 3–5:** **Write the next 12 weeks yourself, at day granularity**, for the branch you actually landed in. You'll have ~16 weeks of evidence about your real throughput by then — far better data than I have now. Bring it to me and I'll pressure-test it.

**Done when:** you know your branch and have planned the next block against it.

---

## Where you'll realistically fall behind

1. **Phase 1 is the sleeper risk.** It looks like five quiet weeks of math. It is the load-bearing wall under every branch, and it's the material you have the least prior exposure to. Do not compress it. Week 7's buffer exists for Weeks 5–6 specifically.
2. **Week 14's perfect-reconstruction gate will take longer than a week looks like it should.** That's why it's a gate and not a checkpoint.
3. **Application season will eat Weeks 11–16.** This is planned for (Week 12), and it is the correct trade. A shipped application beats a shipped biquad.
4. **The outreach is the real critical path, and it has a clock.** Faller before August 10. Nam before the KAIST window. Corey before you commit $85–90K on an unconfirmed fit. **None of these should wait on this plan.**
5. **Don't plan past Week 16.** This document has now been rewritten twice because it was built on a target that turned out to be provisional. The branch point is real; respect it.

---
---

## Pset triage prompt (paste-in when a problem set is too long)

*Use when a lecture's problem set is more than a ~2-hour day can hold. Paste this prompt plus the problem statements — solutions aren't needed (you self-check with those). It returns a keep/optional/skip cut list that deletes redundant drill without touching the load-bearing concepts. Best on rust-buffer and consolidation days; it barely helps the two hardest stretches (the sampling/modulation weeks 0.4–0.5 are overloaded by lecture count, the Laplace/z weeks 0.5–0.6 by derivation depth — different valves).*

> I'm triaging this problem set to fit a ~2-hour study day without losing load-bearing concepts. Below the line are the problem statements from **[lecture / week]**. This week's **Done when** is: **[paste the week's Done-when line]**.
>
> Classify every problem as exactly one of:
> - **derivation** — builds a result from scratch (e.g. rect pulse → sinc, H(z) from a difference equation). *Keep, always.*
> - **probe** — a boundary case, sign trap, ROC subtlety, or a "why" that catches a misconception. *Keep at least one per concept.*
> - **synthesis** — combines several ideas, usually near the end. *Keep if the day allows.*
> - **drill** — repeats a computation I've already done once in this set. *Skip after the first.*
>
> Then give me:
> 1. A per-problem table: number → type → the concept it exercises → **KEEP / OPTIONAL / SKIP**.
> 2. **The one problem to do if I only had time for one** — whichever best reaches the Done-when.
> 3. **The minimal keep-set** — the smallest list that reaches the Done-when, plus one stretch problem for durability.
> 4. For any *type* I'm skipping, name the concept I should make sure has a **derivation-prompt card**, so spaced repetition maintains it instead of it silently dropping.
>
> Rules: reason from the problem statements — you don't need solutions to triage. Default to KEEP if any keep-signal fires (it makes me derive, probes a "why", or hits an edge case). Include the first and last problem in the keep-set unless one is pure drill.

**The line you never cross:** the cut is drill (redundant computation), never derivations, and never a concept named in the week's Done-when. If trimming problems can't get a day down to size, the problem isn't the pset — see the fall-behind triage, and protect the derivation over the code.
