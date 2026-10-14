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

**Q:** Product in one domain and convolution in the other: write both pairs, say which carries a constant, and say how you tell which operator you meant.<br>
**A:** $y(t)=x(t)\ast h(t)\Leftrightarrow Y(\omega)=X(\omega)H(\omega)$ is a plain product with no constant (derived by $r=t-\tau$ splitting the exponential). $y(t)=x(t)p(t)\Leftrightarrow Y(\omega)=\frac{1}{2\pi}\big[X(\omega)\ast P(\omega)\big]$. The $\frac{1}{2\pi}$ is what makes a reconstructed spectrum proportional to the original rather than equal to it. The operator follows the operation in the other domain. Once convolution in time has been shown to disappear in frequency, a periodized signal is $\tilde X(\omega)=X(\omega)P(\omega)$, not $X\ast P$. Notation guard: a convolution over $n$ has everything lowercase with brackets ($x[n]$), and over $\Omega$ everything uppercase with parentheses ($X(\Omega)$). DT spectra use $\Omega$, never $\omega$, and a sequence is never convolved with a frequency response, so $x[n]\ast H(\Omega)$ is a type error.


## Week 0.5 Day 1 — flagged "worth a card" (P18.5, today)

**Q:** Sampling (C/D) and pure frequency relabeling (Ω = ωT) both relate ω and Ω. Do both introduce a 1/T amplitude scaling?<br>
**A:** No. The 1/T scaling comes specifically from impulse-train sampling itself (the C/D operation, via convolution with the impulse comb). Pure axis relabeling — G(Ω) = H(ΩT₀), no sampling involved — introduces no scaling factor. Same-looking substitution, mechanically different operation.


## Recurring errors, never carded despite 3+ appearances

**Q:** What's the difference between correctly applying the sifting property and just hand-waving at it?<br>
**A:** Sifting is a substitution, not a deletion: it consumes the integral/sum over the delta AND replaces every instance of the integration/summation variable with the delta's argument. If an ∫ or Σ survives, or the original variable survives anywhere in the result, the step isn't finished. (Hit this wrong four different ways in one session, P3D5.)

**Q:** Standing check when an inequality or index passes through a negation or a reciprocal ($u(t-\tau+1)$, $x[n-k]$ with $k<0$, $m=-n$, $|z^{-1}|<b$)?<br>
**A:** Any order-reversing map flips the inequality, so convert once and then test with a number. Negation: $u(t-\tau+1)=1$ when $t-\tau+1>0$, which is $\tau<t+1$. That is a single ceiling, so $t+1$ is an upper limit and the floor must come from the other step. Negated index: in $\sum_k h[k]x[n-k]$, $k<0$ gives $x[n+|k|]$, the future. A change of variable $m=-n$ goes into every occurrence, including $z^{-n}\to z^{m}$ and the limits. Reciprocal: $|r^{-1}|<\tfrac12$ means $|r|>2$, and a bound $b$ becomes $1/b$, so $|z^{-1}|<1$ gives $|z|>1$. Check by picking one value on each side of the claimed boundary and testing it in the original inequality. An answer like $-1<\mathrm{Re}\{s\}<-2$ is an empty set, which signals a reversal. Write the edges as labeled expressions over a common denominator, then compare integers.

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

**Q:** $X(s)=\frac{1}{s+a}$: give both possible time signals and ROCs. Then, for a pole at $s=p$ of either sign, what exponent does it contribute?<br>
**A:** $e^{-at}u(t)$ with $\mathrm{Re}\{s\}>-a$ (right-sided), or $-e^{-at}u(-t)$ with $\mathrm{Re}\{s\}<-a$ (left-sided). By pole location: a pole at $s=p$ contributes $e^{pt}$, so the pole is the exponent and not its negative. $\frac{1}{s-2}$ is $e^{2t}u(t)$ with $\mathrm{Re}\{s\}>2$, not $e^{-2t}$, and $3e^{2t}$ has its pole at $s=+2$. If unsure, redo the integral: $\int_0^\infty e^{pt}e^{-st}\,dt=\frac{1}{s-p}$, which converges for $\mathrm{Re}\{s\}>p$. The ROC edge must equal the pole’s real part.

