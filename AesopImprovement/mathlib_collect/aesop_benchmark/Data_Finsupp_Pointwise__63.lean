-- Benchmark: Mathlib/Data/Finsupp/Pointwise.lean:63
-- Original call: aesop
-- Theorem name: Finsupp.support_mul_subset_right.extracted_1_1.{u₂,
import Mathlib
import Mathlib.Tactic

open Finset

set_option maxHeartbeats 800000

theorem Finsupp.support_mul_subset_right.extracted_1_1.{u₂, u₁} {α : Type u₁} {β : Type u₂} [inst : MulZeroClass β] {g₁ g₂ : α →₀ β} (x : α) (hx : x ∈ (g₁ * g₂).support) : x ∈ g₂.support := by
  aesop
