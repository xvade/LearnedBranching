-- Benchmark: Mathlib/Data/Rel.lean:273
-- Original call: aesop
-- Theorem name: SetRel.image_id.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.image_id.extracted_1_1.{u_1} {α : Type u_1} (s : Set α) : SetRel.id.image s = s := by
  aesop