**Q:** Where is the ROC relative to the poles for right-sided, left-sided, and two-sided signals?<br>
**A:** Right-sided: right of the rightmost pole. Left-sided: left of the leftmost pole. Two-sided: vertical strip between poles.

**Q:** Can an ROC contain a pole? A zero?<br>
**A:** Never a pole; boundaries pass through poles' real parts. Zeros can lie anywhere.

**Q:** Inverse Laplace: where do the 1/j and the limits σ±j∞ come from?<br>
**A:** Change of variables s = σ+jω with σ fixed: ds = j dω gives 1/j; ω = ±∞ maps to σ±j∞.


## Week 0.7 Day 2 — Butterworth and the bilinear transform (P7D2)

**Q:** From $B(s)B(-s)$, which pole of each mirrored pair goes to $B(s)$, and why does that guarantee stability?<br>
**A:** The left-half-plane pole. Stability requires $\int_{-\infty}^{\infty}|h(\tau)|\,d\tau<\infty$ (bounded input gives bounded output), not finite energy. For $h(t)=e^{s_kt}u(t)$, $|e^{s_k\tau}|=e^{\sigma_k\tau}$, so this needs $\sigma_k<0$. The mirror $-s_k^*$ has real part $-\sigma_k>0$ and diverges.

**Q:** Derive the bilinear map from $\frac{dy}{dt}=x(t)$.<br>
**A:** $H(s)=1/s$. Trapezoid gives $\hat{y}[n]=\hat{y}[n-1]+\frac{T}{2}\{\hat{x}[n-1]+\hat{x}[n]\}$, so $\hat{H}(z)=\frac{T}{2}\frac{1+z^{-1}}{1-z^{-1}}$. Matching $1/s$ gives $s=\frac{2}{T}\frac{1-z^{-1}}{1+z^{-1}}$.

**Q:** Set $z=e^{j\Omega}$, $s=j\omega$ in the bilinear map. What relation results, and what does it cover?<br>
**A:** Factor out $e^{-j\Omega/2}$ to get $\omega=\frac{2}{T}\tan\frac{\Omega}{2}$, so $\Omega=2\arctan\frac{\omega T}{2}$. The infinite $j\omega$-axis folds onto the unit circle minus $z=-1$, which is approached as $\omega\to\pm\infty$ but never reached. A linear map cannot send an infinite axis onto a finite arc.

**Q:** With no aliasing, how do $H(e^{j\Omega})$ and $H_a(j\omega)$ relate under each method?<br>
**A:** Impulse invariance: $\Omega=\omega T$ and $H(e^{j\Omega})=\frac{1}{T}H_a(j\omega)$, so $H_a$ is $T$ times the DT height. Bilinear: $\omega=\frac{2}{T}\tan\frac{\Omega}{2}$ with no amplitude factor. A constant DT band stays rectangular under both, and a ramp stays straight only under impulse invariance (under bilinear it bends, concave for $\omega>0$).

**Q:** Does the final DT filter depend on the $T$ chosen in the design?<br>
**A:** No. $T$ is a free placeholder. The analog specs change with $T$, but the map back cancels it, so $H(e^{j\Omega})$ is unchanged. Covers the cut P24.5(d) and P24.8.

**Q:** Show that the bilinear transformation sends a stable, causal $H_a(s)$ to a stable, causal $H(z)$. Where does a pole $s_k=\sigma_k+j\omega_k$ land?<br>
**A:** Invert $s=\frac{2}{T}\frac{1-z^{-1}}{1+z^{-1}}$ to get $z=\frac{2/T+s}{2/T-s}$. Then $|z|^2=\frac{(2/T+\sigma_k)^2+\omega_k^2}{(2/T-\sigma_k)^2+\omega_k^2}$, which is less than $1$ exactly when $\sigma_k<0$. So left-half-plane poles land inside the unit circle, the right half-plane goes outside, and the $j\omega$-axis lands on the circle. Check with $H_a(s)=\frac{1}{s+a}$ at $T=2$: the pole moves to $z=\frac{1-a}{1+a}$, which has magnitude below $1$ for $a>0$. Every pole lands inside the unit circle, so the causal ROC (outside the outermost pole) contains $|z|=1$, and $H(z)$ is causal and stable.


