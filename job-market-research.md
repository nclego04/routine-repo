# Job Market Research — Audio DSP / Signal Processing

Compiled from live job postings researched across five sessions (July 2026). Purpose: validate the self-study plan's technical content against real hiring requirements, and identify near-term reachable roles vs. long-term targets.

**Companies covered:** 26 companies with relevant findings, ~35 roles across the table below (Qualcomm, Harman, Tesla, Lucid, and Google each contribute multiple roles). 5 companies checked with no relevant open roles or content: Ableton, Roland, GM, BMW, Waymo.

---

## Full posting table

| Company | Role | Location | Level | Degree gate | Skills required / preferred |
|---|---|---|---|---|---|
| Bose | DSP Engineer | Framingham, MA | Mid, unspecified | MS or 5 yrs | ANC, AEC, mic arrays, spatial audio, transducers, Bluetooth |
| Qualcomm | Speech & Audio Research | San Diego | Research | MS+3 / BS+4 / PhD+2 | Statistical DSP, linear prediction, adaptive filtering, ASR/TTS, deep learning (CNN/RNN/Transformer) |
| Qualcomm | Staff Embedded Audio SW | San Diego | Staff (8+ preferred) | MS+3 / BS+4 / PhD+2 | RTOS, drivers, multi-threading, architecture [almost no DSP theory] |
| Harman | Sr. DSP Research | Northridge, CA | Senior | Not stated | Psychoacoustics, tuning, benchmarking, prototyping |
| Harman | Advanced Engineer (Automotive) | Bangalore | 5–6+ yrs | BS | Automotive DSP porting, MIPS/RAM budgeting, I2C/I2S/A2B |
| Harman | New Tech & Innovation | Northridge, CA | Entry-friendly | Not stated | Audio DSP, applied acoustics, early-stage prototyping |
| Sonos | DSP SW Engineer, Player DSP | Boston/Seattle | **IC1/IC2, 0–3 yrs** | **None stated** | Real-time C/Rust, embedded audio, ML-for-audio exposure |
| Sonova (Advanced Bionics) | DSP Engineer | **Valencia, CA** | Not specified | Not stated | Cochlear implant DSP, embedded software |
| Apple | Embedded DSP Firmware | Cupertino / Culver City | Mid–Sr ($130–225K) | Not stated | ANC, conversation awareness, speech enhancement, low-power embedded DSP |
| Apple | Spatial Audio & Streaming | Cupertino | Senior (7+ yrs) | MS or commensurate exp. | 3D/spatial audio, DAW plugins, VST/AAX/AU |
| Dolby | Acoustic SP Engineer | — | **"Recent M.S. Graduates Welcomed"** | MS | No detailed skills listed; title implies MS-level acoustic signal processing |
| Dolby | Partner/DSP-adjacent | San Francisco | Senior ($152.9–210.2K) | Not stated | DSP, video post-production |
| iZotope | DSP Engineer / Intern | Cambridge, MA | Entry–mid (~$80–130K) | Not stated | Noise reduction, sample-rate conversion, dithering, time-stretching, C/C++ |
| Native Instruments | Software Engineer | Berlin / Boston / London, remote-first | Various | Not stated | Synths, samplers, sequencers (Kontakt, Reaktor, Maschine) |
| Universal Audio | Engineering (Software) | Scotts Valley, CA | Not specified | Not stated | DSP emulation of analog hardware (compressors, tape, preamps), UAD plugin platform |
| Ableton | — | Berlin | — | — | No open engineering roles at time of search |
| Splice | Sr. ML Engineer | Remote | Senior | MS or PhD | VAEs, diffusion models, neural audio codecs (RVQ), transformer architectures, generative audio/music synthesis |
| Roland | — | — | — | — | No DSP/software engineering reqs surfaced (consumer/marketing content only) |
| Yamaha | R&D (general) | Japan | New-grad + mid-career | Not stated | Acoustic signal processing, embedded systems development [Japan-based pipeline: new-grad FY2026, mid-career via Japanese-language portal] |
| Yamaha Corporation of America | — | **Buena Park, CA** | — | — | No audio-DSP or R&D roles [US entity is sales/marketing/business only] |
| Tesla | Algorithms | Palo Alto, CA | Senior (5+ yrs) | Not stated | MVDR, GSC, multichannel Wiener filter, blind source separation, Kalman filter, adaptive filters [capture/enhancement] |
| Tesla | Infotainment | Palo Alto, CA | Not stated years | BS "or equivalent... exceptional abilities" | JUCE, Max/MSP, Audio Weaver, VST, Audio Unit, ADI ADSP, HiFi Core, Qualcomm Hexagon, TI C55x/C66x [rendering] |
| Tesla | Test/Validation | Palo Alto, CA | Not specified | Not stated | Transducer characterization, acoustic measurement, DSP algorithm validation |
| Rivian / VW Group Technology | Staff Infotainment | Palo Alto, CA | Staff | Not stated | Required: AudioWeaver, A2B, Qualcomm Hexagon, multi-zone audio, Android Audio HAL/ALSA. Preferred: ML-for-audio, 3D audio/speech recognition |
| Lucid Motors | Intern, Algorithms | Newark, CA | **Internship** | Not stated | Acoustic echo reduction, noise reduction, sound enhancement, spatial audio, C/C++ on embedded hardware |
| Lucid Motors | Algorithms (FT) | Newark, CA | Not stated (5+ yrs *preferred*, not required) | Not stated | Echo cancellation, noise reduction, spatial audio, psychoacoustics, C++, MATLAB/Python |
| Lucid Motors | Sr./Lead Hardware | Not stated | Senior/Lead | Not stated | Loudspeaker/amplifier design, mic array hardware, acoustic measurement and tuning [not algorithm development] |
| Mercedes-Benz Group | Engineering Lead | Berlin, Germany | 5+ yrs | Not stated | Production/tuning leadership [not algorithm development] |
| Sennheiser | Dev / Sr. Dev Engineer | Wedemark, Germany | Multiple levels, incl. senior | Not stated | Real-time DSP implementation — algorithms, filters, hardware/software transition [multiple open reqs collapsed into this row] |
| Bang & Olufsen | DSP Design Engineer | Struer, Denmark | Not stated | Not stated | Audio DSP design (specific skills not detailed in posting) |
| Google | SWE, Pixel Audio | Mountain View, CA + others | Not stated | Not stated | Android audio system, DSP/ARM architectures, Linux audio drivers |
| Google | Staff SWE, Android Audio | Not stated | Staff (8+ yrs) | MS or PhD | DSP algorithms, Bluetooth audio profiles, codecs, Spatial Audio |
| Google | Sr. SWE, Generative Audio | Not stated | Senior, publication-track | PhD | AudioLM (token-based language modeling), diffusion models, ML-based speech codecs, source separation, audio enhancement research; first-author publications (ICASSP/Interspeech/NeurIPS/ICML/ICLR) expected |
| Qualcomm | Audio Systems DSP | San Diego | Not stated (MS/PhD preferred) | MS/PhD preferred | Audio SP fundamentals, embedded C/C++/MATLAB/Python, ML models for audio, fixed/float implementation, acoustic measurement, DSP architecture |
| Analog Devices | Principal Audio/DSP Systems | Wilmington, MA | Principal/senior | Not stated | Audio signal processing, embedded ML, embedded optimization, hardware-aware deployment, patent track |
| Cirrus Logic | DSP/SW Engineer | Austin, TX | Entry-friendly (graduate program) | Not stated | DSP algorithms, embedded software, ANC, speaker protection, consumer audio |

