# Job Market Research: Audio DSP / Signal Processing

Compiled from live job postings researched across five sessions (July 2026). Purpose: validate the self-study plan's technical content against real hiring requirements, and identify near-term reachable roles vs. long-term targets.

Scope note: the original findings (1-7) cover the audio-DSP-algorithm market. Finding 8 and the six ECE-adjacent rows in the segment table extend the view to non-DSP audio engineering an ECE grad could enter, context for career optionality, not a change to the plan's scope.

**Companies covered:** an original DSP-focused pass covered 26 companies across seven segments (~30 roles; 5 checked with no relevant roles: Ableton, Roland, GM, BMW, Waymo). A later expanded pass (July 2026) added six ECE-adjacent, off-plan segments, firmware/pro-audio hardware, ASIC/mixed-signal IC design, transducer/loudspeaker design, automotive NVH, game-audio middleware, and codec/standards, drawn from a researcher-collected, search-surfaced sample of ~83 postings across ~40 employers. Segment role counts for those six are order-of-magnitude, not a census.

---

## Job market segments

| Segment | Companies (roles) | Degree gate pattern | Fit to `dsp-audio-plan.md` |
|---|---|---|---|
| Consumer audio majors | Bose (1), Harman (2, incl. 1 automotive role), Sonos (1), Apple (1), Dolby (1), Sennheiser (1), Bang & Olufsen (1): 7 companies, 8 roles | Split by company age/size, Bose and Dolby explicitly MS-or-years gated; Sonos and Harman's entry-level req are ungated | Strong, the core Phase 1 (stochastic DSP) + Phase 2 (real-time C++) content |
| Automotive | Tesla (3), Rivian/VW (1), Lucid Motors (3), Mercedes-Benz (1): 4 companies, 8 roles, plus Harman's Bangalore role counted above | Mixed, capture/enhancement roles senior-gated, rendering and test/validation roles largely ungated | Capture side on-plan (Phase 1 + Phase 3); rendering side off-plan (JUCE/AudioWeaver, only reachable via the CSUF/Faller bridge) |
| Semiconductor / chipmaker | Qualcomm (2 remaining), Analog Devices (1), Cirrus Logic (1): 3 companies, 4 roles | Senior-skewed except Cirrus Logic's structured new-grad/intern pipeline | Phase 1 + Phase 2 core, plus the ML-for-audio on-ramp (Week 15) |
| Big Tech | Google: 1 company, 2 roles | Staff- and PhD-gated | One role on-plan (Phase 2, embedded/Android audio); the generative-audio role is off-plan by design |
| DSP / plugin & music software | iZotope (1), Native Instruments (1), Universal Audio (1), Splice (1): 4 companies, 4 roles | Mostly ungated | Split, iZotope is on-plan (spectral/STFT overlap); the other three are off-plan (synthesis or generative, the cut JUCE track and the ML gap) |
| Hearing / medical device | Sonova / Advanced Bionics: 1 company, 1 role | Ungated | On-plan, Phase 1 + Phase 2, cochlear implant DSP |
| International (Japan pipeline) | Yamaha: 1 company, 1 role | New-grad + mid-career, but hiring runs through a Japan-based, Japanese-language pipeline | On-plan by content, not realistically US-accessible |
| Audio firmware / pro-audio hardware **(co-equal §)** | Sonos, Shure, Bose, Apple, QSC, Meyer Sound (~12 US roles + 2 intl, verified) | BS floor, with intern to junior to senior ladders (Sonos Junior R2728, BS+1yr); note Apple firmware is BS-gated but wants 6yr | ECE-adjacent, off-plan for the study plan. Firmware/embedded track (shares Phase 2 real-time C/C++). Primary-source depth strong (Sonos Workday, Apple P+) |
| Audio test / validation / QA **(co-equal §)** | Apple, Bose, Meta, Rivian, Garmin, Shure (~11 roles, verified) | BS gate, the most degree-open discipline as a function (B1); audio-specific full-time entry is intern-led and fall-cyclical (B2) | ECE-adjacent, off-plan. Test/QA track (TestRail, Python, Audio Precision). Primary-source depth thin (1 Apple P+, entry reqs seasonal) |
| Audio ASIC / mixed-signal IC design **(co-equal §)** | Cirrus Logic, Analog Devices, TI, Qualcomm, NVIDIA, Cadence, Apple intern (~13 US + 1 intl, verified) | **MS, not BS: every entry IC role gates on MS or PhD, and MS-0-2yr is the entry tier** (Cirrus Lever). Digital-RTL vs analog split | ECE-adjacent, off-plan. Digital-RTL track (Verilog, UVM, Synopsys). Primary-source depth strongest (Cirrus Lever, ADI Workday) |
| Transducer / loudspeaker / acoustics **(co-equal §, ECE-adjacent slice)** | Harman, Apple, Sonos, Klipsch, Premium Sound Solutions, Syntiant (~10 roles, verified) | BS-accessible (Apple, Harman EU) but US postings skew senior/principal; EE or ME or Physics or Materials | ECE-adjacent, off-plan. Native fit is the amp/DSP/measurement slice, not driver mechanics. Primary-source depth good (Harman ATS, 2 Apple P+) |
| Automotive NVH / acoustics **(appendix §)** | Bosch, Tesla, Ford, GM, Hyundai/KIA, Stellantis (~7 roles, verified) | BS/MS mech/acoustics, senior-skew; no visa sponsorship is segment-wide (GM, Hyundai/KIA, Bosch), though not a barrier for a US citizen | ECE-adjacent, off-plan. ME-native (structural dynamics), HEAD Acoustics/LMS tooling. **Appendix: ME-native plus senior-skew** |
| Game-audio middleware **(appendix §)** | Valve, Epic, Audiokinetic, Unity (~3-4 roles, 0 primary, verified) | Engineering side senior and structurally scarce (~1 audio programmer per studio); portfolio-weighted on the creative side only | ECE-adjacent, off-plan. Engine/systems track (C++, Wwise/FMOD). **Appendix: 0 primary roles, structurally scarce** |
| Audio codec / standards **(appendix §)** | Fraunhofer IIS, Dolby, Qualcomm, Stellantis (~7 roles, verified) | MS/PhD, core R&D PhD-gated; standards-body work (AES/MPEG) | ECE-adjacent, off-plan. Perceptual coding (AAC/xHE-AAC/EVS/MPEG-H). **Appendix: PhD-and-European gate, no PhD/relocation appetite** |

