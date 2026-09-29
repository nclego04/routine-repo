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


## Week 0.2 Day 3 — PS7 closeout card

**Q:** Derive the convolution sum from LTI first principles.<br>
**A:** Any input decomposes into a sum of scaled, shifted impulses (sifting). If the system is time-invariant, each impulse delayed by a value of k produces a system response delayed by a value of k. If the system is also linear, the response of the sum of impulses is the sum of the individual responses, which is the convolution sum.


## Week 0.4 Day 3 — Fourier pairs that stalled recall (P4D3)

**Q:** State the CT Fourier series analysis equation.<br>
**A:** aₖ = (1/T)∫_T x(t)e^(−jkω₀t) dt — the projection that extracts each harmonic coefficient over one period.

**Q:** What is the CTFT of e^(jω₀t)?<br>
**A:** 2πδ(ω−ω₀) — derived via sifting and matching the defining integral to the synthesis equation. This is the elementary pair everything else (periodic-signal spectra, modulation) builds on.

**Q:** State the DTFT time-shift property.<br>
**A:** x[n−n₀] ↔ e^(−jΩn₀)X(Ω) — a pure phase multiplication, no change in magnitude.

**Q:** "Analysis equation" vs "synthesis equation" — which does which, and which sign convention goes with which?<br>
**A:** Analysis extracts coefficients/spectrum from the signal (carries the minus sign in the exponent, e.g. aₖ = (1/T)∫x(t)e^(−jkω₀t)dt). Synthesis reconstructs the signal from coefficients/spectrum (carries the plus sign, e.g. x(t) = Σaₖe^(jkω₀t)).


## Week 0.4 Day 3 — the day's actual deliverable, never carded (P4D2 → P4D3)

**Q:** State the CT multiplication-in-time ↔ convolution-in-frequency pair, with the constant.<br>
**A:** y(t) = x(t)p(t) ⇔ Y(ω) = (1/2π)[X(ω) ✻ P(ω)]. The 1/2π isn't decoration — it's exactly what makes a reconstructed spectrum proportional to the original rather than equal to it.


## Week 0.5 Day 1 — flagged "worth a card" (P18.5, today)

**Q:** Sampling (C/D) and pure frequency relabeling (Ω = ωT) both relate ω and Ω. Do both introduce a 1/T amplitude scaling?<br>
**A:** No. The 1/T scaling comes specifically from impulse-train sampling itself (the C/D operation, via convolution with the impulse comb). Pure axis relabeling — G(Ω) = H(ΩT₀), no sampling involved — introduces no scaling factor. Same-looking substitution, mechanically different operation.


## Recurring errors, never carded despite 3+ appearances

**Q:** What's the difference between correctly applying the sifting property and just hand-waving at it?<br>
**A:** Sifting is a substitution, not a deletion: it consumes the integral/sum over the delta AND replaces every instance of the integration/summation variable with the delta's argument. If an ∫ or Σ survives, or the original variable survives anywhere in the result, the step isn't finished. (Hit this wrong four different ways in one session, P3D5.)

**Q:** Standing check for inequality flips and negated indices (−τ, −k, x[n−k] with k<0)?<br>
**A:** Isolating a negated variable in an inequality is easy to botch — e.g. reading u(t−τ+1) as τ>t+1 and then also calling t+1 the upper limit (two floors, no ceiling, self-inconsistent). Separately: in Σh[k]x[n−k], k<0 does NOT mean "reaching the past" — x[n−k] with k negative is x[n+|k|], the future. Check which direction a negated index actually points before trusting the sign.

## Week 0.4 Day 4 — the sampling theorem itself (P4D4)

**Q:** Derive the sampled-signal spectrum formula and state where each piece comes from.<br>
**A:** X_p(ω) = (1/T)Σ_k X(ω−kω_s). Built from three pieces: the Fourier series of the sampling impulse train (c_k = 1/T, via sifting over one period), the FT of that train as an impulse comb P(ω) = ω_sΣ_k δ(ω−kω_s), then x_p(t)=x(t)p(t) ⇒ X_p(ω) = (1/2π)[X(ω)✻P(ω)], and convolving with a shifted impulse just relocates each copy — the 1/2π and the 2π/T collide and leave 1/T.

**Q:** A sinusoid gets sampled and aliases. How do you tell whether it lands on DC (Ω=0) or Nyquist (Ω=π)?<br>
**A:** Full multiples of f_s alias to DC. Odd multiples of f_s/2 (i.e. f₀ = k·f_s + f_s/2) alias to Nyquist. They're different phenomena, not one blob — check which one the tone actually is before assuming "any multiple of f_s/2" aliases the same way.

**Q:** Why does the sampling theorem need strict inequality (ω_s > 2ω_M), not ≥?<br>
**A:** At exactly ω_s = 2ω_M, the k=0 replica and its neighbor land on the same boundary frequency with opposite-sign weights (±j) and cancel exactly — x_r(t) comes back as zero even though the original signal wasn't. Concrete check: x(t)=cos(ω_Mt+π/2) sampled at exactly Nyquist reconstructs to 0, confirmed both from the samples directly (x(nT)=−sin(πn)=0 for all n) and spectrally.


## Week 0.3 Day 5 — ideal filters (P3D5)

**Q:** One-line proof that an ideal LPF/HPF/BPF (brick-wall magnitude response) is non-causal.<br>
**A:** H(ω) real and even ⇒ h(t) real and even (conjugate symmetry run backwards). Assume causal, h(t)=0 for t<0; evenness then mirrors that onto t>0 too, leaving only h(t)=Aδ(t) — whose transform is a flat constant (all-pass), not a rect. Contradiction, so no ideal brick-wall filter is causal.

