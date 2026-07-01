# DSP / Audio Software — 6-Month Plan (Daily Deliverables + Resources)

**Assumes ~10 hrs/week = 5 study days × ~2 hrs.** Each month is 3 build weeks + 1 catch-up week. Catch-up days are real buffer — you *will* spend them (especially Months 2 and 4). If a day's deliverable takes two sittings, slide the rest down and lean on the catch-up week.

**Starting point:** ECE degree, comfortable in C++, no DSP implementation or JUCE yet.
**Target:** 2–3 polished JUCE plugins on GitHub + the depth to discuss real-time audio constraints in an interview.

---

## Run these habits every week

- **Dev journal (`LOG.md`).** Record what you built, bugs you hit, and how you fixed them. Your MinGW linker-subsystem fix and the `byte_rate`/`block_align` bug are exactly the "walk me through a hard bug you solved" stories interviewers ask for — capture them while they're fresh.
- **Commit small + test as you go.** Add unit tests from Week 3 onward. Wire up GitHub Actions to build the plugins on push — a green CI badge on an audio repo is rare and gets noticed.
- **Measure, don't just listen.** Keep the impulse→FFT / sine-sweep harness from Month 1 and verify every filter, EQ, and reverb against its design. "Here's the measured response matching theory" is a strong interview claim.
- **Log planned vs actual.** Note the real completion date next to each week; when you slip, write why. Keeps the plan honest and doubles as self-awareness you can speak to.

---

## Month 1 — DSP fundamentals + first biquad (plain C++, no framework yet)

### Week 1 — Sampling & signals
*Resources:* earlevel.com (oscillators & aliasing); WAV format spec at soundfile.sapp.org.
- **Day 1:** Write a WAV file writer in C++ (RIFF/fmt/data header + 16-bit PCM). Output 1s of silence; confirm it opens in an editor.
- **Day 2:** Generate a 440 Hz sine, write to WAV; verify pitch and level by ear and in an editor.
- **Day 3:** Add naive (non-bandlimited) saw and square oscillators; parameterize frequency.
- **Day 4:** Sweep the naive saw up past a few kHz; render and *listen for aliasing*. Write down what you hear.
- **Day 5:** Short note explaining why the aliasing happens (Nyquist / undersampling). Commit the generator.

### Week 2 — The math behind filters
*Resources:* Julius O. Smith, "Introduction to Digital Filters" (poles/zeros, transfer functions); earlevel.com one-pole posts.
- **Day 1:** Study z-transform, transfer functions, poles/zeros. Notes only.
- **Day 2:** Derive the one-pole lowpass difference equation from its transfer function, by hand.
- **Day 3:** Implement the one-pole LPF in C++; feed it an impulse, print the impulse response.
- **Day 4:** Run a sweep / white noise through it; confirm it attenuates highs as expected.
- **Day 5:** Tabulate or plot the frequency response; verify the −3 dB point ≈ your cutoff. Commit.

### Week 3 — Biquads
*Resources:* RBJ Audio EQ Cookbook (the coefficient reference); earlevel.com biquad series; Pirkle filter chapters.
- **Day 1:** Study the RBJ cookbook + Direct Form I vs II; understand the coefficient formulas.
- **Day 2:** Implement a `Biquad` class (DF-I) with LPF coefficients.
- **Day 3:** Add HPF, peaking, and shelf coefficient sets.
- **Day 4:** Process a WAV through each type; measure the response (impulse → FFT, or a sweep).
- **Day 5:** Confirm measured response matches theory for all four types. Commit.

### Week 4 — 🔧 Catch-up / consolidate
*Resources:* Zavalishin, "The Art of VA Filter Design" (bilinear transform & filter structures).
- **Day 1:** Re-derive the bilinear transform on paper until it's not magic.
- **Day 2:** Finish any unfinished filter types; fix response mismatches from Week 3.
- **Day 3:** Add unit tests (DC gain, Nyquist gain, coefficient sanity).
- **Day 4:** Write the README (transfer function → coefficients → code).
- **Day 5:** Push the clean, tested `Biquad` to GitHub. Buffer.