## Week 0.7 Day 3 — recurring errors (P7D3 review)

**Q:** You just finished a line of algebra where a sign, coefficient, or factor could have been dropped. Which independent checks have actually caught your errors?<br>
**A:** Test the result against something the algebra did not use. (1) Special value: plug $n=0$, $\Omega=0$, or $z\to\infty$ into both the before and after lines. Partial fractions matched at two points but not as an identity gave $0$ versus $1$ at $z\to\infty$. (2) Multiply a factoring back out, which exposed the $e^{-j\Omega/4}$ error. (3) Initial value: a causal result from rest must satisfy $y[0]=h[0]x[0]$. (4) Range and units: $\Omega=2\pi f/f_s$ must land in $(-\pi,\pi]$, so $31.9\ \text{kHz}>22.05\ \text{kHz}$ flagged a missing $f_s$. Carry radians ($\omega=2\pi f$) through every line. (5) Write each distributed factor explicitly, because both terms of a two-term sum need the $\tfrac12$. Run the check before moving to the next line.

**Q:** When you set up a geometric series, which two checks prevent the standard slips?<br>
**A:** (1) Count terms as upper minus lower plus one. For the length-4 pulse, $n=0,\dots,3$ is 4 terms, so $X(\Omega)=\sum_{n=0}^{3}e^{-j\Omega n}=\frac{1-e^{-j4\Omega}}{1-e^{-j\Omega}}$, with exponent $4$ and not $2$. A sum over $m=0,\dots,n$ has $n+1$ terms. Test with $N=1$, where $\frac{1-a}{1-a}$ must give $1$. (2) Combine factors with the same power into one base before summing: $\sum_k(\tfrac12)^ke^{-j\omega k}=\sum_k(\tfrac12e^{-j\omega})^k=\frac{1}{1-\frac12e^{-j\omega}}$. Splitting into two series and multiplying their closed forms is invalid, because $\sum a_kb_k\neq(\sum a_k)(\sum b_k)$.

**Q:** What initial condition makes a difference equation’s response the impulse response, and what does a measurement rig do wrong if it skips it?<br>
**A:** Initial rest: $y[-1]=y[-2]=\dots=0$ and $x[n]=0$ for $n<0$. The equation describes an LTI, causal system only when it starts at rest, and the response to $\delta[n]$ from rest is $h[n]$. “LTI” and “causal” are consequences of rest, not the condition itself. In the harness, state left in a static or an uncleared object puts the previous run’s tail into $y[n-1]$. Run 2 then computes $(1-a)\cdot 1+a\cdot(\text{tail})$ instead of $(1-a)\cdot 1+a\cdot 0$. The result is a wrong $h[n]$ that still looks like a plausible decaying exponential, with no crash and no warning. Fix: the system owns its state and exposes reset(), and measure calls reset() before every run.

**Q:** A measurement or test “passes.” What do you check to know it could have failed?<br>
**A:** (1) State the criterion tightly: “flat at $0$ dB,” not “flat.” A loop that runs zero times leaves $h=0$ and a flat $-240$ dB floor that imitates a pass. (2) Confirm what is being compared: writing raw $x$ instead of $|X|$ made two non-spectra “match,” and result[0] printed five times looks like five agreeing bins. (3) Calibrate on a system with a known answer first (pass-through, $H[k]=1$), so a wrong result can only mean the rig is broken. (4) Compute the prediction in code from the parameters (for example $f_s-f_h$) and never hardcode it. Measure at the predicted bin rather than taking a global max when a stronger component sits elsewhere.

