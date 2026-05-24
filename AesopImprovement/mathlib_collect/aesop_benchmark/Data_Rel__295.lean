-- Benchmark: Mathlib/Data/Rel.lean:295
-- Original call: aesop
-- Theorem name: SetRel.image_eq_cod_of_dom_subset.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.image_eq_cod_of_dom_subset.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {R : SetRel α β} {s : Set α} (h : R.dom ⊆ s) : R.image s = R.cod := by
  aesop
