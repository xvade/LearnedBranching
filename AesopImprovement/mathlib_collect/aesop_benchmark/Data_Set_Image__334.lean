-- Benchmark: Mathlib/Data/Set/Image.lean:334
-- Original call: aesop
-- Theorem name: Set.range_inter_ssubset_iff_preimage_ssubset.extracted_1_11.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem Set.range_inter_ssubset_iff_preimage_ssubset.extracted_1_11.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f : α → β} {s s' : Set β} (r : f ⁻¹' s ⊆ f ⁻¹' s') ⦃x : β⦄ (hx : (∃ y, f y = x) ∧ x ∈ s) : x ∈ s' := by
  aesop