**Q:** What are the CT Fourier series coefficients of a periodic impulse train, and why?<br>
**A:** aₖ = 1/T for every k, independent of k. The analysis-equation window over one period admits only the single impulse sitting inside it, collapsing the integral to one sifted term before any harmonic structure can appear — so the spectrum of an impulse train is itself a flat impulse train.

**Q:** Why does every ideal filter passband show up twice in the sketch, mirrored about ω=0?<br>
**A:** It's forced by h(t) being real — conjugate symmetry (X(−ω)=X*(ω)) requires |H(ω)| to be even. It's not a drafting convention, it's a consequence of the impulse response being a real signal.


## Week 0.4 Day 2 — complementary pairs and the factoring trick (P4D2)

**Q:** What's the shared structure between the DT two-point average/difference filters and the CT RC lowpass/highpass?<br>
**A:** Both are complementary pairs: DT gives ½(1+z⁻¹) (lowpass) and ½(1−z⁻¹) (highpass) with |H₁|²+|H₂|²=1 and y₁[n]+y₂[n]=x[n]; CT gives the RC lowpass and highpass with H₁(ω)+H₂(ω)=1 by KVL (v_C+v_R=v_S). Same idea, discrete and continuous versions — and the DT pair's cutoffs both land on the same ω_c because equal impedances (|Z_C|=R at ω=1/RC) split the source evenly, mirroring half-power-forces-half-power on the DT side.

**Q:** You have two exponential terms with exponents that differ by a shift (e.g. one at 0, one at −Ω). How do you get them into a form Euler's identity applies to?<br>
**A:** Factor out the *midpoint* of the two exponents, not either endpoint. The remainder then sits symmetrically at ±(half the gap), which is exactly the form Euler's identity needs (a symmetric sum collapses to 2cos, a symmetric difference to 2j·sin). Factoring out anything else leaves an asymmetric pair no identity collapses. Check the factoring by multiplying it back out — a leading e^(+jθ) instead of e^(−jθ) means you factored an advance instead of a delay.

**Q:** Standing sign check for a causal filter's phase response?<br>
**A:** Causal ⇒ phase must be non-increasing (slope ≤ 0) as frequency rises. If a derived phase expression is trending positive, a sign flipped somewhere — this is a fast sanity check, not just a fact about one filter.


## Week 0.4 Day 5 + catch-up — reconstruction (P4D5, P17.2)

**Q:** Derive the ideal reconstruction formula and state its one-line meaning.<br>
**A:** Sifting turns the sampled signal into x_p(t)=Σx(nT)δ(t−nT); the inverse FT of an ideal-LPF rectangle (gain T, cutoff ω_c) is h(t)=(T/πt)sin(ω_ct); convolving and re-sifting gives x_r(t) = (Tω_c/π)Σx(nT)sinc(ω_c(t−nT)/π). One-liner: ideal reconstruction places a scaled sinc at every sample point and sums them — the signal is a weighted sum of shifted copies of the filter's own impulse response, one per sample.

**Q:** Derive causality directly from the convolution integral, instead of citing it as a rule.<br>
**A:** y(t₀) = ∫x(τ)h(t₀−τ)dτ. Substitute s = t₀−τ: then τ>t₀ (a future input) corresponds exactly to s<0. So "h(s)=0 for all s<0" and "y(t₀) never depends on future x(τ)" are the same statement — the convolution flip is what maps a future τ onto a negative argument of h.

**Q:** Three interpolation kernels — rect, triangle, sinc — same reconstruction task. What's the tradeoff, and which causality violations are fixable?<br>
**A:** Rect (time) → sinc-shaped H(ω), lots of sidelobes, non-ideal LPF. Triangle (= rect✻rect) → sinc²-shaped H(ω), sidelobes decay faster, still non-ideal. Sinc (time) → H(ω) is a literal brick wall, the one truly ideal LPF of the three — but it has infinite support in time. Rect/triangle have finite support, so their causality violation is confined to a bounded interval and a finite delay fixes it. Sinc's violation is unbounded (nonzero for every non-integer t, including all t<0) — no finite delay ever makes it causal; it genuinely needs every future sample, forever.


## Week 0.5 Day 5 — Laplace transform and the ROC (P5D5)

**Q:** Why is the Laplace transform at s = σ + jω a Fourier transform? Of what signal?<br>
**A:** X(σ+jω) = F{x(t)e^(−σt)}. The ROC is the set of σ for which the weighted signal's FT converges.

**Q:** X(s) = 1/(s+a). Give both possible time signals and ROCs.<br>
**A:** e^(−at)u(t), Re{s} > −a (right-sided). −e^(−at)u(−t), Re{s} < −a (left-sided).

**Q:** Where is the ROC relative to the poles for right-sided, left-sided, and two-sided signals?<br>
**A:** Right-sided: right of the rightmost pole. Left-sided: left of the leftmost pole. Two-sided: vertical strip between poles.

**Q:** Can an ROC contain a pole? A zero?<br>
**A:** Never a pole; boundaries pass through poles' real parts. Zeros can lie anywhere.

**Q:** Inverse Laplace: where do the 1/j and the limits σ±j∞ come from?<br>
**A:** Change of variables s = σ+jω with σ fixed: ds = j dω gives 1/j; ω = ±∞ maps to σ±j∞.
