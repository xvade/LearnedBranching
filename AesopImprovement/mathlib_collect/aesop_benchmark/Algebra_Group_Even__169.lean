-- Benchmark: Mathlib/Algebra/Group/Even.lean:169
-- Original call: aesop (add simp div_eq_mul_inv)
-- Theorem name: IsSquare.div.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open MulOpposite

set_option maxHeartbeats 800000

theorem IsSquare.div.extracted_1_1.{u_2} {α : Type u_2} [inst : DivisionCommMonoid α] {a b : α} (ha : IsSquare a) (hb : IsSquare b) : IsSquare (a / b) := by
  aesop (add simp div_eq_mul_inv)
