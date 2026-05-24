-- Benchmark: Mathlib/Data/Rel.lean:330
-- Original call: aesop
-- Theorem name: SetRel.core_univ.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.core_univ.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {R : SetRel α β} : R.core Set.univ = Set.univ := by
  aesop
