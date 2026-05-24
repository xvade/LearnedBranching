-- Benchmark: Mathlib/Algebra/Order/Monoid/Canonical/Basic.lean:112
-- Original call: aesop
-- Theorem name: exists_le_add_iff_le_right.extracted_1_2.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem exists_le_add_iff_le_right.extracted_1_2.{u_1} {α : Type u_1} [inst : LinearOrder α] {P : α → Prop} {b c : α} [inst_1 : AddCommMagma α] [inst_2 : CanonicallyOrderedAdd α] [inst_3 : AddLeftMono α] [inst_4 : IsLeftCancelAdd α] : (∃ a, (a < c ∨ ∃ d ≤ b, a = d + c) ∧ P a) ↔ (∃ a < c, P a) ∨ ∃ d ≤ b, P (d + c) := by
  aesop
