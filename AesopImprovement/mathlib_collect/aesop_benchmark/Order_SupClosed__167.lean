-- Benchmark: Mathlib/Order/SupClosed.lean:167
-- Original call: aesop
-- Theorem name: InfClosed.insert_upperBounds.extracted_1_2.{u_3}
import Mathlib
import Mathlib.Tactic

open Set Finset

set_option maxHeartbeats 800000

theorem InfClosed.insert_upperBounds.extracted_1_2.{u_3} {α : Type u_3} [inst : SemilatticeInf α] {s : Set α} {a : α} (hs : InfClosed s) (ha : a ∈ upperBounds s) (ha' : ∀ b ∈ s, b ≤ a) : ∀ ⦃a_1 : α⦄, a_1 ∈ insert a s → ∀ ⦃b : α⦄, b ∈ insert a s → a_1 ⊓ b ∈ insert a s := by
  aesop
