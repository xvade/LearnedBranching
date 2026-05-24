-- Benchmark: Mathlib/Algebra/MvPolynomial/Basic.lean:870
-- Original call: aesop (add simp mem_coeffs_iff)
-- Theorem name: MvPolynomial.coeffs_mul_X.extracted_1_1.{u_1,
import Mathlib
import Mathlib.Tactic

open Set Function Finsupp AddMonoidAlgebra Pointwise

set_option maxHeartbeats 800000

theorem MvPolynomial.coeffs_mul_X.extracted_1_1.{u_1, u} {R : Type u} {σ : Type u_1} [inst : CommSemiring R] (p : MvPolynomial σ R) (n : σ) : (p * X n).coeffs = p.coeffs := by
  aesop (add simp mem_coeffs_iff)
