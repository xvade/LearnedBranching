-- Benchmark: Mathlib/Algebra/QuadraticAlgebra/Basic.lean:325
-- Original call: aesop
-- Theorem name: QuadraticAlgebra.norm_eq_zero_iff_eq_zero.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem QuadraticAlgebra.norm_eq_zero_iff_eq_zero.extracted_1_1.{u_1} {R : Type u_1} {a b : R} [inst : Field R] [Hab : Fact (∀ (r : R), r ^ 2 ≠ a + b * r)] {z : QuadraticAlgebra R a b} (h : z.im = 0) (hz : z.re = 0) : z = 0 := by
  aesop
