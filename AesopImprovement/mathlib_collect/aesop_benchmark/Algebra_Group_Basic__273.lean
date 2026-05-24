-- Benchmark: Mathlib/Algebra/Group/Basic.lean:273
-- Original call: aesop
-- Theorem name: eq_iff_eq_of_mul_eq_mul.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem eq_iff_eq_of_mul_eq_mul.extracted_1_1.{u_1} {α : Type u_1} [inst : CancelCommMonoid α] {a b c d : α} (h : a * b = c * d) : a = c ↔ b = d := by
  aesop
