-- Benchmark: Mathlib/Topology/Order/HullKernel.lean:152
-- Original call: aesop
-- Theorem name: PrimitiveSpectrum.isOpen_iff.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open TopologicalSpace Topology Set Set.Notation Finset

set_option maxHeartbeats 800000

theorem PrimitiveSpectrum.isOpen_iff.extracted_1_1.{u_1} {α : Type u_1} [inst : CompleteLattice α] {T : Set α} [inst_1 : TopologicalSpace α] [inst_2 : IsLower α] (hT : ∀ p ∈ T, InfPrime p) (S : Set ↑T) (h : IsOpen S) : let R := {a | (hull T a)ᶜ ⊆ S}; ⋃₀ {s | s ∈ {S | ∃ a, (hull T a)ᶜ = S} ∧ s ⊆ S} = (hull T (sSup R))ᶜ := by
  aesop
