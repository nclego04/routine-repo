# DSP / Audio Software — Revised Plan (Theory-First, ~8.5 Months)

**What changed:** A 6-week **Phase 0 — Theory Foundation** is prepended, working through MIT RES.6-007 (Oppenheim's *Signals and Systems* video course) from Lecture 1, paired with light C++ so theory and code advance in tandem. Because Phase 0 does the derivations the old Month 1 was going to do (one-pole transfer function, z-transform, bilinear transform), **old Weeks 1–2 collapse into Phase 0** and Month 1 becomes a ~2-week "biquad" sprint.

**What changed in this revision:** every build-month day now carries an explicit, checkable **Deliverable:** (matching Phase 0's rigor), and the old multi-day ranges ("Days 2–4") are broken into individual days. Being honest about the day count added two weeks where five clean days never fit the work: **+1 week in Month 2** (JUCE onboarding is split so week one ends at a loaded pass-through *before* any parameter) and **+1 week in Month 4** (a dedicated reverb-polish week, since reverb reliably overruns). Every build week also gained a **Done when:** finish condition. Phase 0 also gained **Week 0.7, a 1-week buffer** — the theory phase previously had no slack at all, and its two hardest weeks (0.4, 0.5) live there; the buffer is the landing zone for their overrun and a spaced second pass otherwise. Month 6 also gained **three weeks** for what screens test but the build months never touch: Week 24 (C++ language depth, audio quantization/dither, the FFT algorithm), and two **target-conditional** weeks — Week 25 (fixed-point/Q-format + the SIMD hands-on) and Week 26 (the DSA/algorithms round). Those last two are **cuttable if you target boutique desktop-plugin shops** — fixed-point matters for embedded/DSP-firmware roles, and the DSA round for big-tech audio teams. Net timeline: **~8.5 months** instead of 6 (the Phase 0 buffer is flexible, and Weeks 25–26 are droppable by target); build weeks run 3→29.

**Assumes ~10 hrs/week = 5 study days × ~2 hrs.** Same as before.
**Starting point:** ECE degree, comfortable in C++; you've already done the WAV writer, oscillators, and aliasing note (old Week 1) — those stay done and feed Phase 0.
**Target (unchanged):** 2–3 polished JUCE plugins on GitHub + the depth to discuss real-time audio constraints in an interview.

> **On lecture numbers below:** verified against the OCW video-lectures page — 26 lectures, Lec 1 (Introduction) through Lec 26 (Feedback: the Inverted Pendulum). The numbers below are exact.

---

## Run these habits every week

- **Dev journal (`LOG.md`).** Unchanged. During Phase 0, log theory sessions too — suggest a `P1D1:` prefix (P for the theory phase) so they're distinct from your existing `W1D1:` entries.
- **Spaced-repetition deck (Anki, or plaintext `cards.md`).** New, Phase-0-specific. Each concept becomes a few *atomic* cards — recall prompts (*"Why does convolution in time equal multiplication in frequency?"*) and, in your derive-first spirit, **derivation-prompt cards** (front: *"Derive H(z) from y[n] = (1−a)x[n] + a·y[n−1]"*; back: the steps). **Start every study session with a ~5-min review of due cards, then add the day's new ones.** The scheduling is the whole point: a concept from Week 0.2 is still sharp at your Month-9 interviews instead of re-crammed.
- **Commit small + test as you go.** Add unit tests from the biquad onward (as before). Wire up GitHub Actions when your first unit tests land (**Week 4 Day 3**) to build + run them on every push, and extend it to plugin builds once you're in JUCE.
- **Measure, don't just listen.** You build the impulse→FFT harness *inside* Phase 0 now (Week 0.3), grounded in the DTFT lecture. Verify every filter against its design from then on.
- **Log planned vs actual.** Unchanged. Especially important through Phase 0 — the Fourier and Laplace/z weeks are where rust bites.
- **(If targeting big-tech audio teams) light DSA cadence.** From Month 5 on, do 2–3 algorithm problems per week in the background. DSA rewards spacing and can't be crammed — Week 26's dedicated round is a *pattern sweep on top of* this cadence, not a substitute for it. Skip this habit entirely if you're aiming at boutique plugin shops (they use DSP take-homes instead).

---

## Phase 0 — Theory Foundation (≈6 weeks + a 1-week buffer)
*Resource: MIT RES.6-007 (ocw.mit.edu). **Every lecture ships a problem set with full solutions** — those are your daily deliverables. Textbook pairing: Oppenheim & Willsky follows the course chapter-for-chapter; read the matching sections. **Rule: no day ends on "watched the video"** — each ends on a self-checked pset, a by-hand derivation, a batch of new flashcards, or committed code.*

**Priority note:** the modulation lectures (Wk 0.4 D1–D2) are the most skippable if tight — for those, the deliverable is a short written summary rather than a full pset. The feedback lectures (Wk 0.6 D3) can also be *skimmed* to a summary, but **don't cut the stability concept itself** — Weeks 14–15 (reverb) depend on it. Everything else is core-path.

### Week 0.1 — Signals, systems, LTI, convolution (Lec 1–6)
- **Day 1:** Lec 1–2 (intro; signals & systems). **Deliverable:** PS1–PS2 worked and self-checked against solutions; seed the deck with your first few cards (e.g., *"What makes a system LTI, and why does that property matter?"*).
- **Day 2:** Lec 3 + start Lec 4 (convolution). **Deliverable:** PS3 worked/checked; write the convolution-sum definition from memory with a one-line justification.
- **Day 3:** Lec 4–5 (convolution; LTI properties). **Deliverable:** one 3-tap convolution by hand, end to end; PS4–PS5 checked.
- **Day 4:** Code. **Deliverable:** a C++ `convolve()` with a passing test against your Day-3 hand example; committed.
- **Day 5:** Lec 6 (differential **and** difference equations — the difference-equation form is your recursive oscillator/filter). **Deliverable:** derive the impulse response of `y[n] = b0·x[n] + a1·y[n−1]` by hand; PS6 checked; LOG.
- **Done when:** you can say why an LTI system is fully described by its impulse response, and your `convolve()` matches the hand computation.

### Week 0.2 — Continuous-time Fourier (Lec 7–9)
- **Day 1:** Lec 7 (CT Fourier series). **Deliverable:** compute the Fourier-series coefficients of a square wave by hand; PS7 checked.
- **Day 2:** Lec 8 (CT Fourier transform). **Deliverable:** derive the transform of a rectangular pulse → sinc by hand; PS8 checked.
- **Day 3:** Lec 9 (FT properties). **Deliverable:** one card per key property (linearity, shift, scaling, **conv↔mult**, duality) — property on the front, one-line statement + proof sketch on the back.
- **Day 4:** Problem-set day (rust buffer). **Deliverable:** remaining PS7–PS9 problems worked, every miss re-worked to correct.
- **Day 5:** Code. **Deliverable:** a naive O(N²) DFT in C++; single-bin spike for a sine, and your saw/square WAV harmonics match Audacity. LOG.
- **Done when:** you can explain conv↔mult duality and your DFT locates a sine's frequency correctly.

### Week 0.3 — Discrete-time Fourier + filtering (Lec 10–12)
- **Day 1:** Lec 10 (DT Fourier series). **Deliverable:** DTFS of a short periodic sequence by hand; PS10 checked.
- **Day 2:** Lec 11 (DTFT — evaluated **on the unit circle**). **Deliverable:** derive the DTFT of a rectangular window; PS11 checked; add a card: *"How does the DTFT relate to the z-transform?"* → the unit-circle-slice answer.
- **Day 3:** Lec 12 (filtering). **Deliverable:** sketch ideal LPF/HPF/BPF magnitude responses and state why the ideal filter is non-causal; PS12 checked.
- **Day 4:** Code. **Deliverable:** the **measurement harness** — impulse in → transform the impulse response → plot |H(e^jω)|; pass-through reads flat. (The rig for the rest of the plan. Where the plan says "FFT," it means the **O(N²) DFT you built in Week 0.2** — that's the transform engine; a true radix-2 FFT is never required, though you can drop one in later if large-N measurements feel slow.)
- **Day 5:** Consolidate. **Deliverable:** any remaining PS10–12 closed; harness committed + LOG.
- **Done when:** the harness gives a sane magnitude response and you can articulate the DTFT as the unit-circle evaluation.

### Week 0.4 — Modulation + sampling (Lec 13–19)
- **Day 1:** Lec 13–14 (CT modulation + AM demo) — *skim.* **Deliverable:** one card covering AM (carrier, sidebands, coherent detection). No full pset.
- **Day 2:** Lec 15 (DT modulation) — *skim.* **Deliverable:** 3-line note on frequency-shifting and where it aliases.
- **Day 3:** Lec 16 (sampling theorem, Nyquist). **Deliverable:** state and sketch-prove the sampling theorem in your own words; PS16 checked. (The theory under `aliasing.md`.)
- **Day 4:** Lec 17–19 (interpolation; DT processing of CT; decimation/downsampling). **Deliverable:** PS17–PS19 key problems checked; write the "filter *before* you decimate, and why" note (the anti-aliasing-before-downsampling principle). *(The older "BLEP/oversampling" pointer is optional — none of the five planned plugins are oscillator-based, so treat band-limited synthesis as out of scope unless you later add an oscillator effect.)*
- **Day 5:** Code. **Deliverable:** aliasing fold-back confirmed numerically (tones above Nyquist measured against `f_s − f`); `aliasing.md` updated to cite the sampling theorem, not just the spectrogram. LOG.
- **Done when:** your measured aliased frequencies match the sampling-theorem prediction.

### Week 0.5 — Laplace + z-transform (Lec 20–22) — the payoff week
- **Day 1:** Lec 20 (Laplace; s-plane, poles/zeros, ROC). **Deliverable:** Laplace transform + ROC + pole/zero plot of a first-order system by hand; PS20 checked.
- **Day 2:** Lec 21 (CT second-order systems; resonance, Q). **Deliverable:** pole-pair diagrams for under/critical/over-damped, relating ζ and ω_n to pole location; PS21 checked. (Your biquad-Q intuition, early.)
- **Day 3:** Lec 22 (z-transform). **Deliverable:** z-transform + ROC + pole/zero of a first-order difference equation by hand; PS22 checked; add a card: *"What does moving off the unit circle in the z-plane buy you over the DTFT?"*
- **Day 4:** Derive + build. **Deliverable:** by hand, `y[n] = (1−a)x[n] + a·y[n−1]` → `H(z) = (1−a)/(1 − a·z⁻¹)`, pole at `z = a`; one-pole implemented in C++.
- **Day 5:** Verify. **Deliverable:** one-pole impulse response through the harness; the pole predicts the measured −3 dB point and rolloff. Commit + LOG. *(Closes the theory→measurement loop; completes old Week 2.)*
- **Done when:** your paper pole location matches the measured magnitude response.

### Week 0.6 — CT→DT mapping, Butterworth, feedback + consolidate (Lec 23–26)
- **Day 1:** Lec 23 (mapping CT→DT filters = the bilinear transform). **Deliverable:** re-derive the bilinear substitution on paper, showing the frequency warping; PS23 checked.
- **Day 2:** Lec 24 (Butterworth). **Deliverable:** derive the maximally-flat magnitude-squared response and the pole positions on the s-plane circle; PS24 checked.
- **Day 3:** Lec 25–26 (feedback) — *skim the lectures to a summary, but keep the concept.* **Deliverable:** one paragraph on feedback and stability (poles leaving the unit circle). **This is load-bearing for reverb** — revisit it before Week 14, where comb-filter feedback (gain ≤ 1) and recirculating-delay stability rest directly on it. Skim the video if tight; do not cut the idea.
- **Day 4:** Consolidation. **Deliverable:** every Phase-0 pset closed; a from-memory bilinear-transform derivation, no notes.
- **Day 5:** Full deck review + gap-fill. **Deliverable:** run a complete review pass; ensure every link in the chain — signal → convolution → Fourier → sampling → Laplace/z → poles/zeros → transfer function → filter — has at least one card you answer cold, plus derivation-prompt cards for the one-pole and the bilinear transform. This deck carries you to Month-6 interview prep. LOG.
- **Done when:** you can walk the full chain unaided and re-derive the bilinear transform from scratch.

### Week 0.7 — 🔧 Phase 0 buffer / consolidation
*The only slack in Phase 0. Its primary job is to absorb overrun from the two hardest weeks — 0.4 (overloaded by lecture count) and 0.5 (overloaded by derivation depth) — which have no catch-up elsewhere. If a block slipped, the slid psets/derivations/code land on the matching day below. If you're fully on track, the default is a **spaced second pass**: re-derive the load-bearing results cold, a day per block. Spacing (revisiting after a gap) is exactly what depth topics like the z-transform respond to, so this week is productive even when nothing slipped — don't skip it just because you're caught up. It can compress to 2–3 days if truly clean.*
- **Day 1:** Fourier block (Weeks 0.2–0.3). **Deliverable:** any slipped PS7–PS12 closed; else re-derive one CT result (rect → sinc) and one DT result (DTFT of a rectangular window) cold, no notes.
- **Day 2:** Sampling/modulation block (Week 0.4 — the lecture-dense week). **Deliverable:** any slipped PS16–PS19 or the 0.4 D5 aliasing code closed; else re-state and sketch-prove the sampling theorem cold and re-confirm the fold-back (`f_s − f`) against `aliasing.md`.
- **Day 3:** Laplace/z block (Week 0.5 — the depth week). **Deliverable:** any slipped PS20–PS22 or the one-pole code closed; else re-derive `H(z) = (1−a)/(1 − a·z⁻¹)` with its pole at `z = a` cold, and re-run the one-pole through the harness to reconfirm the −3 dB point.
- **Day 4:** CT→DT mapping block (Week 0.6). **Deliverable:** any slipped PS23–PS24 closed; else re-derive the bilinear substitution from scratch (frequency warping shown) with no notes, and re-derive the Butterworth pole placement.
- **Day 5:** Whole-chain gate. **Deliverable:** a single unaided pass down the full chain (signal → convolution → Fourier → sampling → Laplace/z → poles/zeros → transfer function → filter); every link has a card you answer cold; nothing from 0.1–0.6 is left open. LOG.
- **Done when:** no Phase-0 pset, derivation, or code item is still open, and you can walk the chain and re-derive both the one-pole and the bilinear transform from a blank page.

**✅ Phase 0 Checkpoint:** You can derive a filter's transfer function from its difference equation, place its poles, and predict its magnitude response — then confirm it with your own harness. The z-transform is no longer magic.

---
## Month 1 — Biquads (Weeks 3–4, compressed: theory is done)

> Old Weeks 1–2 (sampling/signals, one-pole) are **complete via Phase 0**. Pick up at Biquads. This month is ~2 weeks of real work.

### Week 3 — Biquads
*Resources:* RBJ Audio EQ Cookbook (coefficient reference); earlevel.com biquad series; Pirkle filter chapters.
- **Day 1:** Review the RBJ cookbook + Direct Form I vs II. **Deliverable:** a one-page note mapping the RBJ LPF transfer function to its five coefficients (b0, b1, b2, a1, a2), plus a two-line statement of the DF-I vs DF-II trade-off (state/delay count vs. numerical behavior). You already have the bilinear/z-transform grounding, so this is coefficient bookkeeping, not new theory.
- **Day 2:** Implement a `Biquad` class (DF-I) with LPF coefficients. **Deliverable:** the class low-passes a WAV audibly; compiles clean; committed.
- **Day 3:** Add HPF, peaking, and shelf coefficient sets. **Deliverable:** all four types behind one `setType`/`setParams` API; committed. (Peaking/shelf Q makes sense now — see Lec 21.)
- **Day 4:** Process a WAV through each type; measure with your Phase 0 harness. **Deliverable:** four `|H(e^jω)|` plots (one per type) from the impulse→FFT harness, saved to the repo.
- **Day 5:** Confirm measured response matches theory. **Deliverable:** `biquad-verification.md` recording each type's measured −3 dB / peak-gain point vs. its designed value; commit.
- **Done when:** each of the four measured responses lands on its designed corner/peak within tolerance.

### Week 4 — 🔧 Consolidate + push the biquad
*Resources:* Zavalishin, "The Art of VA Filter Design" (reinforcement — you've already derived the bilinear transform).
- **Day 1:** Skim Zavalishin against your own bilinear derivation. **Deliverable:** a 5-line note on where the TPT/VA framing (integrators, pre-warping) differs from Oppenheim's bilinear.
- **Day 2:** Finish unfinished types; fix Week-3 mismatches. **Deliverable:** every type's measured response now matches design; the Day-5 mismatch notes are closed.
- **Day 3:** Add unit tests **and wire up GitHub Actions**. **Deliverable:** passing tests for DC gain, Nyquist gain, and coefficient sanity across all four types, running in CI on every push (this is the CI habit the plan calls for — it extends to plugin builds later).
- **Day 4:** Write the README. **Deliverable:** `Biquad/README.md` walking transfer function → coefficients → code, with one response plot (you can write this cold now).
- **Day 5:** Push the clean, tested `Biquad`. **Deliverable:** tagged commit on GitHub; buffer.
- **Done when:** the repo builds, tests pass, and you can implement any biquad type from coefficients unaided.

**✅ Checkpoint:** Implement any biquad from coefficients and explain *why* it works from the z-transform up. WAV harness in hand.

---

## Month 2 — Real-time C++ + JUCE onboarding + Plugin #1 (Weeks 5–9)  ⚠️ tightest month
*(Theory is front-loaded, so no theory asides here. JUCE onboarding is split across two weeks — the single highest-value expansion, since going from zero to a parameterized plugin in one week is where first-timers stall.)*

### Week 5 — Real-time audio rules
*Resources:* Ross Bencina, "Real-time audio programming 101"; Timur Doumler real-time C++ talks; Renn-Giles & Rowland, "Real-time 101" (ADC).
- **Day 1:** Read Bencina's article. **Deliverable:** notes listing the audio-thread "don'ts" (no allocation, no locks, no I/O, no unbounded work) with a one-line *why* for each.
- **Day 2:** Study denormals + block (buffer) processing. **Deliverable:** a note on where denormals arise in IIR feedback and how FTZ/DAZ (or a tiny DC offset) kills them, plus a sketch of a block-processing loop.
- **Day 3:** Write your interview cheat-sheet. **Deliverable:** a committed one-page cheat-sheet on audio-thread constraints.
- **Day 4:** Refactor the biquad to a block-based, allocation-free API **and add denormal flushing at the root**. **Deliverable:** a `process(float* block, int n)` path with zero allocation **and denormals killed** (set FTZ/DAZ, or add a tiny anti-denormal DC offset in the feedback) — fix it here so every effect built on this filter inherits it, instead of rediscovering denormal CPU spikes at Week 16; compiles.
- **Day 5:** Verify allocation-free; build a minimal lock-free audio→UI channel. **Deliverable:** confirmed no heap traffic on the process path (inspection, or an overridden `operator new` counter in a test); **plus a single-producer/single-consumer lock-free value pass** (a `std::atomic`, or a small SPSC ring buffer) that safely carries a number from the audio thread to the UI — the exact mechanism your **Week 12 gain-reduction meter** and any later metering will reuse. Commit.
- **Done when:** the biquad runs block-based, allocation-free, and **denormal-safe** (a tail decaying into silence causes no CPU spike), and you have **one reusable lock-free audio→UI value pass**.

### Week 6 — JUCE setup & pass-through
*Resources:* Official JUCE tutorials; The Audio Programmer; MatKat / freeCodeCamp "Learn Modern C++ by Building an Audio Plugin."
- **Day 1:** Install JUCE 8 + toolchain; build and run AudioPluginHost / DemoRunner. **Deliverable:** DemoRunner runs locally; toolchain verified.
- **Day 2:** Create a plugin project via CMake; build it empty. **Deliverable:** an empty plugin that loads in AudioPluginHost.
- **Day 3:** Wire `processBlock` for clean pass-through. **Deliverable:** in == out pass-through, no clicks or denormals.
- **Day 4:** Map the processor/editor split and the JUCE build layout. **Deliverable:** a half-page note on `PluginProcessor` vs `PluginEditor` and where parameters live (prevents flailing in Weeks 7–8).
- **Day 5:** Load the pass-through in your target DAW; fix any build/format issues. **Deliverable:** the pass-through loads and passes audio in the DAW; commit.
- **Done when:** you can go from `cmake` to a loaded, audible pass-through in your DAW without notes.

### Week 7 — First parameter (gain plugin)
*Resources:* Official JUCE tutorials; The Audio Programmer.
- **Day 1:** Declare a gain parameter with correct range/skew/units. **Deliverable:** the param appears in the DAW's generic editor with a sane range.
- **Day 2:** Apply gain in `processBlock`. **Deliverable:** gain audibly changes level across the block.
- **Day 3:** Add one slider in the custom editor bound to the param. **Deliverable:** the editor slider drives gain in the DAW. *(You wire this by hand now; Week 8's APVTS `SliderAttachment` replaces the hand-wiring — expected scaffolding, not wasted work.)*
- **Day 4:** Add `SmoothedValue` smoothing to gain. **Deliverable:** no zipper noise on fast slider moves; verified by ear and in a captured buffer.
- **Day 5:** Commit the gain plugin; short README. **Deliverable:** a working, documented gain plugin on GitHub.
- **Done when:** a parameter round-trips host → processor → audio, smoothed and artifact-free.

### Week 8 — Parameters via APVTS → single-band EQ
*Resources:* JUCE APVTS tutorials; The Audio Programmer; melatonin.dev.
- **Day 1:** Learn `AudioProcessorValueTreeState`; route the gain param through it. **Deliverable:** gain re-implemented via APVTS with host automation working.
- **Day 2:** Add freq / gain / Q parameters via APVTS. **Deliverable:** three automatable params with musically sensible ranges/skews.
- **Day 3:** Add smoothing to all three. **Deliverable:** smoothed freq/gain/Q; no clicks when automated fast.
- **Day 4:** Port the block-based biquad into `processBlock`, driven by the parameters. **Deliverable:** the biquad recomputes coefficients from the params per block; audio is filtered.
- **Day 5:** Single-band parametric EQ in a DAW. **Deliverable:** working single-band EQ committed; a response sweep tracks the param moves.
- **Done when:** moving freq/gain/Q in the DAW produces the matching measured response.

### Week 9 — 🔧 Catch-up (ship Plugin #1)
*Resources:* MatKat freeCodeCamp SimpleEQ course; melatonin.dev.
- **Day 1:** Duplicate the band into a 3-band chain. **Deliverable:** three serial bands, each independently controllable.
- **Day 2:** Add per-band type/enable selection. **Deliverable:** each band switchable (bell/shelf/HP/LP) with bypass, in the DAW.
- **Day 3:** Kill zipper noise / clicks; fix bugs; **add APVTS state persistence**. **Deliverable:** a clean pass over a written bug list (no audible artifacts under automation), **plus `getStateInformation`/`setStateInformation` wired through APVTS so the plugin remembers its settings across a project save/reload**. Without this, a "shipped" plugin forgets everything on reload — and this same ~3-line state block goes into *every* plugin you ship after this, so establish the pattern here.
- **Day 4:** Test loading in a 2nd DAW; verify state survives reload; write the README. **Deliverable:** loads in a second host **and restores its settings after a DAW reload**; README with build steps and a response screenshot.
- **Day 5:** Ship **Plugin #1 — multi-band EQ**. **Deliverable:** tagged GitHub release; buffer.
- **Done when:** the EQ loads in two DAWs, has no artifacts, and is documented well enough for a stranger to build.

**✅ Checkpoint:** Build a JUCE plugin from scratch, manage parameters correctly, explain the audio-thread rules cold.

---

## Month 3 — Delay, modulation, dynamics (Weeks 10–13)

### Week 10 — Delay lines
*Resources:* Pirkle delay chapters; earlevel.com on interpolation; The Audio Programmer delay tutorial.
- **Day 1:** Implement a circular buffer with correct wraparound. **Deliverable:** a tested ring buffer (write/read with correct wrap); unit test passes.
- **Day 2:** Add integer-sample delay; process audio through it. **Deliverable:** an audible fixed delay through the buffer; commit.
- **Day 3:** Add fractional delay with linear interpolation. **Deliverable:** sub-sample delay; a swept delay time glides without stepping.
- **Day 4:** Wrap in a JUCE plugin: time / feedback / mix. **Deliverable:** a delay plugin with the three params live in the DAW.
- **Day 5:** Test in a DAW; commit. **Deliverable:** committed delay plugin; feedback stays stable at gain ≤ 1.
- **Done when:** fractional delay is click-free on time changes and feedback behaves.

### Week 11 — Modulation from delay
*Resources:* Pirkle modulation chapters; The Audio Programmer chorus/flanger tutorials.
- **Day 1:** Implement an LFO (sine / triangle). **Deliverable:** an LFO producing both shapes at a set rate; verified.
- **Day 2:** Modulate short delay time with the LFO. **Deliverable:** an audible chorus/flanger sweep from the modulated delay.
- **Day 3:** Add depth / rate / mix; choose a chorus or flanger voicing. **Deliverable:** three params plus a chosen voicing that sounds right.
- **Day 4:** Add allpass (or higher-order) interpolation for smoother modulated delay. **Deliverable:** reduced artifacts on fast modulation vs. the Day-2 linear version.
- **Day 5:** Chorus/flanger in a DAW; commit. **Deliverable:** committed modulation plugin.
- **Done when:** modulated delay is smooth (no zipper) across the full depth/rate range.

### Week 12 — Dynamics (compressor)
*Resources:* Pirkle dynamics chapter; Giannoulis, Massberg & Reiss, "Digital Dynamic Range Compressor Design — A Tutorial" (JAES).
- **Day 1:** Implement a peak envelope follower (attack/release one-poles — you built the one-pole in Phase 0). **Deliverable:** an envelope that tracks a test signal's peaks; plotted.
- **Day 2:** Add the gain computer (threshold / ratio); apply gain reduction. **Deliverable:** the static compression curve verified against a known input.
- **Day 3:** Add attack/release on the gain + makeup gain. **Deliverable:** time-varying gain reduction with sensible attack/release; makeup applied.
- **Day 4:** Add a soft knee; wrap as a plugin with params + a gain-reduction meter. **Deliverable:** a compressor plugin with a knee and a working GR meter.
- **Day 5:** Add oversampling around the nonlinear gain stage; compressor in a DAW; commit. **Deliverable:** committed compressor with a 2× oversampled gain path (`juce::dsp::Oversampling` is fine), plus a one-line note on *why* nonlinear/limiting stages need it — they generate harmonics above Nyquist that alias back down. This is the standard interview follow-up to "you built a compressor."
- **Done when:** the measured input/output curve matches the set threshold/ratio/knee.

### Week 13 — 🔧 Catch-up / push toward Plugin #2
- **Day 1:** Pick the strongest of delay / chorus / compressor — **this pick is Plugin #2**. **Deliverable:** a decision note plus a short punch-list of what Plugin #2 still needs.
- **Day 2:** Fix the top bugs on the chosen effect. **Deliverable:** the punch-list's correctness items closed.
- **Day 3:** Improve the sound / voicing. **Deliverable:** an audible improvement with a before/after capture.
- **Day 4:** Tighten parameters (ranges, skews, smoothing). **Deliverable:** every param musically ranged and smoothed.
- **Day 5:** Commit meaningful progress on **Plugin #2**. **Deliverable:** committed; buffer.
- **Done when:** the chosen effect is bug-free, well-ranged, and clearly closer to shippable.

**✅ Checkpoint:** Three working effects. Explain envelope detection and interpolation from memory.

---

## Month 4 — Reverb + ship Plugin #2 (Weeks 14–18)  ⚠️ reverb is the hard one
*(Reverb gets a dedicated polish week — the plan has always warned it overruns, so this is the second honest expansion rather than pretending it fits three build weeks. **Plugin #2 is the Month-3 effect you picked in Week 13**; the reverb built here is a separate track that becomes Plugin #3 in Month 5.)*

### Week 14 — Reverb theory & first comb
*Resources:* Freeverb source; Julius O. Smith, "Physical Audio Signal Processing" (Schroeder & FDN); Pirkle reverb chapter.
- **Day 1:** Study Schroeder reverb (comb + allpass); read the Freeverb source. **Deliverable:** a note diagramming Freeverb's comb/allpass topology and its delay lengths.
- **Day 2:** Implement a feedback comb filter. **Deliverable:** a single comb with adjustable delay/feedback; its impulse response shows the expected echo train.
- **Day 3:** Implement an allpass; chain parallel combs + series allpasses. **Deliverable:** the Schroeder/Freeverb block assembled; it produces a tail.
- **Day 4:** Wrap as a plugin; get a reasonable tail. **Deliverable:** a reverb plugin that loads and gives an audible (if metallic) tail.
- **Day 5:** Tune comb/allpass lengths; commit a basic reverb. **Deliverable:** committed basic reverb with tuned, mutually-prime delay lengths.
- **Done when:** you get a decaying, reasonably dense tail with no runaway feedback.

### Week 15 — Make it musical
- **Day 1:** Add damping (a lowpass in the comb feedback). **Deliverable:** high frequencies decay faster than lows; verified on the tail spectrum.
- **Day 2:** Add stereo (decorrelated left/right delay sets). **Deliverable:** a wide, decorrelated stereo tail.
- **Day 3:** Add a size/decay control mapped sensibly. **Deliverable:** one intuitive size (and/or decay) knob spanning small room → hall.
- **Day 4:** Add subtle modulation to reduce metallic ringing. **Deliverable:** audibly reduced ringing vs. Week 14; before/after capture.
- **Day 5:** A noticeably better reverb; commit. **Deliverable:** committed improved reverb.
- **Done when:** it sounds like a space, not a comb bank — smooth, damped, stereo.

### Week 16 — Reverb polish & control
- **Day 1:** Add pre-delay, dry/wet, and input filtering. **Deliverable:** a pre-delay and proper mix control, plus low/high cut on the reverb path.
- **Day 2:** Fix density/flutter problems (allpass tuning, extra diffusion). **Deliverable:** an audibly denser, flutter-free early tail.
- **Day 3:** Handle denormals in the feedback paths. **Deliverable:** no denormal CPU spikes when a tail decays into silence (verified).
- **Day 4:** Smooth and range-limit size/decay/mix. **Deliverable:** no zipper when automating reverb params.
- **Day 5:** A/B against a reference reverb; note gaps; commit. **Deliverable:** a short comparison note and a committed reverb.
- **Done when:** the reverb holds up in an A/B against a stock reverb on at least one source.

### Week 17 — Ship one (Plugin #2)
*Resources:* melatonin.dev; JUCE state/preset tutorials.
- **Day 1:** Finalize the Plugin #2 pick from Week 13 (your strongest delay / chorus / compressor); add smoothing everywhere it's missing. **Deliverable:** that plugin with all params smoothed.
- **Day 2:** Add presets (state save/load). **Deliverable:** preset save/restore survives a DAW reload.
- **Day 3:** Build a clean custom GUI. **Deliverable:** a presentable editor (not the generic one).
- **Day 4:** Add denormal handling; test in 3 DAWs. **Deliverable:** loads clean in three hosts; denormals handled.
- **Day 5:** Ship **Plugin #2** with README + release. **Deliverable:** a tagged release and a README with a screenshot.
- **Done when:** Plugin #2 loads in 3 DAWs, saves/restores state, and looks intentional.

### Week 18 — 🔧 Catch-up (reverb almost always overruns)
- **Day 1:** Close the top reverb gaps from the Week-16 A/B. **Deliverable:** the two worst A/B gaps addressed.
- **Day 2:** Fix any DAW-specific bugs from shipping. **Deliverable:** host-specific issues resolved.
- **Day 3:** Tighten CPU (avoid per-sample recompute; check tail cost). **Deliverable:** a measured CPU drop, or confirmation it's already cheap.
- **Day 4:** Final polish pass (defaults, a demo preset, edge cases). **Deliverable:** sane defaults plus one preset that shows the plugin off.
- **Day 5:** Commit reverb to a presentable state; buffer. **Deliverable:** committed; buffer.
- **Done when:** the reverb is portfolio-presentable with no known bug remaining.

**✅ Checkpoint:** Two shippable plugins + a working reverb.

---

## Month 5 — Plugin #3 + open source + portfolio (Weeks 19–22)

### Week 19 — Plugin #3
*Resources:* ChowDSP + airwindows source.
- **Day 1:** Choose #3 — the reverb you built in Month 4 is the natural pick (or a compressor, if that isn't already your Plugin #2), both meatier than the EQ; design one distinctive feature. **Deliverable:** a one-paragraph spec naming the distinctive feature and how you'll test it.
- **Day 2:** Build the core DSP. **Deliverable:** the core effect processes audio correctly (measured).
- **Day 3:** Build the distinctive feature. **Deliverable:** the feature works and is audibly/measurably present.
- **Day 4:** Integrate core + feature; first musical sound. **Deliverable:** the full effect runs end-to-end in a DAW.
- **Day 5:** Feature-complete Plugin #3; commit. **Deliverable:** committed, feature-complete #3.
- **Done when:** the distinctive feature works and the plugin is feature-complete.

### Week 20 — Polish #3
- **Day 1:** GUI. **Deliverable:** a clean custom editor.
- **Day 2:** Presets. **Deliverable:** preset save/load across a reload.
- **Day 3:** Smoothing / denormals / edge cases. **Deliverable:** artifact-free under automation and silence.
- **Day 4:** Multi-DAW testing. **Deliverable:** loads clean in 3 hosts; issues logged and fixed.
- **Day 5:** Ship **Plugin #3** with README. **Deliverable:** a tagged release and a README.
- **Done when:** Plugin #3 ships to the same bar as #1 and #2.

### Week 21 — Open source on-ramp
*Resources:* Surge XT repo + CONTRIBUTING guide; Surge XT Discord.
- **Day 1:** Clone and build Surge XT from source. **Deliverable:** a local Surge XT build that runs.
- **Day 2:** Join the Discord; read the contributing guide; run it locally. **Deliverable:** dev-setup notes; contributing rules understood.
- **Day 3:** Find a "good first issue"; reproduce it. **Deliverable:** the issue reproduced, with a note on the suspected cause.
- **Day 4:** Implement the fix. **Deliverable:** a local fix; the issue no longer reproduces.
- **Day 5:** Open the PR (or have it clearly in progress). **Deliverable:** an opened PR, or a WIP branch pushed.
- **Done when:** a real PR is open or demonstrably nearly there.

### Week 22 — 🔧 Catch-up / portfolio
- **Day 1:** Iterate on OSS review feedback. **Deliverable:** the first round of reviewer comments addressed.
- **Day 2:** Second OSS iteration / respond to re-review. **Deliverable:** the PR moved forward (approved, or next changes pushed).
- **Day 3:** Polish READMEs on Plugins #1–#2 (screenshots, build steps, feature lists). **Deliverable:** #1 and #2 READMEs presentable.
- **Day 4:** Polish README on Plugin #3 + the top-level profile. **Deliverable:** #3 README plus a pinned-repos/profile pass.
- **Day 5:** GitHub profile presentable with three documented plugins. **Deliverable:** three documented plugins visible; buffer.
- **Done when:** a stranger landing on your GitHub sees three buildable, documented plugins and an OSS contribution.

**✅ Checkpoint:** Three shippable plugins + one open-source contribution in motion.

---

## Month 6 — Interview prep + depth consolidation (Weeks 23–29)
*(The knowledge-building weeks (23–26) come before the timed drills and mocks (27–28). Weeks 25–26 are **target-conditional** — fixed-point/SIMD for embedded/DSP-firmware roles, DSA for big-tech audio teams — and can be cut for a boutique desktop-plugin path, shortening this month back toward five weeks. The DSP/real-time Q&A is easier than it looks because Phase 0 did the heavy lifting.)*

### Week 23 — Depth review (build a Q&A bank)
*Resources:* Bencina; Timur Doumler; Renn-Giles & Rowland (lock-free); ADC talks; **your own flashcard deck** (reviewed since Phase 0 — mine it for the written Q&A here).
- **Day 1:** Real-time constraints + denormals. **Deliverable:** written Q&A for the topic, mined from your deck.
- **Day 2:** Lock-free communication (atomics, FIFOs). **Deliverable:** written Q&A.
- **Day 3:** Filters / biquads / bilinear transform. **Deliverable:** written Q&A (lean on Phase 0 — you derived all of this).
- **Day 4:** Delay / interpolation / reverb / compressor internals. **Deliverable:** written Q&A.
- **Day 5:** Assemble the full bank. **Deliverable:** a consolidated Q&A-bank document.
- **Done when:** every core topic has answers you can deliver cold.

### Week 24 — C++ & audio-fundamentals depth
*Resources:* Timur Doumler & Fabian Renn-Giles real-time C++ talks (already on your list); cppreference for the language items; a standard reference on dither/noise-shaping; Cooley–Tukey for the FFT.
- **Day 1:** C++ object model. **Deliverable:** written Q&A plus short "what prints / what leaks / what dangles" snippets on RAII, the rule of 0/3/5, move semantics, and unique/shared/weak pointers — each answerable cold.
- **Day 2:** C++ traps & cost model. **Deliverable:** Q&A on common undefined behavior, const-correctness, virtual-dispatch cost (vtables), and why parts of the standard library and JUCE aren't real-time-safe (allocation, `std::stable_sort`, `AudioBuffer::setSize`) — tied back to the audio-thread rules from Week 5.
- **Day 3:** Quantization & the "numbers" of audio. **Deliverable:** a one-page note + cards on bit depth ↔ dynamic range (~6.02·N + 1.76 dB), dBFS vs dBSPL, quantization error, dither (why, and TPDF), and noise shaping.
- **Day 4:** The FFT algorithm. **Deliverable:** derive radix-2 Cooley–Tukey (decimation-in-time) — butterflies, bit-reversal, O(N log N) — and implement a small radix-2 FFT, verified bin-for-bin against your Week 0.2 DFT on the same input. (Optional: drop it into the measurement harness so "FFT" is finally a real FFT.)
- **Day 5:** Fold into the bank + cards. **Deliverable:** all four topics added to the Week 23 Q&A bank, with derivation-prompt cards (rule of five, dither rationale, FFT butterfly, bit-depth↔dB); each answered cold.
- **Done when:** you can whiteboard the rule of five, explain dither and bit-depth-to-dB, and walk the radix-2 FFT — none of them cold-start gaps.

### Week 25 — Low-level & fixed-point depth  *(conditional: embedded / DSP-firmware targets)*
*Skip this week for pure desktop-plugin roles (they're float/double). Keep it if you're aiming at embedded audio, DSP chips, or hearing-aid/firmware work — fixed-point is tested hard there. It also finally makes the SIMD hands-on real rather than read-only.*
*Resources:* a Q-format primer (TI fixed-point docs are good); your own one-pole/biquad code; an intrinsics guide or `juce::dsp::SIMDRegister`.
- **Day 1:** Fixed-point fundamentals. **Deliverable:** a note + cards on Q-format (e.g. Q15), converting float↔fixed (scale by 2¹⁵, round vs. truncate), and where precision is lost.
- **Day 2:** Overflow, saturation, MAC. **Deliverable:** Q&A + a tiny code demo of wraparound vs. saturating arithmetic and multiply-accumulate; state the fixed-vs-float trade-off (range/precision/headroom, determinism, hardware cost).
- **Day 3:** Fixed-point reimplementation. **Deliverable:** reimplement your one-pole (or biquad) in Q15 with saturation; verify its output against the float version through the harness within tolerance.
- **Day 4:** SIMD hands-on. **Deliverable:** vectorize one hot loop (the biquad, or a gain/mix loop) with intrinsics or `juce::dsp::SIMDRegister`; **measure** the speedup vs. scalar.
- **Day 5:** Consolidate + cards. **Deliverable:** fixed-point and SIMD folded into the Q&A bank (Q15 conversion, saturation, MAC, when SIMD helps and when it doesn't); each answered cold.
- **Done when:** you can convert float↔Q15 and reason about overflow/saturation cold, and you have one fixed-point reimplementation plus one SIMD-vectorized loop with measured numbers.

### Week 26 — DSA / algorithms round  *(conditional: big-tech audio teams)*
*Skip for boutique plugin shops (they screen with DSP take-homes, not LeetCode). Keep it if you're targeting large audio teams (Apple, Google, etc.) that fold in a standard algorithms round. **One week is a pattern sweep, not a from-zero cure** — it assumes the light DSA cadence from the weekly habits, ideally started back in Month 5.*
*Resources:* a pattern-based resource (NeetCode roadmap or Cracking the Coding Interview); your strongest language.
- **Day 1:** Arrays / strings / hashing — two-pointers, sliding window. **Deliverable:** a batch of problems worked; approach + time/space complexity logged for each.
- **Day 2:** Linked lists / stacks / queues, then trees + BFS/DFS. **Deliverable:** a batch worked; logged.
- **Day 3:** Sorting + binary search, then heaps / intervals. **Deliverable:** a batch worked; logged.
- **Day 4:** Recursion / backtracking + intro dynamic programming. **Deliverable:** a batch worked; logged.
- **Day 5:** Timed mixed set under interview conditions. **Deliverable:** a timed set completed; a one-page Big-O cheat-sheet for the common structures/operations.
- **Done when:** you recognize the common patterns on sight and state time/space complexity cold (on top of the ongoing cadence — don't expect mastery from one week alone).

### Week 27 — Implement from scratch, timed
- **Day 1:** Biquad from memory, timed. **Deliverable:** a from-scratch biquad inside your time box; time logged.
- **Day 2:** Delay line with interpolation, timed. **Deliverable:** timed implementation; logged.
- **Day 3:** Envelope follower, timed. **Deliverable:** timed; logged.
- **Day 4:** One-pole + an oscillator, timed. **Deliverable:** timed; logged.
- **Day 5:** Re-run your weakest two under time pressure. **Deliverable:** the two slowest redone faster; logged.
- **Done when:** each core primitive is implementable from memory inside the time box.

### Week 28 — Mock interviews + project walkthroughs
- **Day 1:** Write a 5-min demo script for Plugin #1. **Deliverable:** a written, rehearsed script.
- **Day 2:** Same for Plugin #2. **Deliverable:** a script.
- **Day 3:** Same for Plugin #3. **Deliverable:** a script.
- **Day 4:** Mock DSP technical screen; log the gaps. **Deliverable:** a gap list from the mock.
- **Day 5:** Mock behavioral + architecture walkthrough; log the gaps. **Deliverable:** a gap list.
- **Done when:** you can demo all three plugins and survive a DSP screen.

### Week 29 — 🔧 Catch-up / apply
- **Day 1:** Fill the gaps surfaced in Week 28. **Deliverable:** the logged gaps closed.
- **Day 2:** Finalize resume + portfolio links. **Deliverable:** resume and links done.
- **Day 3:** First application batch. **Deliverable:** applications sent to your top target companies.
- **Day 4:** Second application batch + tailored notes. **Deliverable:** the rest of the target list applied to.
- **Day 5:** Buffer. **Deliverable:** buffer / follow-ups.
- **Done when:** applications are out and you can walk your portfolio confidently.

**✅ Checkpoint:** Pass a DSP technical screen and walk through your portfolio confidently.

---

## Where you'll realistically fall behind (revised)

1. **Phase 0 is a real ~7-week commitment** (six content weeks + the 0.7 buffer). The Fourier week (0.2) and the Laplace/z week (0.5) are where rust bites — budget the problem-set days fully. Week 0.7 exists to absorb their overrun, so slide slipped work into it rather than compressing the derivations. If you slip further, cut the modulation lectures (0.4 D1–D2) first — they're the least load-bearing for the plugin path. Keep the feedback/stability summary (0.6 D3); reverb (Weeks 14–15) depends on it.
2. **The upside:** old Month 1's math risk is now *retired* — you'll hit biquads and the bilinear transform already understanding them. That's why Month 1 compresses to two weeks.
3. **Month 2 is still the danger zone,** even with the extra week. JUCE onboarding + build system + a parameterized EQ is a lot; the Week 6/7 split (setup+pass-through, *then* the first parameter) is there to keep week one from collapsing. Treat Week 9's catch-up days as already spent.
4. **Reverb (Month 4) will still fight you** — Week 16 is now an explicit polish week rather than borrowed catch-up time. Accept "decent" over "great" and move on.
5. **"Shippable" costs 2–3× the build.** The ship days (Weeks 9, 17, 20) are the optimistic ones.
6. **Open source can slip without hurting you.** Deprioritize Week 21 if behind — it's a credibility bonus, not a gate.
7. **Weeks 25–26 are target-conditional, not core.** If you land on a boutique desktop-plugin target, cut the fixed-point/SIMD week (25) and the DSA round (26) outright — that pulls the plan back toward ~8 months. Only the embedded/DSP-firmware path needs fixed-point; only big-tech audio teams gate on DSA. Decide your target before Month 6 so you're not prepping for a screen you won't face.

---

## Pset triage prompt (paste-in when a problem set is too long)

*Use when a lecture's problem set is more than a ~2-hour day can hold. Paste this prompt plus the problem statements — solutions aren't needed (you self-check with those). It returns a keep/optional/skip cut list that deletes redundant drill without touching the load-bearing concepts. Best on rust-buffer and consolidation days; it barely helps the two hardest weeks (0.4 is overloaded by lecture count, 0.5 by derivation depth — different valves).*

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
