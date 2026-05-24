-- Benchmark: Mathlib/Data/Set/Sups.lean:161
-- Original call: aesop
-- Theorem name: Set.sep_sups_le.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Function SetFamily

set_option maxHeartbeats 800000

theorem Set.sep_sups_le.extracted_1_1.{u_2} {α : Type u_2} [inst : SemilatticeSup α] (s t : Set α) (a x : α) : x ∈ {b | b ∈ s ⊻ t ∧ b ≤ a} ↔ x ∈ {b | b ∈ s ∧ b ≤ a} ⊻ {b | b ∈ t ∧ b ≤ a} := by
  aesop
