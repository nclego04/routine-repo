# Spaced-Repetition Deck

Plaintext card deck for the DSP learning plan (see `dsp-audio-plan.md`'s weekly
habits). Each entry is a Q/A pair; import into Anki or review straight from
this file.

---

## Week 0.1 Day 3 — seed cards

**Q:** What makes a system LTI, and why does that property matter?
**A:** A system is linear when scaling the input by a constant scales the output by the same constant (scaling) and when the response of a sum of inputs equals the sum of the individual responses (additivity). A system is time-invariant when a shifted input gives an output shifted by that same amount. The LTI property is important because an LTI system's impulse response determines its output for any input via convolution: y[n] = x[n] * h[n].

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