**✅ Checkpoint:** Implement any biquad from coefficients and explain why it works. WAV test harness in hand.

---

## Month 2 — Real-time C++ + JUCE onboarding + Plugin #1  ⚠️ tightest month

### Week 5 — Real-time audio rules
*Resources:* Ross Bencina, "Real-time audio programming 101"; Timur Doumler real-time C++ talks; Renn-Giles & Rowland, "Real-time 101" (ADC).
- **Day 1:** Read Bencina's article; take notes on the audio-thread rules.
- **Day 2:** Study denormals + block (buffer) processing.
- **Day 3:** Write your own one-page interview cheat-sheet on audio-thread constraints.
- **Day 4:** Refactor the biquad: remove allocation; convert to a block-based API.
- **Day 5:** Verify it's allocation-free on the process path. Commit.

### Week 6 — JUCE setup
*Resources:* Official JUCE tutorials; The Audio Programmer (YouTube + Discord); MatKat / freeCodeCamp "Learn Modern C++ by Building an Audio Plugin."
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
*Resources:* MatKat freeCodeCamp SimpleEQ course (multi-band EQ walkthrough); melatonin.dev (testing & shipping).
- **Day 1:** Duplicate the band into a multi-band chain (e.g., 3 bands).
- **Day 2:** Add per-band type/enable selection.
- **Day 3:** Kill any zipper noise / clicks; fix bugs.
- **Day 4:** Test loading in a 2nd DAW; write the README.
- **Day 5:** Ship **Plugin #1 — multi-band EQ** to GitHub. Buffer.

**✅ Checkpoint:** Build a JUCE plugin from scratch, manage parameters correctly, explain the audio-thread rules cold.

---

## Month 3 — Delay, modulation, dynamics

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
- **Day 1:** Implement a peak envelope follower (attack/release one-poles).
- **Day 2:** Add the gain computer (threshold / ratio); apply gain reduction.
- **Day 3:** Add attack/release on the gain + makeup gain.
- **Day 4:** Add a soft knee; wrap as a plugin with params + a gain-reduction meter.
- **Day 5:** Compressor plugin working in a DAW. Commit.

### Week 12 — 🔧 Catch-up / push toward Plugin #2
*Resources:* revisit the chapter for whichever effect you're pushing; no new reading.
- **Day 1:** Pick the strongest of delay / chorus / compressor.
- **Days 2–4:** Fix bugs, improve the sound, tighten the parameters on the chosen one.
- **Day 5:** Meaningful progress committed on **Plugin #2**. Buffer.

**✅ Checkpoint:** Three working effects. Explain envelope detection and interpolation from memory.

---

## Month 4 — Reverb + ship Plugin #2  ⚠️ reverb is the hard one

### Week 13 — Reverb theory
*Resources:* Freeverb source; Julius O. Smith, "Physical Audio Signal Processing" (Schroeder & FDN); Pirkle reverb chapter.
- **Day 1:** Study Schroeder reverb (comb + allpass); read the Freeverb source.
- **Day 2:** Implement a feedback comb filter.
- **Day 3:** Implement an allpass; chain parallel combs + series allpasses.
- **Day 4:** Wrap as a plugin; get a reasonable-sounding tail.
- **Day 5:** Tune comb/allpass delay lengths. Commit a basic reverb.

### Week 14 — Make it musical
*Resources:* JOS on allpass & FDN structures; Pirkle reverb chapter (continued).
- **Day 1:** Add damping (a lowpass in the comb feedback).
- **Day 2:** Add stereo (decorrelated left/right delay sets).
- **Day 3:** Add a size/decay control mapped sensibly.
- **Day 4:** Add subtle modulation to reduce metallic ringing.
- **Day 5:** A noticeably better reverb. Commit.

### Week 15 — Ship one (Plugin #2)
*Resources:* melatonin.dev (testing & shipping); JUCE state/preset tutorials.
- **Day 1:** Choose the plugin to ship; add smoothing everywhere it's missing.
- **Day 2:** Add presets (state save/load).
- **Day 3:** Build a clean custom GUI.
- **Day 4:** Add denormal handling; test in 3 DAWs.
- **Day 5:** Ship **Plugin #2** with README + release.

