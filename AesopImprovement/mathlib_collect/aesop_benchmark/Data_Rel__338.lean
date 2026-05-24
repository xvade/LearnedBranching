-- Benchmark: Mathlib/Data/Rel.lean:338
-- Original call: aesop (add simp [Set.subset_def])
-- Theorem name: SetRel.image_subset_iff.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.image_subset_iff.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {R : SetRel α β} {s : Set α} {t : Set β} : R.image s ⊆ t ↔ s ⊆ R.core t := by
  aesop (add simp [Set.subset_def])
