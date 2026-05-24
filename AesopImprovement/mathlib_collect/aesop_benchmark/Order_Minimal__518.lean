-- Benchmark: Mathlib/Order/Minimal.lean:518
-- Original call: aesop
-- Theorem name: OrderIso.image_setOf_minimal.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Set OrderDual

set_option maxHeartbeats 800000

theorem OrderIso.image_setOf_minimal.extracted_1_1.{u_3, u_2} {α : Type u_2} {β : Type u_3} [inst : Preorder α] [inst_1 : Preorder β] (f : α ≃o β) (P : α → Prop) (x : β) : P (f.symm x) ↔ ∃ x₀, P x₀ ∧ f x₀ = x := by
  aesop
