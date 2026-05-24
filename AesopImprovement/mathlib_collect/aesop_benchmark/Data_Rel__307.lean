-- Benchmark: Mathlib/Data/Rel.lean:307
-- Original call: aesop (add simp [Set.subset_def])
-- Theorem name: SetRel.inter_cod_subset_image_preimage.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.inter_cod_subset_image_preimage.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {R : SetRel α β} {t : Set β} : t ∩ R.cod ⊆ R.image (R.preimage t) := by
  aesop (add simp [Set.subset_def])
