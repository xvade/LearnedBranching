-- Benchmark: Mathlib/Data/Set/Image.lean:328
-- Original call: aesop
-- Theorem name: Set.range_inter_ssubset_iff_preimage_ssubset.extracted_1_2.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem Set.range_inter_ssubset_iff_preimage_ssubset.extracted_1_2.{u_2, u_1} {α : Type u_1} {β : Type u_2} {f : α → β} {s s' : Set β} : (∃ x, x ∈ range f ∩ s' ∧ ¬x ∈ range f ∩ s) ↔ ∃ x, x ∈ f ⁻¹' s' ∧ ¬x ∈ f ⁻¹' s := by
  aesop
