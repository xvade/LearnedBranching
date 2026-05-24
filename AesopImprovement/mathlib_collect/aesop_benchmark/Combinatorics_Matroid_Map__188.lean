-- Benchmark: Mathlib/Combinatorics/Matroid/Map.lean:188
-- Original call: aesop
-- Theorem name: Matroid.comap_loopyOn.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set Function Set.Notation

set_option maxHeartbeats 800000

theorem Matroid.comap_loopyOn.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} (f : α → β) (E : Set β) : ((loopyOn E).comap f).E = f ⁻¹' E ∧ ∀ X ⊆ ((loopyOn E).comap f).E, ((loopyOn E).comap f).Indep X → X = ∅ := by
  aesop