Across the ECE-adjacent segments, audio test/validation and IC digital design are the most new-grad-accessible entry points, with two corrections from the July 2026 depth pass. Test/validation is most accessible as a function (BS gate, high volume of postings), but audio-specific full-time entry is mostly intern-led and fall-cyclical rather than always-on (B1/B2). IC digital design is accessible at the MS 0-2yr tier, not BS, since every entry IC role gates on MS or PhD (Cirrus Lever). Both still sit well ahead of pure audio-DSP-algorithm roles, which remain the least entry-accessible and most credential-sensitive tier. Full verified sections for all seven ECE-adjacent disciplines appear below, after Finding 8.

---

## Finding 1: The invariant core is validated, repeatedly

Every posting except two (Qualcomm Staff Embedded, Native Instruments) requires **real-time embedded C/C++ plus some form of statistical or adaptive signal processing**, echo cancellation, noise reduction, array processing, or speech/audio enhancement. Qualcomm's own multimedia audio group description (from a 2016 recruiting post, still descriptive of the team) names it directly: *echo cancellation, noise reduction, array signal processing, acoustic enhancement, voice enhancement, active noise cancellation, voice activation.*

This confirms, independently, across a research lab, a chipmaker, three consumer-audio companies, a hearing-device company, a plugin company, two headphone/speaker manufacturers (Sennheiser, Bang & Olufsen), and Google's own Android/Pixel Audio team: **Phase 1 (stochastic DSP) and Phase 2 (filters/multirate/real-time C++) of the study plan are the correct foundation regardless of which specific company or program this leads to.**

## Finding 2: The real split is analysis/enhancement vs. synthesis, not speech vs. music

Initial hypothesis was "speech vs. music" as the discriminating axis. Closer reading of iZotope's product line (RX: de-noise, de-hum, spectral repair) shows this is wrong. RX runs on STFT-based spectral processing and noise-reduction gain estimation, structurally the same math as Bose's AEC or Qualcomm's speech enhancement, just applied to music instead of voice.

The real split is:
- **Analysis/enhancement** (Bose, Qualcomm, Apple, Sonos, Sonova, iZotope/RX): STFT, Wiener filtering, adaptive filtering, noise/echo/artifact removal. **Shares the plan's foundation directly.**
- **Synthesis** (Native Instruments/Kontakt, Reaktor, Maschine; Universal Audio/UAD, analog-hardware circuit emulation): oscillators, samplers, sequencers, nonlinear circuit modeling, sound design. Closer to the JUCE/plugin track that was cut from the plan in July 2026.

This means "music technology" is not one branch for planning purposes, it's two, and only one shares the current invariant core.

## Finding 3: Generative audio is a third category, not covered by the plan

Splice's AI & Audio Science team does not fit the analysis/enhancement-vs-synthesis split from Finding 2. VAEs, diffusion models, neural audio codecs, and transformer architectures for *generating* music are neither classical spectral enhancement (STFT/Wiener, the plan's Phase 3) nor classical synthesis (oscillators/samplers, the cut JUCE track). It's a third, ML-native discipline.

**Google confirms this isn't a Splice-only niche.** A Google Pixel Audio role names AudioLM, diffusion models, ML-based speech codecs, source separation, and audio enhancement research directly, the same category, at a much larger and more stable company, gated by publications (ICASSP, Interspeech, NeurIPS, ICML, ICLR) rather than being one team's specialty. Between Splice and Google, generative audio now has two independent confirmations spanning very different company types (startup and Big Tech), which is a stronger signal than either alone.

**A real gap, not a plan contradiction.** Phases 0-3 don't touch generative modeling, and were never meant to. Flagged for visibility at Week 16: if a program turns out generative-audio-heavy (UIC ECE 559, CSUF CPSC 585 both touch ML-for-audio), that's an explicit addition to the post-Week-16 block, not something the current phases cover.

A related find from the same round: a Tesla Audio DSP Algorithms Engineer posting (MVDR, GSC, multichannel Wiener, BSS, Kalman, adaptive filters) read almost like a paraphrase of the AEC/beamforming phase cut from the earlier plan. It turned out to be one of three Tesla roles, not an isolated find, see Finding 4.

## Finding 4: Automotive audio DSP is a real, distinct cluster, and it spans both sides of Finding 2's split

