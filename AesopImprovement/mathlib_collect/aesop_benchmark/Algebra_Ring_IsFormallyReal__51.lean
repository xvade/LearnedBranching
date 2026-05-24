-- Benchmark: Mathlib/Algebra/Ring/IsFormallyReal.lean:51
-- Original call: aesop
-- Theorem name: IsSumNonzeroSq.isSumSq.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem IsSumNonzeroSq.isSumSq.extracted_1_4.{u_1} {R : Type u_1} [inst : AddMonoid R] [inst_1 : Mul R] {a s : R} (ha : a ≠ 0) (hs : IsSumNonzeroSq s) (hs_ih : IsSumSq s) : IsSumSq (a * a + s) := by
  aesop
