-- Benchmark: Mathlib/Topology/Bases.lean:251
-- Original call: aesop
-- Theorem name: TopologicalSpace.IsTopologicalBasis.isInducing.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set Filter Function Topology

set_option maxHeartbeats 800000

theorem TopologicalSpace.IsTopologicalBasis.isInducing.extracted_1_1.{u_2, u} {α : Type u} [t : TopologicalSpace α] {β : Type u_2} [inst : TopologicalSpace β] {f : α → β} {T : Set (Set β)} (hf : IsInducing f) (h : IsTopologicalBasis T) (a : α) (s : Set α) : s ∈ preimage f '' T ∧ a ∈ s ↔ s ∈ (preimage f ∘ fun t => t) '' {i | i ∈ T ∧ f a ∈ i} := by
  aesop
