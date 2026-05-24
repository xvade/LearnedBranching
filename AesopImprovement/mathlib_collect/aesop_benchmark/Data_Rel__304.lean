-- Benchmark: Mathlib/Data/Rel.lean:304
-- Original call: aesop (add simp [Set.subset_def])
-- Theorem name: SetRel.inter_dom_subset_preimage_image.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.inter_dom_subset_preimage_image.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {R : SetRel α β} {s : Set α} : s ∩ R.dom ⊆ R.preimage (R.image s) := by
  aesop (add simp [Set.subset_def])
