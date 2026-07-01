# Progress

Current: Week 1, Day 2

## Log
- W1D1: Wrote a C++ WAV writer (RIFF/fmt/data, 16-bit PCM) and generated a 440 Hz sine to WAV; verified pitch/level by ear and in editor. Hit a MinGW linker error (GUI vs console subsystem), fixed it independently. Added a stereo pan crossfade between channels as a bonus. Fixed a bug where byte_rate/block_align were computed from the wrong chunk size.
- W1D2: Refactored the WAV generator into a swappable `generate_waveform(string type, double frequency, double& phase)` so sine/saw/square share one render path.
  - **Built:**
    - Migrated the sawtooth from an amplitude-accumulator to a proper phase accumulator: phase stays in [0,1), advances by `frequency / sample_rate` per sample, wraps with `phase -= 1.0`.
    - Confirmed the accumulator is the pitch clock while the mapping sets timbre — the same phase yields sine (`sin(2π·phase)`), saw (`2·phase − 1`), or square (`phase < 0.5 ? +1 : −1`).
    - Made frequency a real call-time parameter instead of a hardcoded global.
    - Rendered `sawtooth.wav` and `square.wav` at 220 Hz; both show correct shapes in Audacity.
  - **Bugs hit and fixed independently:**
    - `increment = frequency * sample_rate` instead of `/ sample_rate` — phase blew up to ~19M on sample 1, `phase -= 1` never recovered it, and the int cast overflowed to garbage. Same class as the original `/1000` bug, inverted.
    - Learned why `phase -= 1.0` beats `phase = 0` on wrap: resetting discards the fractional overshoot, lengthening each cycle → pitch drifts flat. Subtracting preserves it, keeping the average period exact.
    - Swapped saw/square formulas, plus an unreachable `else if ("sine")` branch where `"square"` belonged (produced silence).
    - `start_audio`/`end_audio` recorded before the render loop in one revision → zero-length data chunk; fixed by bracketing the loop.
    - Caught in design that phase must be passed by reference (`double&`), else the accumulator resets every call.
  - **Concepts locked:**
    - The phase accumulator decouples pitch from waveform.
    - Two orthogonal naive-oscillator defects: integer increment → quantized pitch; reset-on-wrap → flat drift.
    - A naive square has two full-scale discontinuities per cycle vs. saw's one — richer highs, aliases at least as hard, and higher RMS so louder at equal amplitude.
  - **Next:** optional cleanup to fold the per-file "open → render → patch header → close" block into a `render_file(filename, type, freq)` helper. Day 3: sweep naive saw/square past a few kHz and listen for aliasing (characterize, don't fix yet).
