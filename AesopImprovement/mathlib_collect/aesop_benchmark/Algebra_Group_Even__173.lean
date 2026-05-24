-- Benchmark: Mathlib/Algebra/Group/Even.lean:173
-- Original call: aesop (add simp zpow_add)
-- Theorem name: Even.isSquare_zpow.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open MulOpposite

set_option maxHeartbeats 800000

theorem Even.isSquare_zpow.extracted_1_1.{u_2} {α : Type u_2} [inst : Group α] {n : ℤ} : Even n → ∀ (a : α), IsSquare (a ^ n) := by
  aesop (add simp zpow_add)