---

## Finding 1 — The invariant core is validated, repeatedly

Every posting except two (Qualcomm Staff Embedded, Native Instruments) requires **real-time embedded C/C++ plus some form of statistical or adaptive signal processing** — echo cancellation, noise reduction, array processing, or speech/audio enhancement. Qualcomm's own multimedia audio group description (from a 2016 recruiting post, still descriptive of the team) names it directly: *echo cancellation, noise reduction, array signal processing, acoustic enhancement, voice enhancement, active noise cancellation, voice activation.*

This confirms, independently, across a research lab, a chipmaker, three consumer-audio companies, a hearing-device company, a plugin company, two headphone/speaker manufacturers (Sennheiser, Bang & Olufsen), and Google's own Android/Pixel Audio team: **Phase 1 (stochastic DSP) and Phase 2 (filters/multirate/real-time C++) of the study plan are the correct foundation regardless of which specific company or program this leads to.**

## Finding 2 — The real split is analysis/enhancement vs. synthesis, not speech vs. music

Initial hypothesis was "speech vs. music" as the discriminating axis. Closer reading of iZotope's product line (RX: de-noise, de-hum, spectral repair) shows this is wrong. RX runs on STFT-based spectral processing and noise-reduction gain estimation — structurally the same math as Bose's AEC or Qualcomm's speech enhancement, just applied to music instead of voice.

The real split is:
- **Analysis/enhancement** (Bose, Qualcomm, Apple, Sonos, Sonova, iZotope/RX): STFT, Wiener filtering, adaptive filtering, noise/echo/artifact removal. **Shares the plan's foundation directly.**
- **Synthesis** (Native Instruments/Kontakt, Reaktor, Maschine; Universal Audio/UAD — analog-hardware circuit emulation): oscillators, samplers, sequencers, nonlinear circuit modeling, sound design. Closer to the JUCE/plugin track that was cut from the plan in July 2026.

