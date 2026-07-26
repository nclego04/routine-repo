# Spaced-Repetition Deck

Plaintext card deck for the DSP learning plan (see `dsp-audio-plan.md`'s weekly
habits). Each entry is a Q/A pair; import into Anki or review straight from
this file.

---

## Week 0.1 Day 3 — seed cards

**Q:** What makes a system LTI, and why does that property matter?<br>
**A:** A system is linear when scaling the input by a constant scales the output by the same constant (scaling) and when the response of a sum of inputs equals the sum of the individual responses (additivity). A system is time-invariant when a shifted input gives an output shifted by that same amount. The LTI property is important because an LTI system's impulse response determines its output for any input via convolution: y[n] = x[n] * h[n].

**Q:** Why does xₑ[n]·xₒ[n] always sum to zero over all n?<br>
**A:** even × odd = odd (from part b), and any odd signal sums to zero over all n (from part a) — this is why energy splits additively: ∑x² = ∑xₑ² + ∑xₒ².


## Week 0.1 Day 3 — PS3 closeout cards

**Q:** Does showing that swapping the order of a cascade (e.g. G∘F vs F∘G) gives equal outputs prove either system is linear?<br>
**A:** No — these are different questions. Linearity: one system's response to a *scaled sum of inputs* (input varies, system fixed). Commutativity: whether two *systems* give the same output in either order (system order varies, input fixed). Equal outputs under swapped cascade order proves the two systems commute — nothing about either one's internal linearity.


## Week 0.1 Day 4 — PS4 closeout cards

**Q:** Convolving with δ vs multiplying by δ — what does each do to a signal?<br>
**A:** Opposite things. *Convolution* sifts and **preserves**: x[n]*δ[n−n₀] = x[n−n₀], the whole waveform, shifted. *Multiplication* masks and **destroys**: y[n]·δ[n] = y[0]·δ[n], zero everywhere except one spike at the origin. Note the result is still a *signal* (δ stays attached, carrying the shape) — not the bare number y[0]. This split is the whole content of P4.9(a).

**Q:** Derive the integration limits for y(t)=∫x(τ)h(t−τ)dτ when x(τ)=e^−(τ−1)u(τ−1) and h(t−τ)=u(t−τ+1), and state when the output turns on.<br>
**A:** Each unit step is one inequality on τ; the overlap is the window. u(τ−1) ⇒ τ ≥ 1 (**floor**). u(t−τ+1) ⇒ t−τ+1 ≥ 0 ⇒ τ ≤ t+1 (**ceiling** — the −τ flips the direction). Output is nonzero iff the ceiling clears the floor: t+1 ≥ 1 ⇔ t ≥ 0; below that the supports don't overlap, so y=0 (it is *overlap* that vanishes, not x). Then τ′=τ−1 remaps limits to 0..t ⇒ ∫₀ᵗe^−τ′dτ′ = 1−e⁻ᵗ.

**Q:** What is x(t) * aδ(t−t₀), and what audio operation is it?<br>
**A:** a·x(t−t₀) — delay by t₀ and gain by a; shape untouched. This is the single tap. A *sum*, h(t)=Σₖaₖδ(t−tₖ), drops a scaled copy of the input at each delay — the multi-tap echo/reverb model (P4.8, P4.11), and the atom under every delay line and chorus.