**Q:** A summation index shows up in your final answer, but the left side has no such index (for example $X_p(\omega)=\frac1T X(\omega-n\omega_s)$). What went wrong, and what are the index rules for Fourier sums?<br>
**A:** The $\sum$ went missing. The index $n$ is bound by the sum, so it cannot appear free on the right unless it appears on the left. After applying a shift to one term, put the sum back: $X_p(\omega)=\frac1T\sum_{k}X(\omega-k\omega_s)$. Use a different letter for each role (impulse index $n$ in $\sum_n\delta(t-nT)$, harmonic index $k$ in $a_k$), and keep the summand in the same index as its sum. The harmonic index $k$ runs over all integers, not from $-T/2$ to $T/2$, since the number of harmonics cannot depend on the period’s numeric value.

**Q:** Right-sided ROC: “right of the rightmost pole” in the $s$-plane. What is the rule in the $z$-plane, and how do you test stability and causality together?<br>
**A:** In $s$, right-sided means $\mathrm{Re}\{s\}$ greater than the rightmost pole’s real part. In $z$, right-sided means $|z|$ greater than the outermost pole (largest $|z|$), a region outside a circle. It is never “rightmost” or “innermost.” A causal system’s ROC extends out to $z=\infty$. Stable means the ROC contains the unit circle (the $j\omega$ axis in $s$), so causal and stable requires every pole inside $|z|=1$. Example: poles at $z=1$ and $z=2$ with causal ROC $|z|>2$ exclude the unit circle, so the system is unstable.

**Q:** Derive the spectrum of $x_d[n]=x[2n]$ and state when decimation by $N$ is safe. Which way does the frequency axis scale?<br>
**A:** Let $p[n]=\frac{1+(-1)^n}{2}$ and $y[n]=x[n]p[n]$, which keeps even samples and zeros the odd ones. Since $(-1)^n=e^{j\pi n}$, modulation gives $Y(\Omega)=\tfrac12X(\Omega)+\tfrac12X(\Omega-\pi)$, with the $\tfrac12$ on both terms. Now $y$ is the zero-insertion (expansion) of $x_d$, and expansion by $2$ gives $Y(\Omega)=X_d(2\Omega)$. So $X_d(\Omega)=Y(\Omega/2)=\tfrac12X\!\left(\tfrac{\Omega}{2}\right)+\tfrac12X\!\left(\tfrac{\Omega}{2}-\pi\right)$. The argument $\Omega/2$ stretches the axis by $2$, so the shift of $\pi$ inside the argument is $2\pi$ in $\Omega$. The expander compresses instead, so a feature at $\Omega_0$ lands where $2\Omega=\Omega_0$, found by solving and not by plugging in. For general $N$, $X_d(\Omega)=\frac1N\sum_{k=0}^{N-1}X\!\left(\frac{\Omega-2\pi k}{N}\right)$. The $N$ copies do not overlap iff $\Omega_M<\pi/N$, which is why you low-pass at $\pi/N$ before decimating. Decimation compresses the data, not time: the sampling period becomes $NT$.

**Q:** A closed-form spectrum such as $X(\omega)=\frac{2\sin(\omega T_1/2)}{\omega}$, or an $a_k$ formula, is $0/0$ at $\omega=0$ (or $k=0$). How do you get the value?<br>
**A:** Do not fight the indeterminate expression. Evaluate the original definition at that point, or use L’Hôpital. At $\omega=0$ the defining integral is $X(0)=\int_{-T_1/2}^{T_1/2}1\,dt=T_1$. At $k=0$ the analysis equation is the DC average, $a_0=\frac{1}{T_0}\int_{T_0}x(t)\,dt$. L’Hôpital agrees: $\lim_{\omega\to0}\frac{2\sin(\omega T_1/2)}{\omega}=T_1$. Cross-check both ways when you can. The peak value is the signal’s area for $X(0)$ and its mean for $a_0$.

