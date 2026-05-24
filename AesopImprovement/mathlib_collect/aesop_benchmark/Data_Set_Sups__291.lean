-- Benchmark: Mathlib/Data/Set/Sups.lean:291
-- Original call: aesop
-- Theorem name: Set.sep_infs_le.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Function SetFamily

set_option maxHeartbeats 800000

theorem Set.sep_infs_le.extracted_1_1.{u_2} {α : Type u_2} [inst : SemilatticeInf α] (s t : Set α) (a x : α) : x ∈ {b | b ∈ s ⊼ t ∧ a ≤ b} ↔ x ∈ {b | b ∈ s ∧ a ≤ b} ⊼ {b | b ∈ t ∧ a ≤ b} := by
  aesop
