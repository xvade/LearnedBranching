-- Benchmark: Mathlib/Order/SupClosed.lean:96
-- Original call: aesop
-- Theorem name: SupClosed.insert_lowerBounds.extracted_1_2.{u_3}
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem SupClosed.insert_lowerBounds.extracted_1_2.{u_3} {α : Type u_3} [inst : SemilatticeSup α] {s : Set α} {a : α} (h : SupClosed s) (ha : a ∈ lowerBounds s) (ha' : ∀ b ∈ s, a ≤ b) : ∀ ⦃a_1 : α⦄, a_1 ∈ insert a s → ∀ ⦃b : α⦄, b ∈ insert a s → a_1 ⊔ b ∈ insert a s := by
  aesop