Tesla alone turned out to be three roles, not one, and Rivian/VW Group Technology confirms this isn't a Tesla quirk. Harman's Bangalore role belongs to the same cluster in hindsight, automotive DSP porting, MIPS/RAM budgeting. Lucid Motors makes it four companies: a genuine internship plus a full-time role, both doing acoustic echo reduction, noise reduction, and spatial audio in C/C++ on embedded hardware, the clearest capture/enhancement match of any automotive posting found. (GM, BMW, and Waymo turned up no audio-DSP-specific roles, genuine nulls. Waymo's absence has a plausible structural reason: it retrofits existing vehicle platforms rather than manufacturing proprietary in-cabin audio hardware, so a dedicated role is less likely to exist there. Mercedes has an Audio Engineering Lead role, but it's production/tuning leadership, closer to Lucid's separate Audio Hardware Engineer row.)

Unlike the analysis/enhancement-vs-synthesis split (Finding 2), automotive isn't a third branch alongside those two, it's a **domain that contains both sides of that split, applied to a vehicle cabin instead of a device or room**:
- Tesla's *Algorithms Engineer* role is squarely capture/enhancement (MVDR, GSC, Wiener, BSS, Kalman), the plan's current core.
- Tesla's *Infotainment* role is squarely playback/rendering, and it names **JUCE, Max/MSP, Audio Weaver, VST, Audio Unit** directly.

**JUCE was cut from the plan in July because nothing on the shortlist points at desktop plugins.** That reasoning still holds for every program, but not for every job target. Automotive in-cabin rendering is a real, named exception. This isn't grounds to reverse the cut (analysis/enhancement remains the broader, better-validated core across sixteen companies) but it's a genuine gap the cut created.

Two new named tools appear here that hadn't shown up anywhere else in this research: **AudioWeaver** (DSP Concepts' rapid-prototyping/tuning platform) and **A2B** (the automotive audio bus standard). Both are concrete, learnable, and specific to this domain, not generic "more DSP theory."

**Cross-reference against `dsp-audio-plan.md`:** the two sides of automotive map onto the plan differently.

*Capture/enhancement side (Tesla Algorithms, Rivian/VW Staff, Harman automotive):* covered cleanly. MVDR, GSC, multichannel Wiener filter, and adaptive filters are exactly Phase 1 (stochastic DSP) and Phase 3 (STFT), the same invariant-core content already validated by UIC/Corey in the Week 16 branch table. No new row needed: it's not a new academic specialization, it's another *industry* hiring for the same mic-array/enhancement skill set UIC already trains toward.