**Q:** Write $A\cos(\omega_0t+\varphi)$ and $A\sin(\omega_0t+\varphi)$ as exponentials. What stays tied together, and what happens when a conjugate pair collapses back?<br>
**A:** $A\cos(\omega_0t+\varphi)=\frac A2e^{j\varphi}e^{j\omega_0t}+\frac A2e^{-j\varphi}e^{-j\omega_0t}$, and $A\sin(\omega_0t+\varphi)=\frac{A}{2j}e^{j\varphi}e^{j\omega_0t}-\frac{A}{2j}e^{-j\varphi}e^{-j\omega_0t}$. The phase sign travels with the frequency sign: the $-\omega_0$ term carries $e^{-j\varphi}$, never $e^{+j\varphi}$, so the two coefficients are complex conjugates. Collapsing a conjugate pair gives $2\,\mathrm{Re}\{\cdot\}$, so the factor $2$ comes back: $a_{\pm1}=\frac19$ gives $\frac29\cos(\omega_0t)$, not $\frac19\cos(\omega_0t)$. Check at $t=0$: the two terms must sum to a real number, $A\cos\varphi$.


## Week 0.7 Day 3 — forgotten concepts (P7D3 review)

**Q:** Derive $x[n]\cos(\Omega_0n)\leftrightarrow\frac12X(\Omega-\Omega_0)+\frac12X(\Omega+\Omega_0)$, then say for which $\Omega_0$ the copies do not overlap when $X$ has half-width $\Omega_M$.<br>
**A:** Write $\cos(\Omega_0n)=\frac12e^{j\Omega_0n}+\frac12e^{-j\Omega_0n}$. For one exponential, $\sum_nx[n]e^{j\Omega_0n}e^{-j\Omega n}=\sum_nx[n]e^{-j(\Omega-\Omega_0)n}=X(\Omega-\Omega_0)$. The exponential is absorbed into the transform’s argument, so nothing is computed and the spectrum is translated without reshaping. Linearity then gives one copy shifted right and one shifted left, each at half height. The result is a function of $\Omega$ alone, with no stray $n$ in the exponent. A cosine has impulses only at $\pm\Omega_0$, so the origin is empty (modulation relocates), whereas an impulse train has a $k=0$ impulse and replicates. Every DT spectrum is $2\pi$-periodic, so the copies avoid overlap iff $\Omega_M<\Omega_0<\pi-\Omega_M$. The lower bound has a CT analogue. The upper bound (the $+\Omega_0$ copy meeting the periodic image of the $-\Omega_0$ copy at $2\pi-\Omega_0$) does not, so in DT raising the carrier cannot cure overlap. Copies that merely touch where both are zero are not aliased.

**Q:** Derive the vector method for $|H(j\omega)|$ and $\angle H(j\omega)$ from the pole-zero plot, and say what mirroring about the real axis does.<br>
**A:** Write $H(s)=K\frac{\prod_i(s-z_i)}{\prod_k(s-p_k)}$ and set $s=j\omega$. Each factor $j\omega-c$ is the vector from the point $c$ to the point $j\omega$. Magnitudes multiply and divide: $|H(j\omega)|=|K|\frac{\prod_i|j\omega-z_i|}{\prod_k|j\omega-p_k|}$. Angles add and subtract: $\angle H=\angle K+\sum_i\angle(j\omega-z_i)-\sum_k\angle(j\omega-p_k)$. The pole vector alone is not enough, because the zero vectors count too. A zero on the $j\omega$ axis gives a null where its vector has length $0$, so the phase there is a limit, for example $\omega\to0^+$. Limits at $\omega\to\infty$ come from the vector lengths converging to a ratio, not from “$\infty/\infty$.” For real $h$, poles and zeros come in conjugate pairs, and mirroring about the real axis negates angles (it does not add $\pi$), so $|H|$ is even and $\angle H$ is odd.

