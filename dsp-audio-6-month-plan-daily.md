# DSP / Audio Software — Revised Plan (Theory-First, ~7 Months)

**What changed:** A 6-week **Phase 0 — Theory Foundation** is prepended, working through MIT RES.6-007 (Oppenheim's *Signals and Systems* video course) from Lecture 1, paired with light C++ so theory and code advance in tandem. Because Phase 0 does the derivations the old Month 1 was going to do (one-pole transfer function, z-transform, bilinear transform), **old Weeks 1–2 collapse into Phase 0** and Month 1 becomes a ~2-week "biquad" sprint. Net timeline: ~7 months instead of 6.

**Assumes ~10 hrs/week = 5 study days × ~2 hrs.** Same as before.
**Starting point:** ECE degree, comfortable in C++; you've already done the WAV writer, oscillators, and aliasing note (old Week 1) — those stay done and feed Phase 0.
**Target (unchanged):** 2–3 polished JUCE plugins on GitHub + the depth to discuss real-time audio constraints in an interview.

> **On lecture numbers below:** verified against the OCW video-lectures page — 26 lectures, Lec 1 (Introduction) through Lec 26 (Feedback: the Inverted Pendulum). The numbers below are exact.

---

## Run these habits every week

- **Dev journal (`LOG.md`).** Unchanged. During Phase 0, log theory sessions too — suggest a `P1D1:` prefix (P for the theory phase) so they're distinct from your existing `W1D1:` entries.
- **Spaced-repetition deck (Anki, or plaintext `cards.md`).** New, Phase-0-specific. Each concept becomes a few *atomic* cards — recall prompts (*"Why does convolution in time equal multiplication in frequency?"*) and, in your derive-first spirit, **derivation-prompt cards** (front: *"Derive H(z) from y[n] = (1−a)x[n] + a·y[n−1]"*; back: the steps). **Start every study session with a ~5-min review of due cards, then add the day's new ones.** The scheduling is the whole point: a concept from Week 0.2 is still sharp at your Month-9 interviews instead of re-crammed.
- **Commit small + test as you go.** Add unit tests from the biquad onward (as before). Wire up GitHub Actions once you hit real plugin code.
- **Measure, don't just listen.** You build the impulse→FFT harness *inside* Phase 0 now (Week 0.3), grounded in the DTFT lecture. Verify every filter against its design from then on.
- **Log planned vs actual.** Unchanged. Especially important through Phase 0 — the Fourier and Laplace/z weeks are where rust bites.

---

## Phase 0 — Theory Foundation (≈6 weeks)
*Resource: MIT RES.6-007 (ocw.mit.edu). **Every lecture ships a problem set with full solutions** — those are your daily deliverables. Textbook pairing: Oppenheim & Willsky follows the course chapter-for-chapter; read the matching sections. **Rule: no day ends on "watched the video"** — each ends on a self-checked pset, a by-hand derivation, a batch of new flashcards, or committed code.*

**Priority note:** the modulation lectures (Wk 0.4 D1–D2) and feedback lectures (Wk 0.6 D3) are the most skippable if tight — for those, the deliverable is a short written summary rather than a full pset. Everything else is core-path.

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
- **Day 4:** Code. **Deliverable:** the **measurement harness** — impulse in → FFT the impulse response → plot |H(e^jω)|; pass-through reads flat. (The rig for the rest of the plan.)
- **Day 5:** Consolidate. **Deliverable:** any remaining PS10–12 closed; harness committed + LOG.
- **Done when:** the harness gives a sane magnitude response and you can articulate the DTFT as the unit-circle evaluation.

### Week 0.4 — Modulation + sampling (Lec 13–19)
- **Day 1:** Lec 13–14 (CT modulation + AM demo) — *skim.* **Deliverable:** one card covering AM (carrier, sidebands, coherent detection). No full pset.
- **Day 2:** Lec 15 (DT modulation) — *skim.* **Deliverable:** 3-line note on frequency-shifting and where it aliases.
- **Day 3:** Lec 16 (sampling theorem, Nyquist). **Deliverable:** state and sketch-prove the sampling theorem in your own words; PS16 checked. (The theory under `aliasing.md`.)
- **Day 4:** Lec 17–19 (interpolation; DT processing of CT; decimation/downsampling). **Deliverable:** PS17–PS19 key problems checked; write the "filter *before* you decimate, and why" note (ties to your BLEP/oversampling plan).
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
- **Day 3:** Lec 25–26 (feedback) — *skim.* **Deliverable:** one paragraph on feedback and stability (poles leaving the unit circle), noting the link to reverb-feedback stability later.
- **Day 4:** Consolidation. **Deliverable:** every Phase-0 pset closed; a from-memory bilinear-transform derivation, no notes.
- **Day 5:** Full deck review + gap-fill. **Deliverable:** run a complete review pass; ensure every link in the chain — signal → convolution → Fourier → sampling → Laplace/z → poles/zeros → transfer function → filter — has at least one card you answer cold, plus derivation-prompt cards for the one-pole and the bilinear transform. This deck carries you to Month-6 interview prep. LOG.
- **Done when:** you can walk the full chain unaided and re-derive the bilinear transform from scratch.

**✅ Phase 0 Checkpoint:** You can derive a filter's transfer function from its difference equation, place its poles, and predict its magnitude response — then confirm it with your own harness. The z-transform is no longer magic.

---

## Month 1 — Biquads (compressed: theory is done)

> Old Weeks 1–2 (sampling/signals, one-pole) are **complete via Phase 0**. Pick up at Biquads. This month is ~2 weeks of real work.

### Week 3 — Biquads
*Resources:* RBJ Audio EQ Cookbook (coefficient reference); earlevel.com biquad series; Pirkle filter chapters.
- **Day 1:** Review the RBJ cookbook + Direct Form I vs II. (You already have the bilinear/z-transform grounding, so this is coefficient bookkeeping, not new theory.)
- **Day 2:** Implement a `Biquad` class (DF-I) with LPF coefficients.
- **Day 3:** Add HPF, peaking, and shelf coefficient sets. (The peaking/shelf Q makes sense now — see Lec 21.)
- **Day 4:** Process a WAV through each type; measure with your Phase 0 harness (impulse → FFT).
- **Day 5:** Confirm measured response matches theory for all four types. Commit.

### Week 4 — 🔧 Consolidate + push the biquad
*Resources:* Zavalishin, "The Art of VA Filter Design" (reinforcement — you've already derived the bilinear transform).
- **Day 1:** Skim Zavalishin against your own bilinear derivation; note where the audio-specific framing differs from Oppenheim's.
- **Day 2:** Finish any unfinished filter types; fix response mismatches from Week 3.
- **Day 3:** Add unit tests (DC gain, Nyquist gain, coefficient sanity).
- **Day 4:** Write the README (transfer function → coefficients → code — you can write this cold now).
- **Day 5:** Push the clean, tested `Biquad` to GitHub. Buffer.

**✅ Checkpoint:** Implement any biquad from coefficients and explain *why* it works from the z-transform up. WAV harness in hand.

---

## Month 2 — Real-time C++ + JUCE onboarding + Plugin #1  ⚠️ tightest month
*(Content unchanged — theory is front-loaded, so no theory asides here. Calendar shifts ~4 weeks later.)*

### Week 5 — Real-time audio rules
*Resources:* Ross Bencina, "Real-time audio programming 101"; Timur Doumler real-time C++ talks; Renn-Giles & Rowland, "Real-time 101" (ADC).
- **Day 1:** Read Bencina's article; take notes on the audio-thread rules.
- **Day 2:** Study denormals + block (buffer) processing.
- **Day 3:** Write your own one-page interview cheat-sheet on audio-thread constraints.
- **Day 4:** Refactor the biquad: remove allocation; convert to a block-based API.
- **Day 5:** Verify it's allocation-free on the process path. Commit.

### Week 6 — JUCE setup
*Resources:* Official JUCE tutorials; The Audio Programmer; MatKat / freeCodeCamp "Learn Modern C++ by Building an Audio Plugin."
- **Day 1:** Install JUCE 8 + toolchain; build and run AudioPluginHost / DemoRunner.
- **Day 2:** Create a plugin project via CMake; get it building empty.
- **Day 3:** Wire `processBlock` to pass audio through cleanly.
- **Day 4:** Add a gain parameter and one slider in the editor.
- **Day 5:** Load the gain plugin in a DAW; confirm the slider works. Commit.

### Week 7 — Parameters
*Resources:* JUCE APVTS tutorials; The Audio Programmer; melatonin.dev.
- **Day 1:** Learn `AudioProcessorValueTreeState`; route one parameter through it.
- **Day 2:** Add freq / gain / Q parameters via APVTS with correct ranges.
- **Day 3:** Add parameter smoothing (`SmoothedValue`).
- **Day 4:** Port the block-based biquad into `processBlock`, driven by the parameters.
- **Day 5:** Single-band parametric EQ working in a DAW. Commit.

### Week 8 — 🔧 Catch-up (Plugin #1)
*Resources:* MatKat freeCodeCamp SimpleEQ course; melatonin.dev.
- **Day 1:** Duplicate the band into a multi-band chain (e.g., 3 bands).
- **Day 2:** Add per-band type/enable selection.
- **Day 3:** Kill any zipper noise / clicks; fix bugs.
- **Day 4:** Test loading in a 2nd DAW; write the README.
- **Day 5:** Ship **Plugin #1 — multi-band EQ** to GitHub. Buffer.

**✅ Checkpoint:** Build a JUCE plugin from scratch, manage parameters correctly, explain the audio-thread rules cold.

---

## Month 3 — Delay, modulation, dynamics
*(Unchanged.)*

### Week 9 — Delay lines
*Resources:* Pirkle delay chapters; earlevel.com on interpolation; The Audio Programmer delay tutorial.
- **Day 1:** Implement a circular buffer with correct wraparound.
- **Day 2:** Add integer-sample delay; process audio through it.
- **Day 3:** Add fractional delay with linear interpolation.
- **Day 4:** Wrap in a JUCE plugin: time / feedback / mix.
- **Day 5:** Test in a DAW. Commit the delay plugin.

### Week 10 — Modulation from delay
*Resources:* Pirkle modulation chapters; The Audio Programmer chorus/flanger tutorials.
- **Day 1:** Implement an LFO (sine / triangle).
- **Day 2:** Modulate short delay time with the LFO (chorus/flanger range).
- **Day 3:** Add depth / rate / mix; choose a chorus or flanger voicing.
- **Day 4:** Add allpass interpolation for smoother modulated delay (if time).
- **Day 5:** Chorus/flanger plugin working in a DAW. Commit.

### Week 11 — Dynamics (compressor)
*Resources:* Pirkle dynamics chapter; Giannoulis, Massberg & Reiss, "Digital Dynamic Range Compressor Design — A Tutorial" (JAES).
- **Day 1:** Implement a peak envelope follower (attack/release one-poles — you built the one-pole in Phase 0).
- **Day 2:** Add the gain computer (threshold / ratio); apply gain reduction.
- **Day 3:** Add attack/release on the gain + makeup gain.
- **Day 4:** Add a soft knee; wrap as a plugin with params + a gain-reduction meter.
- **Day 5:** Compressor plugin working in a DAW. Commit.

### Week 12 — 🔧 Catch-up / push toward Plugin #2
- **Day 1:** Pick the strongest of delay / chorus / compressor.
- **Days 2–4:** Fix bugs, improve the sound, tighten the parameters.
- **Day 5:** Meaningful progress committed on **Plugin #2**. Buffer.

**✅ Checkpoint:** Three working effects. Explain envelope detection and interpolation from memory.

---

## Month 4 — Reverb + ship Plugin #2  ⚠️ reverb is the hard one
*(Unchanged.)*

### Week 13 — Reverb theory
*Resources:* Freeverb source; Julius O. Smith, "Physical Audio Signal Processing" (Schroeder & FDN); Pirkle reverb chapter.
- **Day 1:** Study Schroeder reverb (comb + allpass); read the Freeverb source.
- **Day 2:** Implement a feedback comb filter.
- **Day 3:** Implement an allpass; chain parallel combs + series allpasses.
- **Day 4:** Wrap as a plugin; get a reasonable-sounding tail.
- **Day 5:** Tune comb/allpass delay lengths. Commit a basic reverb.

### Week 14 — Make it musical
- **Day 1:** Add damping (a lowpass in the comb feedback).
- **Day 2:** Add stereo (decorrelated left/right delay sets).
- **Day 3:** Add a size/decay control mapped sensibly.
- **Day 4:** Add subtle modulation to reduce metallic ringing.
- **Day 5:** A noticeably better reverb. Commit.

### Week 15 — Ship one (Plugin #2)
*Resources:* melatonin.dev; JUCE state/preset tutorials.
- **Day 1:** Choose the plugin to ship; add smoothing everywhere it's missing.
- **Day 2:** Add presets (state save/load).
- **Day 3:** Build a clean custom GUI.
- **Day 4:** Add denormal handling; test in 3 DAWs.
- **Day 5:** Ship **Plugin #2** with README + release.

### Week 16 — 🔧 Catch-up (reverb almost always overruns)
- **Days 1–4:** Finish the reverb to a presentable state.
- **Day 5:** Commit reverb. Buffer.

**✅ Checkpoint:** Two shippable plugins + a working reverb.

---

## Month 5 — Plugin #3 + open source + portfolio
*(Unchanged.)*

### Week 17 — Plugin #3
*Resources:* ChowDSP + airwindows source.
- **Day 1:** Choose #3 (compressor or reverb — meatier than the EQ); design one distinctive feature.
- **Days 2–4:** Build the core + the distinctive feature.
- **Day 5:** Feature-complete Plugin #3. Commit.

### Week 18 — Polish #3
- **Day 1:** GUI.
- **Day 2:** Presets.
- **Day 3:** Smoothing / denormals / edge cases.
- **Day 4:** Multi-DAW testing.
- **Day 5:** Ship **Plugin #3** with README.

### Week 19 — Open source on-ramp
*Resources:* Surge XT repo + CONTRIBUTING guide; Surge XT Discord.
- **Day 1:** Clone and build Surge XT from source.
- **Day 2:** Join the Discord; read the contributing guide; run it locally.
- **Day 3:** Find a "good first issue"; reproduce and understand it.
- **Day 4:** Implement the fix.
- **Day 5:** Open the PR (or have it clearly in progress).

### Week 20 — 🔧 Catch-up / portfolio
- **Days 1–2:** Iterate on OSS review feedback.
- **Days 3–4:** Polish READMEs on all three plugins (screenshots, build steps, feature lists).
- **Day 5:** GitHub profile presentable with three documented plugins. Buffer.

**✅ Checkpoint:** Three shippable plugins + one open-source contribution in motion.

---

## Month 6 — Interview prep + depth consolidation
*(Unchanged in structure — but the theory Q&A is now much easier because Phase 0 did the heavy lifting.)*

### Week 21 — Depth review (build a Q&A bank)
*Resources:* Bencina; Timur Doumler; Renn-Giles & Rowland (lock-free); ADC talks; **your own flashcard deck** (reviewed since Phase 0 — mine it for the written Q&A here).
- **Day 1:** Real-time constraints + denormals — write Q&A.
- **Day 2:** Lock-free communication (atomics, FIFOs) — write Q&A.
- **Day 3:** Filters / biquads / bilinear transform — write Q&A. *(Lean on Phase 0 — you derived all of this.)*
- **Day 4:** Delay / interpolation / reverb / compressor internals — write Q&A.
- **Day 5:** SIMD basics; assemble the full Q&A bank.

### Week 22 — Implement from scratch, timed
- **Day 1:** Biquad from memory, timed.
- **Day 2:** Delay line with interpolation, timed.
- **Day 3:** Envelope follower, timed.
- **Day 4:** One-pole + an oscillator, timed.
- **Day 5:** Re-run your weakest two under time pressure.

### Week 23 — Mock interviews + project walkthroughs
- **Day 1:** Write a 5-min demo script for Plugin #1.
- **Day 2:** Same for Plugin #2.
- **Day 3:** Same for Plugin #3.
- **Day 4:** Mock DSP technical screen; log the gaps.
- **Day 5:** Mock behavioral + architecture walkthrough; log the gaps.

### Week 24 — 🔧 Catch-up / apply
- **Day 1:** Fill the gaps surfaced in Week 23.
- **Day 2:** Finalize resume + portfolio links.
- **Days 3–4:** Send applications to your target companies.
- **Day 5:** Buffer.

**✅ Checkpoint:** Pass a DSP technical screen and walk through your portfolio confidently.

---

## Where you'll realistically fall behind (revised)

1. **Phase 0 is a real 6-week commitment.** The Fourier week (0.2) and the Laplace/z week (0.5) are where rust bites — budget the problem-set days fully. If you slip, cut the modulation (0.4 D1–D2) and feedback (0.6 D3) lectures first; they're the least load-bearing for the plugin path.
2. **The upside:** old Month 1's math risk is now *retired* — you'll hit biquads and the bilinear transform already understanding them. That's why Month 1 compresses to two weeks.
3. **Month 2 is still the danger zone.** JUCE onboarding + build system + a finished EQ in three weeks is a lot. Treat Week 8's catch-up days as already spent.
4. **Reverb (Month 4) will still fight you.** Accept "decent" over "great" and move on.
5. **"Shippable" costs 2–3× the build.** The ship days (Weeks 8, 15, 18) are the optimistic ones.
6. **Open source can slip without hurting you.** Deprioritize Week 19 if behind — it's a credibility bonus, not a gate.
