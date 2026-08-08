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


## Week 0.3 Day 3 — PS7 closeout card

**Q:** Derive the convolution sum from LTI first principles.<br>
**A:** Any input decomposes into a sum of scaled, shifted impulses (sifting). If the system is time-invariant, each impulse delayed by a value of k produces a system response delayed by a value of k. If the system is also linear, the response of the sum of impulses is the sum of the individual responses, which is the convolution sum.
