-- Benchmark: Mathlib/RingTheory/MvPolynomial/Ideal.lean:82
-- Original call: aesop
-- Theorem name: MvPolynomial.idealOfVars_eq_restrictSupportIdeal.extracted_1_7.{u_2,
import Mathlib
import Mathlib.Tactic

open Finset Finsupp

set_option maxHeartbeats 800000

theorem MvPolynomial.idealOfVars_eq_restrictSupportIdeal.extracted_1_7.{u_2, u_1} {σ : Type u_1} {R : Type u_2} [inst : CommSemiring R] ⦃x : σ →₀ ℕ⦄ (hx : x ∈ ⇑degree ⁻¹' Set.Ici 1) : x.support.Nonempty := by
  aesop
