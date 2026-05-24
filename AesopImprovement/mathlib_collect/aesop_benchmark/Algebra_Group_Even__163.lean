-- Benchmark: Mathlib/Algebra/Group/Even.lean:163
-- Original call: aesop (add simp Commute.mul_zpow)
-- Theorem name: IsSquare.zpow.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open MulOpposite

set_option maxHeartbeats 800000

theorem IsSquare.zpow.extracted_1_1.{u_2} {α : Type u_2} [inst : DivisionMonoid α] {a : α} (n : ℤ) : IsSquare a → IsSquare (a ^ n) := by
  aesop (add simp Commute.mul_zpow)