**Q:** Derive the effective CT frequency response $H_{\text{eff}}(\omega)$ of C/D, a DT filter $H(\Omega)$, and D/C, and say why the ideal D/C filter has gain $T$.<br>
**A:** With no aliasing, impulse-train sampling gives $X_p(\omega)=\frac1TX_c(\omega)$ on $|\omega|<\pi/T$, and $X(\Omega)=X_p(\Omega/T)$ is a pure relabeling $\Omega=\omega T$ with no extra scale. Filtering gives $Y(\Omega)=H(\Omega)X(\Omega)$. D/C relabels back, $Y_p(\omega)=Y(\omega T)$, and the ideal reconstruction filter must undo the $\frac1T$, so its gain is $T$ and not $1$: $Y_c(\omega)=T\,Y(\omega T)$ on $|\omega|<\pi/T$. Therefore $Y_c(\omega)=H(\omega T)X_c(\omega)$, so $H_{\text{eff}}(\omega)=H(\omega T)$ for $|\omega|<\pi/T$ and $0$ elsewhere. Two separate facts: $X(\Omega)$ reduces to its $k=0$ replica because $x_c$ was band-limited, and $\Omega=\omega T$ is the D/C substitution. They share a numerical range but are independent steps.


## Week 0.7 Day 3 — deferred cards, now unblocked (P7D3 review)

**Q:** Derive the relationship between the DTFT and the $z$-transform, and say when it holds.<br>
**A:** $X(z)=\sum_nx[n]z^{-n}$. Put $z=re^{j\Omega}$: $X(re^{j\Omega})=\sum_n\big(x[n]r^{-n}\big)e^{-j\Omega n}$, which is the DTFT of $x[n]r^{-n}$ (the DT twin of the Laplace transform being the Fourier transform of $x(t)e^{-\sigma t}$). At $r=1$ the weighting disappears, so $X(e^{j\Omega})=X(z)\big|_{z=e^{j\Omega}}$. This holds when the unit circle lies in the ROC. Check: $H(z)=\frac{1-\frac12z^{-1}}{1-\frac45z^{-1}}$ with ROC $|z|>\frac45$ contains the circle, so $H(e^{j\Omega})$ exists. A pole at $z=1$ sits on the circle, which is then not in the ROC, so this route gives no DTFT.

**Q:** What does moving off the unit circle ($|z|=r\neq1$) buy you over the DTFT?<br>
**A:** The weighting $r^{-n}$ can force convergence. $x[n]=2^nu[n]$ is not absolutely summable, so it has no DTFT, but $\sum_n(2/r)^n$ converges for $r>2$ and gives $\frac{1}{1-2z^{-1}}$ with ROC $|z|>2$. The ROC is exactly the set of radii that make $x[n]r^{-n}$ transformable, and its edges are pole magnitudes. One picture therefore shows causality (outside the outermost pole), stability (circle inside the ROC), and pole placement. It also extends the eigenfunction property: $z_0^n\to H(z_0)z_0^n$, where the eigenvalue is $H(z_0)$ and not $H(z)$, and only for $z_0$ in the ROC. Absolute summability is sufficient for a DTFT, not necessary, so a failed test does not settle divergence. Check the sum directly.

**Q:** Derive the closed-loop response of a plant $H$ with feedback $G$, say what decides stability, and show why proportional-only feedback cannot stabilize the inverted pendulum while PD can.<br>
**A:** With negative feedback, $e=x-Gy$ and $y=He$, so $y(1+GH)=Hx$ and $Q(s)=\frac{H(s)}{1+G(s)H(s)}$. Nothing used continuity, so the same form holds in $z$. Stability is set by the zeros of $1+GH$ (the closed-loop poles), not by the size of the loop gain $GH$. Pendulum with open-loop poles $\pm\omega_0$ and plant constant $c$: proportional only gives $s^2+(K_1c-\omega_0^2)$. The poles slide together toward the origin as $K_1c\to\omega_0^2$, collide at $s=0$, then split to $\pm j\sqrt{K_1c-\omega_0^2}$. There is no $s^1$ term, so the poles are mirror images and the best case is marginal. Derivative only gives $s^2+K_2c\,s-\omega_0^2$, where the pole product stays $-\omega_0^2<0$, so one right-half-plane pole exists for every $K_2$. PD gives $s^2+K_2c\,s+(K_1c-\omega_0^2)$ with both coefficients positive, so it is stable iff $K_1c>\omega_0^2$ and $K_2c>0$. $K_1$ sets the pole product and $K_2$ sets the damping.
