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


## Week 0.1 Day 3 — PS3 closeout cards

**Q:** Building u(2−3t) in the order shift → reflect → scale-by-3, derive the shift amount for step 1.
**A:** Write the target in expanded form matching the template u(−at+s): u(2−3t) = u(−3t+2), so a=3, s=2. Shift left by s=2 first (NOT the function's true jump location, 2/3) — the scaling that comes *after* will divide that shift back down: s/a = 2/3. General rule for this order: required first shift = a × (true jump location).

**Q:** To reflect u(t+k), why is u(−(t+k)) wrong?
**A:** Reflection means substitute t→−t into the *current* expression's bare t only: u(t+k) → u(−t+k). Writing u(−(t+k)) instead negates the whole quantity, giving u(−t−k) — a different operation (that's reflect-then-shift-with-flipped-sign, not shift-then-reflect).

**Q:** For u(2−3t), what does the factored form −3(t−2/3) tell you that the expanded form −3t+2 doesn't, and vice versa?
**A:** Factored form gives the function's true, order-independent jump location (2/3) — a property of the function itself. Expanded form's constant term gives the shift amount to use in *step 1*, but only if you've committed to a specific build order (here, shift→reflect→scale); the two numbers answer different questions and aren't interchangeable.

**Q:** Does showing that swapping the order of a cascade (e.g. G∘F vs F∘G) gives equal outputs prove either system is linear?
**A:** No — these are different questions. Linearity: one system's response to a *scaled sum of inputs* (input varies, system fixed). Commutativity: whether two *systems* give the same output in either order (system order varies, input fixed). Equal outputs under swapped cascade order proves the two systems commute — nothing about either one's internal linearity.

**Q:** Why does H[x[n]]+G[x[n]] = G[x[n]]+H[x[n]] hold even when H is nonlinear?
**A:** It's just p+q=q+p for two numbers — a property of addition, not of the systems being added. Contrast with cascade combination: that is NOT automatically commutative; when two systems' cascade *does* commute (as verified here for linear G, F), that's a genuine, checkable property of that specific pair.

**Q:** Why does one counterexample disprove "every cascade of two nonlinear systems is nonlinear," while proving "every cascade of two LTI systems is LTI" needs a general argument?
**A:** The first is a universal claim ("for all pairs, P holds") — false the moment a single pair violates it, so one counterexample (e.g. reciprocal∘reciprocal = identity, which is linear) suffices. Proving a universal claim true requires covering every case, which is why P3.10(a)'s proof substitutes through arbitrary T₁, T₂ rather than checking an example.

**Q:** How do you expand (1+t¹⁰)/(1+t²) as a finite sum of powers of t, to feed a linear rule like T[tᵏ]=cos(kt)?
**A:** Match to the finite geometric series 1+r+r²+...+rⁿ⁻¹ = (1−rⁿ)/(1−r) with r=−t², n=5: (1−(−t²)⁵)/(1−(−t²)) = (1+t¹⁰)/(1+t²). So the sum is Σₙ₌₀⁴(−t²)ⁿ = 1−t²+t⁴−t⁶+t⁸ — direct rematch of the PS2 finite-geometric-series slip.
