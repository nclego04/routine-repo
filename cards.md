# Spaced-Repetition Deck

Plaintext card deck for the DSP learning plan (see `dsp-audio-plan.md`'s weekly
habits). Each entry is a Q/A pair; import into Anki or review straight from
this file.

---

## Week 0.1 Day 1 — seed cards

**Q:** What makes a system LTI, and why does that property matter?
**A:** Linear (superposition holds) + time-invariant (a shifted input gives the identically shifted output). It matters because an LTI system is fully characterized by one thing — its impulse response h[n] — so any output is just x[n]*h[n]. Without both properties, convolution stops being valid.

**Q:** What's the actual difference between linearity and time-invariance?
**A:** Linearity is about how the system treats combinations of *inputs* (scaling and superposition — a·x₁+b·x₂ → a·y₁+b·y₂), independent of time. Time-invariance is about how the system treats *shifts* — a delayed input produces the same output, just delayed. A system can have one without the other (e.g. y[n]=n·x[n] is linear but not time-invariant; y[n]=x²[n] is time-invariant but not linear).

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
