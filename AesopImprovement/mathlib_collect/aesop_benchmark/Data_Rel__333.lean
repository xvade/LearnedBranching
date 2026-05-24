-- Benchmark: Mathlib/Data/Rel.lean:333
-- Original call: aesop
-- Theorem name: SetRel.core_id.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SetRel.core_id.extracted_1_1.{u_2} {β : Type u_2} (t : Set β) : SetRel.id.core t = t := by
  aesop
