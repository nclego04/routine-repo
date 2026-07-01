# Progress

Current: Week 1, Day 3

## Log
- W1D1: Wrote a C++ WAV writer (RIFF/fmt/data, 16-bit PCM). Hit a MinGW linker error (GUI vs console subsystem), fixed it independently. Opens in an editor.
- W1D2: Generated 440 Hz sine to WAV; verified pitch/level by ear and in editor. Added a stereo pan crossfade between channels as a bonus. Fixed a bug where byte_rate/block_align were computed from the wrong chunk size.