This means "music technology" is not one branch for planning purposes — it's two, and only one shares the current invariant core.

## Finding 6 — Generative audio is a third category, not covered by the plan

Splice's AI & Audio Science team does not fit the analysis/enhancement-vs-synthesis split from Finding 2. VAEs, diffusion models, neural audio codecs, and transformer architectures for *generating* music are neither classical spectral enhancement (STFT/Wiener, the plan's Phase 3) nor classical synthesis (oscillators/samplers, the cut JUCE track). It's a third, ML-native discipline.

**Google confirms this isn't a Splice-only niche.** A Google Pixel Audio role names AudioLM, diffusion models, ML-based speech codecs, source separation, and audio enhancement research directly — the same category, at a much larger and more stable company, gated by publications (ICASSP, Interspeech, NeurIPS, ICML, ICLR) rather than being one team's specialty. Between Splice and Google, generative audio now has two independent confirmations spanning very different company types (startup and Big Tech), which is a stronger signal than either alone.

**A real gap, not a plan contradiction.** Phases 0–3 don't touch generative modeling, and were never meant to. Flagged for visibility at Week 16: if a program turns out generative-audio-heavy (UIC ECE 559, CSUF CPSC 585 both touch ML-for-audio), that's an explicit addition to the post-Week-16 block, not something the current phases cover.

A related find from the same round: a Tesla Audio DSP Algorithms Engineer posting (MVDR, GSC, multichannel Wiener, BSS, Kalman, adaptive filters) read almost like a paraphrase of the AEC/beamforming phase cut from the earlier plan. It turned out to be one of three Tesla roles, not an isolated find — see Finding 7.

## Finding 7 — Automotive audio DSP is a real, distinct cluster — and it spans both sides of Finding 2's split

Tesla alone turned out to be three roles, not one, and Rivian/VW Group Technology confirms this isn't a Tesla quirk. Harman's Bangalore role belongs to the same cluster in hindsight — automotive DSP porting, MIPS/RAM budgeting. Lucid Motors makes it four companies: a genuine internship plus a full-time role, both doing acoustic echo reduction, noise reduction, and spatial audio in C/C++ on embedded hardware — the clearest capture/enhancement match of any automotive posting found. (GM, BMW, and Waymo turned up no audio-DSP-specific roles — genuine nulls. Waymo's absence has a plausible structural reason: it retrofits existing vehicle platforms rather than manufacturing proprietary in-cabin audio hardware, so a dedicated role is less likely to exist there. Mercedes has an Audio Engineering Lead role, but it's production/tuning leadership — closer to Lucid's separate Audio Hardware Engineer row.)

Unlike the analysis/enhancement-vs-synthesis split (Finding 2), automotive isn't a third branch alongside those two — it's a **domain that contains both sides of that split, applied to a vehicle cabin instead of a device or room**:
- Tesla's *Algorithms Engineer* role is squarely capture/enhancement (MVDR, GSC, Wiener, BSS, Kalman) — the plan's current core.
- Tesla's *Infotainment* role is squarely playback/rendering, and it names **JUCE, Max/MSP, Audio Weaver, VST, Audio Unit** directly.

**JUCE was cut from the plan in July because nothing on the shortlist points at desktop plugins.** That reasoning still holds for every program — but not for every job target. Automotive in-cabin rendering is a real, named exception. This isn't grounds to reverse the cut (analysis/enhancement remains the broader, better-validated core across sixteen companies) but it's a genuine gap the cut created.

Two new named tools appear here that hadn't shown up anywhere else in this research: **AudioWeaver** (DSP Concepts' rapid-prototyping/tuning platform) and **A2B** (the automotive audio bus standard). Both are concrete, learnable, and specific to this domain — not generic "more DSP theory."

**Cross-reference against `dsp-audio-plan.md`:** the two sides of automotive map onto the plan differently.

*Capture/enhancement side (Tesla Algorithms, Rivian/VW Staff, Harman automotive):* covered cleanly. MVDR, GSC, multichannel Wiener filter, and adaptive filters are exactly Phase 1 (stochastic DSP) and Phase 3 (STFT) — the same invariant-core content already validated by UIC/Corey in the Week 16 branch table. No new row needed: it's not a new academic specialization, it's another *industry* hiring for the same mic-array/enhancement skill set UIC already trains toward.

