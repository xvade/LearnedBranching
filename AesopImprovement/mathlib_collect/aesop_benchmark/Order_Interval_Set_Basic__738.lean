-- Benchmark: Mathlib/Order/Interval/Set/Basic.lean:738
-- Original call: aesop
-- Theorem name: Set.Ici_False.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function OrderDual

set_option maxHeartbeats 800000

theorem Set.Ici_False.extracted_1_1 : Ici False = univ := by
  aesop
