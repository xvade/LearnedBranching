-- Benchmark: Mathlib/Algebra/Polynomial/Laurent.lean:149
-- Original call: aesop
-- Theorem name: LaurentPolynomial.C_apply.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Polynomial Function AddMonoidAlgebra Finsupp LaurentPolynomial

set_option maxHeartbeats 800000

theorem LaurentPolynomial.C_apply.extracted_1_1.{u_1} {R : Type u_1} [inst : Semiring R] (t : R) (n : ℤ) : (if 0 = n then t else 0) = if n = 0 then t else 0 := by
  aesop
