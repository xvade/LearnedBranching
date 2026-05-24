-- Benchmark: Mathlib/Algebra/Ring/IsFormallyReal.lean:93
-- Original call: aesop
-- Theorem name: AddSubsemigroup.closure_mul_self.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem AddSubsemigroup.closure_mul_self.extracted_1_3.{u_1} {R : Type u_1} [inst : AddMonoid R] [inst_1 : Mul R] {a s : R} (ha : a ≠ 0) (hs : IsSumNonzeroSq s) (ih : s ∈ closure {x | ∃ x_1, x_1 ≠ 0 ∧ x_1 * x_1 = x}) : a * a ∈ {x | ∃ x_1, x_1 ≠ 0 ∧ x_1 * x_1 = x} := by
  aesop
