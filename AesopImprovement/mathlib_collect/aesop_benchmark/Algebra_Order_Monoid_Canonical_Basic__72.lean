-- Benchmark: Mathlib/Algebra/Order/Monoid/Canonical/Basic.lean:72
-- Original call: aesop
-- Theorem name: forall_le_add_iff_le_left.extracted_1_2.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem forall_le_add_iff_le_left.extracted_1_2.{u_1} {α : Type u_1} [inst : LinearOrder α] {P : α → Prop} {b c : α} [inst_1 : Add α] [inst_2 : CanonicallyOrderedAdd α] [inst_3 : AddLeftMono α] [inst_4 : IsLeftCancelAdd α] : (∀ (a : α), (a < b ∨ ∃ d ≤ c, a = b + d) → P a) ↔ (∀ a < b, P a) ∧ ∀ d ≤ c, P (b + d) := by
  aesop