*Playback/rendering side (Tesla Infotainment):* not covered by Phases 0–3. The Week 16 table's CSUF/Faller row points partway at this — Faller's branch "builds directly on your existing JUCE room-acoustics project," and HRTF/binaural rendering (convolution-based, real-time, spatial) is structurally close to in-cabin spatial rendering. **CSUF/Faller is the one existing branch with a plausible bridge to automotive rendering work**, via shared JUCE lineage and convolution-based processing — not a confirmed fit (Faller's work is headphone HRTF, not loudspeaker arrays with AudioWeaver/A2B specifics), but closer than the UIC branch that answers the capture side.

Net: automotive doesn't need its own Week 16 row. The capture side is already answered by UIC/Corey; the rendering side has a weak but real bridge through CSUF/Faller that the table doesn't currently surface.

## Finding 3 — Degree gates split roughly by company size/age, not by domain

Large, established companies (Bose, Qualcomm, Dolby) state explicit MS-or-years formulas. Newer or smaller companies (Sonos, iZotope, Native Instruments, Harman's entry-level Northridge req) state none, and Sonos explicitly welcomes "academic or project-based" experience as a substitute for industry years.

**Practical implication:** the self-study portfolio (artifacts, not job history) is a more direct match for the no-gate tier than for the MS-gated tier. The MS remains the unlock for Bose/Qualcomm/Dolby-tier reqs; the portfolio alone may be sufficient for Sonos/iZotope-tier reqs.

## Finding 5 — Four rungs without an MS-or-years gate, on two different clocks

1. **Sonos, DSP Software Engineer, Player DSP** — IC1/IC2, 0–3 yrs, no degree gate, explicitly counts project-based experience. Best match for the self-study artifacts as-is. Two portable prep notes: they use **Rust and C** (not just C++), and they explicitly say applicants need not meet 100% of listed skills.
2. **iZotope, DSP Engineer (Intern or entry)** — Cambridge, MA. No stated gate. Explicit ask: C/C++, "understanding of digital signal processing." Given the RX/analysis-enhancement overlap (Finding 2), this is a stronger fit to the current plan than Native Instruments would be.
3. **Dolby, Acoustic Signal Processing Engineer ("Recent M.S. Graduates Welcomed")** — the one posting that names the MS-completion outcome directly in its title. Worth re-checking this specific req as graduation nears.
4. **Lucid Motors, Intern, Audio Algorithm and Signal Processing Software Engineer** — Newark, CA. Internship level, no stated gate beyond that. Content is a near-exact match to the plan's core: acoustic echo reduction, noise reduction, sound enhancement, spatial audio, C/C++ on embedded hardware. Found via the automotive cross-reference (Finding 7); folded in here because it breaks that cross-reference's original pattern — see below.

**Cross-reference against Finding 7:** checking each automotive role against this same reachability bar originally surfaced a real tension — the most gate-accessible role (Tesla Infotainment) was content-uncovered, while the content-matched role (Tesla Algorithms) carried a 5+ year gate. **Lucid's internship breaks that pattern**: gate-accessible and content-matched, the automotive equivalent of Sonos or iZotope, not a Tesla Infotainment-style exception.

Sorted by gate, full picture:
- Tesla Algorithms Engineer: 5+ yrs. **Not reachable.**
- Tesla Test/Validation: years not specified. Ambiguous.
- Rivian/VW Staff Audio DSP Engineer: Staff level. **Not reachable.**
- Harman automotive (Bangalore): 5–6+ yrs. **Not reachable.**
- Lucid Senior/Lead Audio Hardware Engineer: Senior/Lead, and a different discipline (hardware/tuning) besides. **Not reachable, and not content-matched either.**
- Tesla Infotainment: BS "or equivalent... exceptional abilities," no years stated. **Reachable, but off-plan** — JUCE/Audio Weaver/rendering content the plan doesn't build toward.
- **Lucid Intern (Audio Algorithm and Signal Processing): reachable *and* on-plan.**

Revised conclusion: automotive isn't uniformly split between "reachable but off-plan" and "on-plan but not reachable" as the first pass suggested — that split holds for Tesla and Rivian/VW, but Lucid's internship cuts across it, making it a genuine fourth rung alongside Sonos, iZotope, and Dolby.

See the Timeline reality check below (in the cross-reference section) for how these four rungs' actual near-term availability plays out against the plan's own calendar — the picture there supersedes any read of this finding as "options available now."

## Finding 8 — The AES sponsor roster widens the automotive cluster and surfaces a measurement-instrumentation category no prior finding covered

Source: the sponsor roster of the AES automotive-audio conference (July 2026). It overlaps the prior four sessions heavily (Harman, Bose, Qualcomm, Sennheiser, DSP Concepts via AudioWeaver all reappear) and extends the picture four ways. Seven names were confirmed against live postings; everything else is characterized by company type and sponsor-roster presence, called out where it applies.

**A. The automotive cluster is wider than the Tesla/Rivian/Lucid/Harman/Mercedes set in Finding 7.** The roster adds Aptiv, Panasonic Automotive (Peachtree City, GA), QNX (BlackBerry's automotive RTOS), Hyundai Mobis, Aumovio, Pioneer, and Premium Sound Solutions. Verification caveat: these were confirmed as roster members with active careers pages, but the roles that surfaced skew toward embedded-systems and RTOS work (QNX/Linux/Android) rather than audio-algorithm derivation. They are not verified audio-DSP-algorithm reqs the way Tesla's Algorithms Engineer and Lucid's internship were. This reinforces rather than changes Finding 7's cross-reference conclusion on the capture side, and adds this: the domain is deep enough to treat as a primary target rather than a fallback.

**B. A new category the prior four sessions missed: acoustics and measurement instrumentation.** Klippel (Dresden), HEAD acoustics (Germany), Listen Inc. (Boston), Audio Precision and GRAS (under the Axiometrix umbrella, AP in Portland, OR), Müller-BBM (Germany), and CrySound (China). None of the existing findings covers this — it fits neither the analysis/enhancement-vs-synthesis split (Finding 2), the generative category (Finding 6), nor the automotive domain (Finding 7). It maps instead onto a part of the plan no finding had connected to a career: the Phase 0 measurement harness and the Week 15 STFT analysis tooling. Two prior postings in this document already list Audio Precision and Klippel R&D/QC as required tooling, so the names are worth knowing even in an algorithm role. Caveat: characterized by company type, not individually verified, and mostly Europe-based. Realistic US touchpoints are Audio Precision (Portland) and Listen (Boston); the rest require relocation abroad.

**C. Two clean net-new core-algorithm employers.** Analog Devices (Wilmington, MA) has verified audio-DSP roles naming audio signal processing and embedded ML, hardware-aware deployment, and a patent track, skewing senior. Cirrus Logic (Austin, TX) runs DSP-algorithm, ANC, and speaker-protection work and, unlike the Bose/Qualcomm/Dolby MS-or-years tier in Finding 3, operates a structured new-grad and intern pipeline recruiting from US and UK universities with explicit intern-to-full-time conversion — the counterexample to Finding 3's size/age pattern: a large, established chipmaker with an accessible graduate front door. A third Qualcomm role (Audio Systems DSP Engineer, San Diego) also surfaced this pass, naming ML models for audio alongside classic audio SP fundamentals — the in-state ML-for-audio complement to the two Qualcomm roles already logged.

**D. The ML/immersive/codec fringe of the roster.** Fraunhofer IIS (Erlangen, the mp3/AAC/MPEG-H research house, publication-weighted, closest in kind to an Aalto spatial/coding path), Audiokinetic (Montreal, Wwise game-audio middleware, which sits on the synthesis/rendering side of Finding 2), GPU Audio, and COMSOL (acoustics simulation). Small specialty shops on the roster (Immersiv, Impulse Audio Lab, SPB Audio Lab, Audio Foundry) were noted but not individually chased and are unlikely first-job US targets.

**Anchor observation, connecting Finding 7 and the Week 16 branch table.** Harman Northridge is the single employer that rewards both candidate advisors' branches at once: arrays and beamforming for UIC/Corey, HRTF and binaural for CSUF/Faller, both named directly in Harman's own reqs (beamforming arrays, immersive audio, HRTF processing, ANC, ML methods) — and it's roughly forty minutes from home. If one employer is used to reverse-engineer coursework and thesis choices, the evidence points at Harman Northridge, with Qualcomm San Diego as the in-state ML-for-audio complement.

**Cross-reference against `dsp-audio-plan.md`.** See Finding 7's cross-reference for the capture/rendering split; unchanged here. The one genuinely new plan connection is the measurement-instrumentation category: it is the first finding that makes the Phase 0 harness and the Week 15 analysis toolkit career-relevant rather than purely pedagogical. That is cross-cutting, not a program branch, so it belongs as a minor note at Week 16 (a measurement/test-engineering exit the harness discipline already partly serves) rather than as a new row.

### Verification subsection — European names chased individually (July 2026)

The European names that Finding 8 first characterized by type were then checked against their own careers pages. The picture that came back reclassifies the cluster, so the "characterized by type" hedge no longer applies to these names.

| Company | Country | Hiring now | Verified open role type | DSP-algorithm fit | MS-accessible front door |
|---|---|---|---|---|---|
| Fraunhofer IIS (Audio & Media, Erlangen) | DE | Yes, multiple | Software developer in DSP (audio coding of music/speech); research associate, Audio & Media; interns / student assistants in digital audio SP; AudioLabs thesis/PhD | High — coding, immersive, MPEG-H 3D Audio, spatial | Yes, explicit: intern, student-assistant, and thesis routes plus research-associate |
| Müller-BBM Active Sound Technology | DE | Yes | Real-time signal-processing software development; application/tuning engineer for ANC and active sound design in vehicles (m|klang) | Medium-high, rendering/ASD side | Not explicit, professional roles |
| Impulse Audio Lab | DE (Munich) | Unclear (last confirmed post 2022) | Audio software developer (JUCE); automotive EV interior sound design and AVAS exterior sound | Medium, sound-design and JUCE side | Small shop, no formal pipeline |
| HEAD acoustics | DE (Herzogenrath) | Yes, ~9 roles | Acoustics, telecom, speech/voice quality, NVH | Low-medium, measurement/quality with some speech | Not explicit |
| Klippel | DE (Dresden) | Yes, but non-DSP | International sales; general project engineering. No audio-DSP-algorithm req open at time of check | Core to the product, but not an open role right now | No current DSP opening |
| GRAS Sound & Vibration (Axiometrix) | DK | Careers page live, thin listings | Measurement-microphone hardware | Low, hardware discipline | No |
| Premium Sound Solutions | BE (Dendermonde) | Yes, ~7 roles | Acoustical engineer, transducer/loudspeaker design (their own req names COMSOL, Klippel, MATLAB, anechoic chambers) | Low, loudspeaker hardware, not algorithm work | Entry-friendly but a hardware discipline |
| COMSOL | SE HQ / US (Burlington, MA) | Yes | Applications Engineer, Acoustics (pre/post-sales support of the Acoustics Module) | Low, simulation-software support, not algorithm R&D | BS/MS but a support role |
| Aumovio | DE | Not verifiable this pass | No audio-specific req surfaced | Unknown | Unknown |
| Immersiv, SPB Audio Lab, Audio Foundry | — | Not verifiable | No clear careers/role data surfaced | Unknown | Unknown |

Four corrections come out of this, and they matter more than a status refresh:

1. **The DSP-relevant European work isn't in the measurement bucket.** Finding 8B grouped Klippel, HEAD, GRAS, Premium Sound Solutions, and COMSOL as one category. Verified, their open roles are transducer design (PSS), simulation support (COMSOL), acoustics/speech-quality/NVH (HEAD), sales and project engineering (Klippel), and measurement hardware (GRAS) — little of it the estimator-deriving DSP work the plan builds toward. The category is real, but it's a set of instruments and hardware roles, not algorithm employers. PSS naming COMSOL, Klippel, and MATLAB in its own req is the cleanest evidence: these firms are more useful as tools to know than places to be the DSP hire.

2. **The genuine European DSP hits sit elsewhere, in two places Finding 8 under-weighted.** Fraunhofer IIS (coding, immersive, spatial research) and the automotive active-sound pair, Müller-BBM Active Sound Technology and Impulse Audio Lab (real-time ANC/ASD and EV sound design). None of those three is in the 8B measurement cluster.

3. **Fraunhofer IIS is the one European name with an MS-appropriate front door.** It's actively hiring at intern, student-assistant, thesis, and research-associate levels, its content is audio coding and immersive/spatial (the closest external match to an Aalto spatial/coding branch), and the reqs name exactly this plan's profile: EE/CS background, C/C++/Python/MATLAB, interest in audio SP and psychoacoustics. If any European option is worth tracking before graduation, it's this one, via the thesis/intern route rather than a full-time posting.

4. **The automotive-audio pair connects to Finding 7's rendering/JUCE thread, not the capture side.** Müller-BBM AST and Impulse both work the active-sound-design and ANC/AVAS side, which is rendering, and Impulse's own hiring history is JUCE-based. This is the European mirror of Finding 7's observation that automotive rendering is JUCE-adjacent and bridges to CSUF/Faller, not to UIC/Corey's capture/enhancement training.

**Geography, hardened.** Every verified European hit is in Germany, Denmark, Belgium, or Sweden. The only US touchpoint in the whole European set is COMSOL's Burlington, MA office, and that is an applications-support role, not algorithm work. Relocation abroad remains the price of entry for this cluster, Fraunhofer IIS included.

---

## Cross-reference: this research × `dsp-audio-plan.md`

Findings 5×7 and 7×plan already cross-referenced specific pairs. This pass covers what those two left open: a direct Phase-to-finding content mapping, the generative-audio gap (Finding 6), and a timeline reality check on the near-term rungs (Finding 5) against the plan's own calendar.

### Phase-level content mapping

| Plan phase | Content | Which finding(s) it validates |
|---|---|---|
| Phase 0 (deterministic theory) | Convolution, Fourier, sampling, z-transform | Universal — underlies everything in Finding 1, not specific to any single company |
| Phase 1 (stochastic DSP) | Random processes, PSD, Wiener filter, linear prediction | **Finding 1**, directly. This is the content every analysis/enhancement posting names — Bose's AEC, Qualcomm's adaptive filtering, Tesla's Algorithms Engineer (Finding 7), Sonova's enhancement stack. Adaptive filtering itself is the highest-frequency named technique the core defers to the Week 16 UIC branch; as of the July 2026 skill tally it is seeded (Wiener → LMS → NLMS derivation, no build-out) in the plan's Week 7 buffer |
| Phase 2 (filters, multirate, real-time C++) | Biquads, FIR, polyphase, audio-thread rules | **Finding 1**, directly. This is also the half of Finding 7 that automotive's embedded targets (ADI ADSP, HiFi Core, Hexagon, TI C55x/C66x) sit on top of |
| Phase 3 (STFT) | Windowing, COLA, spectral analysis tooling | The analysis/enhancement side of **Finding 2**. iZotope's RX (spectral repair) and the frequency-domain half of every AEC/NR posting run on this |
| *(not in plan — cut July 2026)* | JUCE, VST, plugin frameworks | The synthesis side of **Finding 2** (Native Instruments, Universal Audio) and the rendering side of **Finding 7** (Tesla Infotainment). Confirmed gap, not accidental — the cut's reasoning was explicit and (mostly) still holds |
| *(not in plan, never was)* | Generative models — VAEs, diffusion, neural codecs | **Finding 6**. No phase touches this; see below |

Net: Phases 0–3 map cleanly onto the *larger* of the two Finding 2 branches (analysis/enhancement) and the *larger* of the two Finding 7 branches (automotive capture). The plan was never trying to cover synthesis or generative work; this table just makes that explicit.

### Closing Finding 6's open item — generative audio and the branch table

The open item asked whether generative audio shows up in any shortlisted program's coursework. Checking the two remaining named electives directly: **UIC ECE 559** is titled *Neural Networks*, and CSUF's **CPSC 585** is *Neural Networks, Deep Learning, and Reinforcement Learning* — both read as general/discriminative deep learning (classification, regression, representation learning), not generative-modeling-specific (no VAE/diffusion/codec framing in either title). Neither course description available to this research names generative audio explicitly.

**KAIST/MACLab was the one branch where this could plausibly have been a real overlap, but KAIST is no longer under consideration.** With KAIST off the shortlist, no remaining program branch has a clear generative-audio angle.

Conclusion: generative audio stays an acknowledged gap, but no longer maps to any open branch-table question — no remaining program row could plausibly attach to it. If it becomes a real target, it would need an explicit addition to the post-Week-16 block, built outside the current shortlist, not something a remaining elective quietly covers.

### Timeline reality check — Finding 5's rungs against the plan's own calendar

Finding 5 called Sonos, iZotope, Dolby, and Lucid "reachable rungs," but reachable relative to *those postings' own gates* (0–3 years, internship-level, no degree), not relative to where the plan actually puts you on a calendar. Checking that directly:

- Week 16 (the branch point) lands **~February 2027** — the plan says so explicitly, both in the header and in the application-season warning.
- At Week 16, Phases 0–3 are done: theory, filters, and the STFT. **No portfolio artifact exists yet.** The "No program (self-study continues)" row's own text is "choose a target industry and build the matching artifacts" — that construction happens *after* Week 16, not before it.
- So even in the branch most favorable to Sonos/iZotope/Lucid (self-study continues, no program), an applyable portfolio is realistically **Week 16 + several more months** — call it mid-to-late 2027 at the earliest, not "soon."
- If a program is chosen instead at Week 16 (UIC, CSUF), Sonos, iZotope, and Lucid's internship all become moot as near-term targets — the person is starting graduate school, not job-hunting. **Dolby's "Recent M.S. Graduates Welcomed" framing becomes the operative rung in that branch instead, roughly two years further out at MS completion**, not the Sonos/iZotope/Lucid timeline.
- **Lucid's internship carries an extra timing wrinkle the full-time rungs don't.** Internships run on fixed annual cycles with their own early windows ("Summer 2025" and "Summer 2026" were separate reqs, not one evergreen listing) — unlike Sonos or iZotope's full-time reqs, appliable whenever a portfolio is ready. If Lucid stays a target, its specific cycle is the actual constraint to track, not just "Week 16 plus a few months."

Net: Finding 5's four rungs aren't parallel near-term options alongside the program applications. They split across two branches and, within "no program," two clock types — Sonos/iZotope/Lucid arrive later than "near-term" implies, and Lucid runs on a fixed cycle; Dolby belongs to every program branch and arrives at graduation. None of these are "options available now" on this plan's actual calendar.

### Portfolio currency per tier — what the postings actually reward, mapped to post-Week-16 builds

The findings above establish which companies exist and what they screen for. This subsection answers the next question: what *evidence* each tier rewards, and what buildable artifact maps to it after Week 16. Core observation: each tier trades in a different evidence currency, and only one artifact pays across multiple tiers at once. Everything here is branch-table detail, not invariant-core work — nothing belongs before Week 16.

| Tier | Companies (verified) | Evidence currency | Post-Week-16 artifact | When to build |
|---|---|---|---|---|
| No-gate rung | Sonos IC1/IC2, iZotope, Lucid internship | Working real-time code with measured improvement, over credentials | Real-time STFT-domain noise suppressor in C++, scored with PESQ/STOI on a public noisy-speech set | Self-study branch: the flagship (~6–10 weeks at 10 hrs/wk). Program branches: skip |
| MS-gated majors | Bose, Qualcomm, Dolby, Harman | Derivation depth + the thesis itself; a repo is supporting evidence at best | Thesis topic steered toward this tier's named content (arrays/HRTF for the Harman anchor); plus a small adaptive-filter study (LMS/NLMS convergence and misadjustment measured against theory, ~2–3 weeks) extending the Week 7 seed | Any program branch; the study any time after Week 7 |
| Automotive, capture side | Tesla Algorithms, Lucid full-time | Multichannel enhancement with measured performance | MVDR beamformer on simulated array data (pyroomacoustics RIRs), beam patterns and SINR plotted with the Week 15 tooling | UIC branch (near-free, coursework-adjacent) or self-study-automotive |
| Automotive, rendering side | Tesla Infotainment, Rivian/VW Staff | Framework fluency — the reqs name JUCE, AudioWeaver, A2B, and embedded DSP targets, not theory | The plan's conditional JUCE module; AudioWeaver Designer familiarization (days-scale, graphical tool); a fixed-point port of the biquad/FIR core (~1–2 weeks); know A2B for interviews, don't build with it | Only if automotive-rendering is the target |
| Research / Fraunhofer | Fraunhofer IIS (thesis/intern route), Google generative, Splice | Publications and paper reproductions, not products | One paper reproduction with reproduced numbers — Griffin–Lim phase reconstruction is the natural pick (pure Week 14 STFT machinery, ~2–4 weeks) | Only if the European/Aalto branch is live. Google's publication gate is PhD-track, out of scope |

Four notes that the table compresses:

1. **The noise suppressor is the only multi-tier artifact.** It composes almost entirely from the invariant core (Phase 3 STFT + Week 6 Wiener gain + Week 11 real-time rules + the Week 7 harness) and simultaneously answers iZotope's, Lucid's, and Sonos's named req content. One build, three targets — the default flagship in the no-program branch, unnecessary elsewhere, since program branches replace it with the thesis.

2. **The "measure, don't listen" discipline is itself the Tier 1 differentiator.** Most portfolios at the no-gate level say "sounds better"; PESQ/STOI numbers on a public set are what separate the plan's output from those. This is the career payoff of the plan's own measurement habit, parallel to how Finding 8 made the harness career-relevant via the instrumentation category.

3. **Tier 2's actionable artifact is a decision, not a build.** The MS-gated tier's highest-leverage move is thesis topic choice — and the Harman-anchor observation (Finding 8) already names the two topics its reqs reward: arrays/beamforming (UIC/Corey) and HRTF/binaural (CSUF/Faller). The adaptive-filter study is the only buildable supplement worth its hours, existing to make the Qualcomm screening content whiteboard-ready.

4. **The automotive split from Finding 7 carries through to artifacts: the two halves' evidence doesn't transfer.** A beamformer demo says nothing to the Infotainment/rendering reqs, and JUCE fluency says nothing to the Algorithms req. Whichever half is targeted at Week 16 determines which artifact matters; building both is the bloat the plan was rewritten to avoid.




- ~~Full requirements text for the Dolby "Recent M.S. Graduates Welcomed" role was not retrieved.~~ **Closed.** What's available at the title level is a general careers-site statement, not a detailed requirements posting — there's no fuller text to retrieve right now. Re-check closer to application time in case a fleshed-out req replaces it.
- ~~No cochlear-implant-specific salary data gathered for the Sonova/Valencia role.~~ **Closed, not pursued.**
- ~~Finding 7's JUCE observation sits in tension with the plan's July 2026 cut.~~ **Closed.** `dsp-audio-plan.md`'s Week 16 table now has a JUCE/plugin-framework row — explicitly marked as a conditional cross-cutting addition rather than a program-outcome branch, most naturally reached via CSUF/Faller.

---

*Compiled from conversational research in the DSP self-study project, July 2026. Companion to `dsp-audio-plan.md` and the separate masters-degree research project.*
