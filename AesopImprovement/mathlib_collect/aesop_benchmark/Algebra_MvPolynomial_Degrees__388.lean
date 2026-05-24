-- Benchmark: Mathlib/Algebra/MvPolynomial/Degrees.lean:388
-- Original call: aesop
-- Theorem name: MvPolynomial.degreeOf_add_eq_of_degreeOf_lt.extracted_1_1.{u_1,
import Mathlib
import Mathlib.Tactic

open Set Function Finsupp AddMonoidAlgebra

set_option maxHeartbeats 800000

theorem MvPolynomial.degreeOf_add_eq_of_degreeOf_lt.extracted_1_1.{u_1, u} {R : Type u} {σ : Type u_1} [inst : CommSemiring R] {p q : MvPolynomial σ R} {i : σ} (h : degreeOf i q < degreeOf i p) : p.support.Nonempty := by
  aesop