### Week 16 — 🔧 Catch-up (reverb almost always overruns)
*Resources:* reuse Weeks 13–14.
- **Days 1–4:** Finish the reverb to a presentable state.
- **Day 5:** Commit reverb. Buffer.

**✅ Checkpoint:** Two shippable plugins + a working reverb.

---

## Month 5 — Plugin #3 + open source + portfolio

### Week 17 — Plugin #3
*Resources:* ChowDSP + airwindows source (architecture patterns for a meatier plugin).
- **Day 1:** Choose #3 (compressor or reverb — meatier than the EQ); design one distinctive feature.
- **Days 2–4:** Build the core + the distinctive feature.
- **Day 5:** Feature-complete Plugin #3. Commit.

### Week 18 — Polish #3
*Resources:* melatonin.dev; JUCE GUI/graphics tutorials.
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
*Resources:* no new reading — polish and iterate.
- **Days 1–2:** Iterate on OSS review feedback.
- **Days 3–4:** Polish READMEs on all three plugins (screenshots, build steps, feature lists).
- **Day 5:** GitHub profile presentable with three documented plugins. Buffer.

**✅ Checkpoint:** Three shippable plugins + one open-source contribution in motion.

---

## Month 6 — Interview prep + depth consolidation

### Week 21 — Depth review (build a Q&A bank)
*Resources:* Bencina; Timur Doumler; Renn-Giles & Rowland (lock-free); ADC (Audio Developer Conference) talks.
- **Day 1:** Real-time constraints + denormals — write Q&A.
- **Day 2:** Lock-free communication (atomics, FIFOs) — write Q&A.
- **Day 3:** Filters / biquads / bilinear transform — write Q&A.
- **Day 4:** Delay / interpolation / reverb / compressor internals — write Q&A.
- **Day 5:** SIMD basics; assemble the full Q&A bank you can answer cold.

### Week 22 — Implement from scratch, timed
*Resources:* your own repos only — no references, by design.
- **Day 1:** Biquad from memory, timed.
- **Day 2:** Delay line with interpolation, timed.
- **Day 3:** Envelope follower, timed.
- **Day 4:** One-pole + an oscillator, timed.
- **Day 5:** Re-run your weakest two under time pressure.

### Week 23 — Mock interviews + project walkthroughs
*Resources:* your LOG.md and plugin repos (source your demo stories from them).
- **Day 1:** Write a 5-min demo script for Plugin #1.
- **Day 2:** Same for Plugin #2.
- **Day 3:** Same for Plugin #3.
- **Day 4:** Mock DSP technical screen (self or peer); log the gaps.
- **Day 5:** Mock behavioral + architecture walkthrough; log the gaps.

### Week 24 — 🔧 Catch-up / apply
*Resources:* target-company careers pages.
- **Day 1:** Fill the gaps surfaced in Week 23.
- **Day 2:** Finalize resume + portfolio links.
- **Days 3–4:** Send applications to your target companies.
- **Day 5:** Buffer.

**✅ Checkpoint:** Pass a DSP technical screen and walk through your portfolio confidently.

---

## Where you'll realistically fall behind

1. **Month 2 is the danger zone.** JUCE onboarding + build system + a finished EQ in three build weeks is a lot. Treat Week 8's catch-up days as already spent.
2. **Reverb (Month 4) will fight you.** Week 16's catch-up may not fully cover it — accept "decent" over "great" and move on.
3. **"Shippable" costs 2–3× the build.** The ship days (Weeks 8, 15, 18) are the optimistic ones.
4. **Open source can slip without hurting you.** If behind, deprioritize Week 19 — it's a credibility bonus, not a gate on interview readiness.
5. **Month 1 math could go either way.** ECE should let you accelerate Weeks 1–2; if signals is rusty, the z-transform and bilinear transform are where it bites.
