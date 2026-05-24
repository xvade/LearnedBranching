-- Benchmark: Mathlib/Data/Set/Finite/Lattice.lean:234
-- Original call: aesop
-- Theorem name: Set.Finite.of_finite_fibers.extracted_1_1.{v,
import Mathlib
import Mathlib.Tactic

open Set Function

set_option maxHeartbeats 800000

theorem Set.Finite.of_finite_fibers.extracted_1_1.{v, u} {α : Type u} {β : Type v} (f : α → β) {s : Set α} (himage : (f '' s).Finite) (hfibers : ∀ x ∈ f '' s, (s ∩ f ⁻¹' {x}).Finite) (x : α) : x ∈ s → x ∈ ⋃ i ∈ f '' s, s ∩ f ⁻¹' {i} := by
  aesop
