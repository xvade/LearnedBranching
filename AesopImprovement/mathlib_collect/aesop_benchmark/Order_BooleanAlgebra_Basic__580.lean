-- Benchmark: Mathlib/Order/BooleanAlgebra/Basic.lean:580
-- Original call: aesop
-- Theorem name: himp_eq_left.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem himp_eq_left.extracted_1_1.{u} {α : Type u} {x y : α} [inst : BooleanAlgebra α] : x ⇨ y = ⊤ ∧ x = ⊤ ↔ x = ⊤ ∧ y = ⊤ := by
  aesop
