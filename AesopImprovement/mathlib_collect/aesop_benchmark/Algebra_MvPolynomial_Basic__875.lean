-- Benchmark: Mathlib/Algebra/MvPolynomial/Basic.lean:875
-- Original call: aesop (add simp mem_coeffs_iff)
-- Theorem name: MvPolynomial.coeffs_X_mul.extracted_1_1.{u_1,
import Mathlib
import Mathlib.Tactic

open Set Function Finsupp AddMonoidAlgebra Pointwise

set_option maxHeartbeats 800000

theorem MvPolynomial.coeffs_X_mul.extracted_1_1.{u_1, u} {R : Type u} {σ : Type u_1} [inst : CommSemiring R] (p : MvPolynomial σ R) (n : σ) : (X n * p).coeffs = p.coeffs := by
  aesop (add simp mem_coeffs_iff)
