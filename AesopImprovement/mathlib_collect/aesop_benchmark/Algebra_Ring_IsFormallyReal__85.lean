-- Benchmark: Mathlib/Algebra/Ring/IsFormallyReal.lean:85
-- Original call: aesop
-- Theorem name: AddSubsemigroup.closure_mul_self.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem AddSubsemigroup.closure_mul_self.extracted_1_1.{u_1} {R : Type u_1} [inst : AddMonoid R] [inst_1 : Mul R] (x : R) (hx : x ∈ {x | ∃ x_1, x_1 ≠ 0 ∧ x_1 * x_1 = x}) : x ∈ ↑(sumNonzeroSq R) := by
  aesop
