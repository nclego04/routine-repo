# Spaced-Repetition Deck

Plaintext card deck for the DSP learning plan (see `dsp-audio-plan.md`'s weekly
habits). Each entry is a Q/A pair; import into Anki or review straight from
this file.

---

## Week 0.1 Day 1 — seed cards

**Q:** What makes a system LTI, and why does that property matter?
**A:** Linear = scaling holds (a·x[n]→a·y[n]) *and* additivity holds (x₁+x₂→y₁+y₂). Time-invariant = a shifted input gives the identically shifted output (x[n−n₀]→y[n−n₀]). It matters because only when *both* hold is a system fully characterized by its impulse response h[n] — any output is just x[n]*h[n]. Without both, convolution stops being valid.

**Q:** Find complex β such that e^β = −e⁻¹.
**A:** Write −1 = e^{jπ} (not e^{−j3π/2} — that lands on +j, not −1). So β = −1 + jπ (+ j2πk).

**Q:** In ∑ₘ bᵐ, what is α when matching to the template C∑αⁿ?
**A:** α = b (the fixed base). The index variable's name/origin (here, m = n−2) never becomes part of α — it fills the exponent/counter slot, not the base slot.

**Q:** Why does x[n] + y[n] behave differently from x(t) + y(t) for periodicity?
**A:** DT periods are always integers → a common multiple always exists → sum is *always* periodic. CT periods are reals → need T₁/T₂ rational, or the sum is never periodic.

**Q:** Reindexing ∫x(t)dt with t = −r — what changes, that doesn't change when reindexing a sum?
**A:** Three things move at once: the argument (x(t)→x(−r)), the differential (dt→−dr), and the limits (flip order). A sum only touches the argument.

**Q:** Why does xₑ[n]·xₒ[n] always sum to zero over all n?
**A:** even × odd = odd (from part b), and any odd signal sums to zero over all n (from part a) — this is why energy splits additively: ∑x² = ∑xₑ² + ∑xₒ².
