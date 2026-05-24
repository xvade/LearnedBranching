-- Benchmark: Mathlib/Algebra/MvPolynomial/Degrees.lean:262
-- Original call: aesop
-- Theorem name: MvPolynomial.ne_zero_of_degreeOf_ne_zero.extracted_1_1.{u_1,
import Mathlib
import Mathlib.Tactic

open Set Function Finsupp AddMonoidAlgebra

set_option maxHeartbeats 800000

theorem MvPolynomial.ne_zero_of_degreeOf_ne_zero.extracted_1_1.{u_1, u} {R : Type u} {σ : Type u_1} [inst : CommSemiring R] {p : MvPolynomial σ R} {i : σ} : degreeOf i p ≠ 0 → p ≠ 0 := by
  aesop
