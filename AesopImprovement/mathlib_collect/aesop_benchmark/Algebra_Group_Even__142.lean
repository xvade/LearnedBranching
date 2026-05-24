-- Benchmark: Mathlib/Algebra/Group/Even.lean:142
-- Original call: aesop (add simp Commute.mul_pow)
-- Theorem name: IsSquare.pow.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open MulOpposite

set_option maxHeartbeats 800000

theorem IsSquare.pow.extracted_1_1.{u_2} {α : Type u_2} [inst : Monoid α] {a : α} (n : ℕ) (ha : IsSquare a) : IsSquare (a ^ n) := by
  aesop (add simp Commute.mul_pow)