*Playback/rendering side (Tesla Infotainment):* not covered by Phases 0-3. The Week 16 table's CSUF/Faller row points partway at this, Faller's branch "builds directly on your existing JUCE room-acoustics project," and HRTF/binaural rendering (convolution-based, real-time, spatial) is structurally close to in-cabin spatial rendering. **CSUF/Faller is the one existing branch with a plausible bridge to automotive rendering work**, via shared JUCE lineage and convolution-based processing, not a confirmed fit (Faller's work is headphone HRTF, not loudspeaker arrays with AudioWeaver/A2B specifics), but closer than the UIC branch that answers the capture side.

Net: automotive doesn't need its own Week 16 row. The capture side is already answered by UIC/Corey; the rendering side has a weak but real bridge through CSUF/Faller that the table doesn't currently surface.

## Finding 5: Degree gates split roughly by company size/age, not by domain

Large, established companies (Bose, Qualcomm, Dolby) state explicit MS-or-years formulas. Newer or smaller companies (Sonos, iZotope, Native Instruments, Harman's entry-level Northridge req) state none, and Sonos explicitly welcomes "academic or project-based" experience as a substitute for industry years.

**Practical implication:** the self-study portfolio (artifacts, not job history) is a more direct match for the no-gate tier than for the MS-gated tier. The MS remains the unlock for Bose/Qualcomm/Dolby-tier reqs; the portfolio alone may be sufficient for Sonos/iZotope-tier reqs.

## Finding 6: Four rungs without an MS-or-years gate, on two different clocks

1. **Sonos, DSP Software Engineer, Player DSP**, IC1/IC2, 0-3 yrs, no degree gate, explicitly counts project-based experience. Best match for the self-study artifacts as-is. Two portable prep notes: they use **Rust and C** (not just C++), and they explicitly say applicants need not meet 100% of listed skills.
2. **iZotope, DSP Engineer (Intern or entry)**, Cambridge, MA. No stated gate. Explicit ask: C/C++, "understanding of digital signal processing." Given the RX/analysis-enhancement overlap (Finding 2), this is a stronger fit to the current plan than Native Instruments would be.
3. **Dolby, Acoustic Signal Processing Engineer ("Recent M.S. Graduates Welcomed")**, the one posting that names the MS-completion outcome directly in its title. Worth re-checking this specific req as graduation nears.
4. **Lucid Motors, Intern, Audio Algorithm and Signal Processing Software Engineer**, Newark, CA. Internship level, no stated gate beyond that. Content is a near-exact match to the plan's core: acoustic echo reduction, noise reduction, sound enhancement, spatial audio, C/C++ on embedded hardware. Found via the automotive cross-reference (Finding 4); folded in here because it breaks that cross-reference's original pattern, see below.

**Cross-reference against Finding 4:** checking each automotive role against this same reachability bar originally surfaced a real tension, the most gate-accessible role (Tesla Infotainment) was content-uncovered, while the content-matched role (Tesla Algorithms) carried a 5+ year gate. **Lucid's internship breaks that pattern**: gate-accessible and content-matched, the automotive equivalent of Sonos or iZotope, not a Tesla Infotainment-style exception.

Sorted by gate, full picture:
- Tesla Algorithms Engineer: 5+ yrs. **Not reachable.**
- Tesla Test/Validation: years not specified. Ambiguous.
- Rivian/VW Staff Audio DSP Engineer: Staff level. **Not reachable.**
- Harman automotive (Bangalore): 5-6+ yrs. **Not reachable.**
- Lucid Senior/Lead Audio Hardware Engineer: Senior/Lead, and a different discipline (hardware/tuning) besides. **Not reachable, and not content-matched either.**
- Tesla Infotainment: BS "or equivalent... exceptional abilities," no years stated. **Reachable, but off-plan**, JUCE/Audio Weaver/rendering content the plan doesn't build toward.
- **Lucid Intern (Audio Algorithm and Signal Processing): reachable *and* on-plan.**

Revised conclusion: automotive isn't uniformly split between "reachable but off-plan" and "on-plan but not reachable" as the first pass suggested, that split holds for Tesla and Rivian/VW, but Lucid's internship cuts across it, making it a genuine fourth rung alongside Sonos, iZotope, and Dolby.

See the Timeline reality check below (in the cross-reference section) for how these four rungs' actual near-term availability plays out against the plan's own calendar, the picture there supersedes any read of this finding as "options available now."

## Finding 7: The AES sponsor roster widens the automotive cluster and surfaces a measurement-instrumentation category no prior finding covered

Source: the sponsor roster of the AES automotive-audio conference (July 2026). It overlaps the prior four sessions heavily (Harman, Bose, Qualcomm, Sennheiser, DSP Concepts via AudioWeaver all reappear) and extends the picture four ways. Seven names were confirmed against live postings; everything else is characterized by company type and sponsor-roster presence, called out where it applies.

**A. The automotive cluster is wider than the Tesla/Rivian/Lucid/Harman/Mercedes set in Finding 4.** The roster adds Aptiv, Panasonic Automotive (Peachtree City, GA), QNX (BlackBerry's automotive RTOS), Hyundai Mobis, Aumovio, Pioneer, and Premium Sound Solutions. Verification caveat: these were confirmed as roster members with active careers pages, but the roles that surfaced skew toward embedded-systems and RTOS work (QNX/Linux/Android) rather than audio-algorithm derivation. They are not verified audio-DSP-algorithm reqs the way Tesla's Algorithms Engineer and Lucid's internship were. This reinforces rather than changes Finding 4's cross-reference conclusion on the capture side, and adds this: the domain is deep enough to treat as a primary target rather than a fallback.

**B. A new category the prior four sessions missed: acoustics and measurement instrumentation.** Klippel (Dresden), HEAD acoustics (Germany), Listen Inc. (Boston), Audio Precision and GRAS (under the Axiometrix umbrella, AP in Portland, OR), Müller-BBM (Germany), and CrySound (China). None of the existing findings covers this, it fits neither the analysis/enhancement-vs-synthesis split (Finding 2), the generative category (Finding 3), nor the automotive domain (Finding 4). It maps instead onto a part of the plan no finding had connected to a career: the Phase 0 measurement harness and the Week 15 STFT analysis tooling. Two prior postings in this document already list Audio Precision and Klippel R&D/QC as required tooling, so the names are worth knowing even in an algorithm role. Caveat: characterized by company type, not individually verified, and mostly Europe-based. Realistic US touchpoints are Audio Precision (Portland) and Listen (Boston); the rest require relocation abroad.

**C. Two clean net-new core-algorithm employers.** Analog Devices (Wilmington, MA) has verified audio-DSP roles naming audio signal processing and embedded ML, hardware-aware deployment, and a patent track, skewing senior. Cirrus Logic (Austin, TX) runs DSP-algorithm, ANC, and speaker-protection work and, unlike the Bose/Qualcomm/Dolby MS-or-years tier in Finding 5, operates a structured new-grad and intern pipeline recruiting from US and UK universities with explicit intern-to-full-time conversion, the counterexample to Finding 5's size/age pattern: a large, established chipmaker with an accessible graduate front door. A third Qualcomm role (Audio Systems DSP Engineer, San Diego) also surfaced this pass, naming ML models for audio alongside classic audio SP fundamentals, the in-state ML-for-audio complement to the two Qualcomm roles already logged.

**D. The ML/immersive/codec fringe of the roster.** Fraunhofer IIS (Erlangen, the mp3/AAC/MPEG-H research house, publication-weighted, audio coding/spatial research focus), Audiokinetic (Montreal, Wwise game-audio middleware, which sits on the synthesis/rendering side of Finding 2), GPU Audio, and COMSOL (acoustics simulation). Small specialty shops on the roster (Immersiv, Impulse Audio Lab, SPB Audio Lab, Audio Foundry) were noted but not individually chased and are unlikely first-job US targets.

**Anchor observation, connecting Finding 4 and the Week 16 branch table.** Harman Northridge is the single employer that rewards both candidate advisors' branches at once: arrays and beamforming for UIC/Corey, HRTF and binaural for CSUF/Faller, both named directly in Harman's own reqs (beamforming arrays, immersive audio, HRTF processing, ANC, ML methods), and it's roughly forty minutes from home. If one employer is used to reverse-engineer coursework and thesis choices, the evidence points at Harman Northridge, with Qualcomm San Diego as the in-state ML-for-audio complement.

**Cross-reference against `dsp-audio-plan.md`.** See Finding 4's cross-reference for the capture/rendering split; unchanged here. The one genuinely new plan connection is the measurement-instrumentation category: it is the first finding that makes the Phase 0 harness and the Week 15 analysis toolkit career-relevant rather than purely pedagogical. That is cross-cutting, not a program branch, so it belongs as a minor note at Week 16 (a measurement/test-engineering exit the harness discipline already partly serves) rather than as a new row.

European names were individually verified; only Fraunhofer IIS offers an MS-appropriate front door (intern/thesis route). The rest are hardware, instrumentation, or support roles, mostly requiring relocation.

## Finding 8: ECE-adjacent segments roughly double the reachable market, but sit off the DSP-algorithm track

The expanded July 2026 pass surfaced six segments the DSP-only findings missed entirely: audio firmware/pro-audio hardware, ASIC/mixed-signal IC design, transducer/loudspeaker design, automotive NVH, game-audio middleware, and codec/standards (see the segment table). Together they roughly double the number of reachable roles for an ECE grad with an MS, but every one of them is **off the DSP-algorithm track by definition.** They reward Phase 2's real-time C/C++ and embedded fundamentals (the firmware and IC-digital rows especially), but not Phase 1's stochastic core, which is what **Finding 1** identified as the thing validated everywhere. That "everywhere" now needs a boundary: the invariant core is validated across the DSP-*algorithm* market, not across the ECE-audio market as a whole, half of which (transducer, NVH, analog IC, codec) doesn't lean on stochastic DSP at all.

**New reachability rungs, extending Finding 6.** Finding 6's rungs were all DSP roles ranked by gate. The ECE-adjacent segments add rungs that sit *below* them in accessibility: audio test/validation (BS + measurement-tool familiarity + "ability to hear artifacts") and audio/mixed-signal IC digital design (Cirrus Logic's MS 0-2yr entry role) are more new-grad-accessible than any pure audio-DSP-algorithm role, which remain the least entry-accessible and most credential-sensitive tier in the whole sample. For an MS holder, these are doors that open immediately rather than after years.

**What this does and does not change.** It widens career optionality: if the algorithm-DSP track stalls, firmware/IC/test at an audio company are real MS-clears-the-bar entry points, and several (test, IC) can serve as an internal on-ramp toward a DSP team later. It is **explicitly not a signal to broaden `dsp-audio-plan.md`.** The plan stays scoped to the DSP-algorithm track it was built for; the ECE-adjacent segments are off-plan by definition, and folding their content (Verilog, COMSOL, NVH instrumentation, codec standards) into the study plan would rebuild exactly the kind of scope creep the plan was twice rewritten to remove. This finding is career-map context, not a plan input. **Update (July 2026 depth pass):** these six segments, plus audio test/validation as a seventh, were since verified to primary-source depth and written up as full sections immediately below. That does not soften this finding's point, which is about the *study plan's* scope: the plan stays narrow, while this research document now covers the ECE-adjacent disciplines as co-equal market coverage (firmware, IC, test/validation, and a scoped transducers section), with three demoted to an appendix (automotive NVH, game middleware, codec). Off-plan means off `dsp-audio-plan.md`, not off this document.

---

## ECE-Adjacent Audio Disciplines (verified depth, July 2026 pass)

Finding 8 introduced the six ECE-adjacent segments as career-map context. This section is the depth pass that verified them, plus audio test/validation as a seventh. Each was taken from the thin, aggregator-sourced Finding-8 treatment to individual-role, primary-source depth. The disciplines are covered here as market research, not study-plan scope: the plan stays on the DSP-algorithm track (Finding 8), while this document maps the adjacent doors an ECE-MS grad could actually walk through.

**Sourcing grades.** **P+** = full fetch of the live ATS page, complete JD, real req number. **P** = surfaced on the company's own ATS but read through a search snippet, not a full fetch. **A** = aggregator or mirror (Indeed, Glassdoor, Built In, Ladders, Soundlister). International roles are flagged inline; US-reachable roles were the priority.

**The co-equal vs appendix standard.** A discipline is co-equal if it clears roughly six verifiable roles and is genuinely reachable for the target profile: US-based, MS-terminal into industry, no PhD, no relocation. That reachability test, not global role existence, is why two disciplines that clear the raw count still sit in the appendix. It is the same standard throughout: judge the slice that applies to you.

**Snapshot caveat.** July 2026, one point in time. Postings rotate weekly, and entry-tier reqs concentrate in the fall. A pattern recurred through this pass: aggregators showed entry-level US reqs (Bose QA) that the companies' own live boards did not corroborate, which is exactly why primary grades outrank aggregator grades here.

### Firmware / embedded audio (co-equal)

The most new-grad-accessible discipline after test/validation, and the best-laddered: intern to junior to senior tracks are visible at Sonos, Shure, and Bose. BS is the floor. Skills map onto Phase 2 directly: C/C++, RTOS, embedded Linux, I2C/I2S/SPI, denormals and real-time-thread discipline, DSP fundamentals.

| Company | Title | Level | Gate | Src |
|---|---|---|---|---|
| Sonos | Junior Embedded SW Dev Engineer (R2728) | Entry | BS CS/CpE/EE + 1yr C/C++ | P |
| Sonos | Embedded SW Engineer, Audio (R1789) | Mid | BS, DSP fundamentals | P |
| Sonos | Senior Embedded SW Engineer, Audio (R2099) | Senior | BS, RTOS, Dolby/Atmos | P |
| Apple (Beats) | Firmware Engineer (200671374-0836) | Mid/Sr | BS EE/CE/CS + 6yr min, MS pref; C, ARM Cortex-M/R/A, I2C/SPI/UART, BLE; $150-278K | P+ |
| Shure | Engineer Associate Staff, Embedded Systems | Assoc/Mid | C/C++, embedded Linux | A |
| Shure | Senior Embedded SW Dev Engineer (wireless) | Senior | C/C++; no visa sponsorship | A |
| Bose | Senior Audio Embedded SW Engineer | Senior | C/C++, RTOS, cmake, GTest, I2C/I2S/SPI, BLE | A |
| Bose Professional | Senior Embedded SW Engineer (Mangalore), **intl** | Senior | 8+yr C/C++ | A |

The Apple req makes one distinction concrete: BS-accessible and entry-accessible are not the same. Apple's firmware floor is BS on paper but wants 6 years; Sonos's Junior req (R2728) is the cleaner true-entry anchor.

### Audio test / validation / QA (co-equal)

Settled as a two-part claim. **(B1)** As a *function*, test/validation is the most new-grad-accessible discipline: BS gate, high posting volume, lower technical barrier than deep systems C++ or RTL, and named new-grad programs. Supported at primary depth by Garmin's BS-gated Test Software Engineer 1 class. **(B2)** But *audio-specific* full-time entry is mostly intern-led and fall-cyclical, not a standing new-grad channel. The live audio-test roles at Shure and Apple skew senior, and entry into audio test runs through internships (Shure's Audio Test Engineering Intern; Apple's seasonal University Graduate) or through general entry test roles steered toward audio. Aggregator entry reqs (Bose Framingham QA) did not corroborate on Bose's live board.

| Company | Title | Level | Gate | Src |
|---|---|---|---|---|
| Apple (Beats) | Automation Engineer (200666875-3401) | Mid/Sr | BS/MS CS/CE/EE + 5yr; Python, firmware/algo/ML validation; $145-264K | P+ |
| Apple | Audio QA (AMT Perception Quality) | Entry/Mid | BS+ CS/CpE/Audio/EE | A |
| Apple | Hardware Test Engineer, University Graduate | New grad | new-grad program (seasonal) | A |
| Bose | Software QA Engineer (Lisbon), **intl** | Mid | BS + 2yr; BT/embedded validation, CI/CD | P+ (R28859) |
| Garmin | Test Software Engineer 1, **non-audio** | Entry | BS + academics; C/C++ | P (class confirmed; general device test) |
| Shure | Engineer Sr., Audio Test & Certification | Senior | objective+subjective audio QA; no sponsorship | A |
| Shure | Audio Test Engineering Intern | Intern | undergrad 2+yr or grad; Shure DSP algos | A (recurring; not live July 20) |
| Rivian | Sr Audio System QA Engineer | Senior | audio test automation | A |

### ASIC / mixed-signal IC design (co-equal)

**The gate correction that matters most for your targeting: MS, not BS.** Every entry IC role gates on MS or PhD; the entry tier is MS-0-2yr, which is your profile but is closed to BS-only candidates. This is stress-test verdict (A), confirmed: entry and new-college-grad digital-design reqs appear across Cirrus (explicit MS 0-2yr on Lever), TI, NVIDIA, ADI, and Apple's MS-intern tracks, so the pattern is real, not a single Cirrus posting. Two tracks: digital-RTL (Verilog, UVM, synthesis, timing; your fit) and analog/mixed-signal (transistor-level, PhD-leaning).

| Company | Title | Level | Gate | Src |
|---|---|---|---|---|
| Cirrus Logic | Entry Level Digital Design Engineer | Entry | **MS or PhD EE + 0-2yr**; Verilog, DSP coursework | P (Lever) |
| Cirrus Logic | Digital Design Engineer (RS-50021198) | Mid | MS; mixed-signal ASIC | P (Lever) |
| ADI | Senior Digital IC Design Engineer (R262357) | Senior | RTL, DSP blocks | P (Workday) |
| ADI | Principal Audio/DSP Systems Engineer (R262446) | Principal | ASIC, beamforming, NPU | P (Workday) |
| TI | ASIC Design Engineer, New College Grad 2026 | Entry | MS-leaning | A |
| NVIDIA | ASIC Design Engineer, NCG 2026 | Entry | MS-leaning | A |
| ADI | Digital Design Engineer (Istanbul), **intl** | Entry | RTL/SystemVerilog | A |
| Apple | Hardware Technologies Masters Internship | Intern | MS EE/CE; digital design/verif/AMS | P+ |

### Transducer / loudspeaker / acoustics (co-equal, ECE-adjacent slice)

Co-equal on count, but written around the ECE-adjacent slice, not the mechanical core. The discipline gate is genuinely multi-field (EE or ME or Physics or Materials), and the native role is mechanical and acoustic. The ECE-adjacent entry is the amplifier, DSP, and measurement side. BS-accessible (Apple, Harman Europe), but US postings skew senior/principal: the BS-level US door that exists is on the measurement/mechanical side (Apple's Boulder N&V), while the DSP-facing acoustics roles stay senior.

| Company | Title | Level | Gate | Src |
|---|---|---|---|---|
| Apple | Noise & Vibration Engineer (200640357-0365, Boulder) | Mid | **BS minimum** (ME typical, EE/Physics/Acoustics welcomed); anechoic, MEMS mic/receiver; $135-250K | P+ |
| Apple | Sr. Audio System Specialist (200632573-0836) | Senior | adv degree typical, 5+yr; ANC, adaptive EQ, spatial, DSP | P+ |
| Harman | Principal Engineer, Acoustic (#28327) | Principal | MS Acoustics + 7yr; FEA/BEM/COMSOL | P |
| Harman | Senior Engineer, Acoustic Systems (#20048, EU), **intl** | Senior | BS req, MS pref | P |
| Apple | Acoustics Transducer Engineer (Cupertino) | Mid | BS ME/Audio/EE/Materials, MS pref | A |
| Syntiant | MEMS acoustic transducer intern (Irvine) | Intern | student Physics/Materials/ME/EE | A |

Tools: COMSOL, SolidWorks, FEA/BEM, Klippel, Listen SoundCheck, Audio Precision.

### Cross-cutting: Apple MS internship pipelines, and a hearing-health note

Apple runs evergreen MS-level internship pipelines (US, MS EE/CE/ECE) that are the entry door into several of these disciplines at once. The Hardware Masters internship carries an explicit Audio/Acoustics track (speaker/mic design, noise and vibration, hearing health, psychoacoustics, audio feature design in SW and ML); the Hardware Technologies internship carries digital design, verification, and analog/mixed-signal (IC); the ML/AI internship names ML for speech and multimodal sensing. These are pipeline listings, not single reqs, and internships not full-time roles, but for an incoming MS they are the confirmed conversion route into firmware, IC, and acoustics. Cadence note: Apple posts new-grad full-time roles team-by-team, concentrated in fall (roughly September to December), so mid-summer is a trough.

Separately, one role outside the discipline taxonomy is worth flagging: Apple's **Hearing Health Technologist** (200662631-0836, Cupertino; MS/PhD; hearing science plus audio SP plus psychoacoustics; $150-278K), the team behind the AirPods Pro Hearing Test and Hearing Aid features. It is a close industry analog to the CSUF/Faller hearing-aid thesis anchor (Mane 2018), evidence that the hearing-aid slice of audio DSP has a well-paid US MS-level landing spot, not only an academic one.

### Appendix: disciplines that clear the count but not the reachability standard

Each below clears roughly six roles globally but is demoted for the target profile, on the same reachability standard used throughout.

**Automotive NVH / acoustics.** Demotion reason: ME-native (structural dynamics, vibration), not ECE, and US postings skew senior. The visa finding is real but not personal: no sponsorship is segment-wide across OEMs (GM and Hyundai/KIA state it explicitly, matching Bosch), which would gate a non-citizen but does not gate you. The ECE-adjacent way in is only the sound-quality and in-car-audio slice, which overlaps Harman automotive more than classic NVH. Tooling: HEAD Acoustics ArtemiS, LMS Test.Lab, Rotec. Geography clusters in the Detroit metro plus some California.

**Game-audio middleware.** Demotion reason: zero primary roles found, and the engineering side is structurally scarce (roughly one dedicated audio programmer per studio, per Berklee) and senior. The degree-loose, portfolio-weighted accessibility the segment is known for applies to the *sound-designer* creative track, which is not the ECE-adjacent role. The audio-programmer engineering track is C++/DSP, senior, and thin; current entry points seen were internships, several non-US (Audiokinetic Canada, Amazon Taiwan).

**Codec / compression / standards.** Demotion reason: the depth is PhD-gated and the primary-source depth is European. Fraunhofer IIS (home of MP3, AAC, xHE-AAC, EVS, MPEG-H) gates on MS/PhD and research, and its AudioLabs is PhD/postdoc. The two conditions that would have promoted it, openness to a PhD or willingness to relocate to Europe, are both no. US productization exists at Dolby (Sunnyvale, SF, Atlanta, Burbank) and Qualcomm (San Diego), but the US-only audio-codec slice alone is thin. Standards-body involvement is real (AES coding committee, MPEG). Reversible: promote to co-equal only if the PhD or relocation stance changes.

---

## Cross-reference: this research × `dsp-audio-plan.md`

Findings 6×4 and 4×plan already cross-referenced specific pairs. This pass covers what those two left open: a direct Phase-to-finding content mapping, the generative-audio gap (Finding 3), and a timeline reality check on the near-term rungs (Finding 6) against the plan's own calendar.

### Phase-level content mapping

| Plan phase | Content | Which finding(s) it validates |
|---|---|---|
| Phase 0 (deterministic theory) | Convolution, Fourier, sampling, z-transform | Universal, underlies everything in Finding 1, not specific to any single company |
| Phase 1 (stochastic DSP) | Random processes, PSD, Wiener filter, linear prediction | **Finding 1**, directly. This is the content every analysis/enhancement posting names, Bose's AEC, Qualcomm's adaptive filtering, Tesla's Algorithms Engineer (Finding 4), Sonova's enhancement stack. Adaptive filtering itself is the highest-frequency named technique the core defers to the Week 16 UIC branch; as of the July 2026 skill tally it is seeded (Wiener → LMS → NLMS derivation, no build-out) in the plan's Week 7 buffer |
| Phase 2 (filters, multirate, real-time C++) | Biquads, FIR, polyphase, audio-thread rules | **Finding 1**, directly. This is also the half of Finding 4 that automotive's embedded targets (ADI ADSP, HiFi Core, Hexagon, TI C55x/C66x) sit on top of |
| Phase 3 (STFT) | Windowing, COLA, spectral analysis tooling | The analysis/enhancement side of **Finding 2**. iZotope's RX (spectral repair) and the frequency-domain half of every AEC/NR posting run on this |
| *(not in plan, cut July 2026)* | JUCE, VST, plugin frameworks | The synthesis side of **Finding 2** (Native Instruments, Universal Audio) and the rendering side of **Finding 4** (Tesla Infotainment). Confirmed gap, not accidental, the cut's reasoning was explicit and (mostly) still holds |
| *(not in plan, never was)* | Generative models, VAEs, diffusion, neural codecs | **Finding 3**. No phase touches this; see below |

Net: Phases 0-3 map cleanly onto the *larger* of the two Finding 2 branches (analysis/enhancement) and the *larger* of the two Finding 4 branches (automotive capture). The plan was never trying to cover synthesis or generative work; this table just makes that explicit.

### Closing Finding 3's open item: generative audio and the branch table

The open item asked whether generative audio shows up in any shortlisted program's coursework. Checking the two remaining named electives directly: **UIC ECE 559** is titled *Neural Networks*, and CSUF's **CPSC 585** is *Neural Networks, Deep Learning, and Reinforcement Learning*, both read as general/discriminative deep learning (classification, regression, representation learning), not generative-modeling-specific (no VAE/diffusion/codec framing in either title). Neither course description available to this research names generative audio explicitly.

**KAIST/MACLab was the one branch where this could plausibly have been a real overlap, but KAIST is no longer under consideration.** With KAIST off the shortlist, no remaining program branch has a clear generative-audio angle.

Conclusion: generative audio stays an acknowledged gap, but no longer maps to any open branch-table question, no remaining program row could plausibly attach to it. If it becomes a real target, it would need an explicit addition to the post-Week-16 block, built outside the current shortlist, not something a remaining elective quietly covers.

### Timeline reality check: Finding 6's rungs against the plan's own calendar

Finding 6 called Sonos, iZotope, Dolby, and Lucid "reachable rungs," but reachable relative to *those postings' own gates* (0-3 years, internship-level, no degree), not relative to where the plan actually puts you on a calendar. Checking that directly:

- Week 16 (the branch point) lands **~February 2027**, the plan says so explicitly, both in the header and in the application-season warning.
- At Week 16, Phases 0-3 are done: theory, filters, and the STFT. **No portfolio artifact exists yet.** The "No program (self-study continues)" row's own text is "choose a target industry and build the matching artifacts", that construction happens *after* Week 16, not before it.
- So even in the branch most favorable to Sonos/iZotope/Lucid (self-study continues, no program), an applyable portfolio is realistically **Week 16 + several more months**, call it mid-to-late 2027 at the earliest, not "soon."
- If a program is chosen instead at Week 16 (UIC, CSUF), Sonos, iZotope, and Lucid's internship all become moot as near-term targets, the person is starting graduate school, not job-hunting. **Dolby's "Recent M.S. Graduates Welcomed" framing becomes the operative rung in that branch instead, roughly two years further out at MS completion**, not the Sonos/iZotope/Lucid timeline.
- **Lucid's internship carries an extra timing wrinkle the full-time rungs don't.** Internships run on fixed annual cycles with their own early windows ("Summer 2025" and "Summer 2026" were separate reqs, not one evergreen listing), unlike Sonos or iZotope's full-time reqs, appliable whenever a portfolio is ready. If Lucid stays a target, its specific cycle is the actual constraint to track, not just "Week 16 plus a few months."

Net: Finding 6's four rungs aren't parallel near-term options alongside the program applications. They split across two branches and, within "no program," two clock types, Sonos/iZotope/Lucid arrive later than "near-term" implies, and Lucid runs on a fixed cycle; Dolby belongs to every program branch and arrives at graduation. None of these are "options available now" on this plan's actual calendar.

### Portfolio currency per tier: what the postings actually reward, mapped to post-Week-16 builds

The findings above establish which companies exist and what they screen for. This subsection answers the next question: what *evidence* each tier rewards, and what buildable artifact maps to it after Week 16. Core observation: each tier trades in a different evidence currency, and only one artifact pays across multiple tiers at once. Everything here is branch-table detail, not invariant-core work, nothing belongs before Week 16.

| Tier | Companies (verified) | Evidence currency | Post-Week-16 artifact | When to build |
|---|---|---|---|---|
| No-gate rung | Sonos IC1/IC2, iZotope, Lucid internship | Working real-time code with measured improvement, over credentials | Real-time STFT-domain noise suppressor in C++, scored with PESQ/STOI on a public noisy-speech set | Self-study branch: the flagship (~6-10 weeks at 10 hrs/wk). Program branches: skip |
| MS-gated majors | Bose, Qualcomm, Dolby, Harman | Derivation depth + the thesis itself; a repo is supporting evidence at best | Thesis topic steered toward this tier's named content (arrays/HRTF for the Harman anchor); plus a small adaptive-filter study (LMS/NLMS convergence and misadjustment measured against theory, ~2-3 weeks) extending the Week 7 seed | Any program branch; the study any time after Week 7 |
| Automotive, capture side | Tesla Algorithms, Lucid full-time | Multichannel enhancement with measured performance | MVDR beamformer on simulated array data (pyroomacoustics RIRs), beam patterns and SINR plotted with the Week 15 tooling | UIC branch (near-free, coursework-adjacent) or self-study-automotive |
| Automotive, rendering side | Tesla Infotainment, Rivian/VW Staff | Framework fluency, the reqs name JUCE, AudioWeaver, A2B, and embedded DSP targets, not theory | The plan's conditional JUCE module; AudioWeaver Designer familiarization (days-scale, graphical tool); a fixed-point port of the biquad/FIR core (~1-2 weeks); know A2B for interviews, don't build with it | Only if automotive-rendering is the target |
| Research / Fraunhofer | Fraunhofer IIS (thesis/intern route), Google generative, Splice | Publications and paper reproductions, not products | One paper reproduction with reproduced numbers, Griffin-Lim phase reconstruction is the natural pick (pure Week 14 STFT machinery, ~2-4 weeks) | Not reachable via a European MS branch, Aalto and Aalborg are both off the shortlist; relevant only if Fraunhofer's thesis/intern route is pursued independently of a grad program. Google's publication gate is PhD-track, out of scope |

Four notes that the table compresses:

1. **The noise suppressor is the only multi-tier artifact.** It composes almost entirely from the invariant core (Phase 3 STFT + Week 6 Wiener gain + Week 11 real-time rules + the Week 7 harness) and simultaneously answers iZotope's, Lucid's, and Sonos's named req content. One build, three targets, the default flagship in the no-program branch, unnecessary elsewhere, since program branches replace it with the thesis.

2. **The "measure, don't listen" discipline is itself the Tier 1 differentiator.** Most portfolios at the no-gate level say "sounds better"; PESQ/STOI numbers on a public set are what separate the plan's output from those. This is the career payoff of the plan's own measurement habit, parallel to how Finding 7 made the harness career-relevant via the instrumentation category.

3. **Tier 2's actionable artifact is a decision, not a build.** The MS-gated tier's highest-leverage move is thesis topic choice, and the Harman-anchor observation (Finding 7) already names the two topics its reqs reward: arrays/beamforming (UIC/Corey) and HRTF/binaural (CSUF/Faller). The adaptive-filter study is the only buildable supplement worth its hours, existing to make the Qualcomm screening content whiteboard-ready.

4. **The automotive split from Finding 4 carries through to artifacts: the two halves' evidence doesn't transfer.** A beamformer demo says nothing to the Infotainment/rendering reqs, and JUCE fluency says nothing to the Algorithms req. Whichever half is targeted at Week 16 determines which artifact matters; building both is the bloat the plan was rewritten to avoid.




- ~~Full requirements text for the Dolby "Recent M.S. Graduates Welcomed" role was not retrieved.~~ **Closed.** What's available at the title level is a general careers-site statement, not a detailed requirements posting, there's no fuller text to retrieve right now. Re-check closer to application time in case a fleshed-out req replaces it.
- ~~No cochlear-implant-specific salary data gathered for the Sonova/Valencia role.~~ **Closed, not pursued.**
- ~~Finding 4's JUCE observation sits in tension with the plan's July 2026 cut.~~ **Closed.** `dsp-audio-plan.md`'s Week 16 table now has a JUCE/plugin-framework row, explicitly marked as a conditional cross-cutting addition rather than a program-outcome branch, most naturally reached via CSUF/Faller.

---

*Compiled from conversational research in the DSP self-study project, July 2026. Companion to `dsp-audio-plan.md` and the separate masters-degree research project.*
