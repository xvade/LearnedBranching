-- Benchmark: Mathlib/Order/Interval/Set/Basic.lean:736
-- Original call: aesop
-- Theorem name: Set.Iic_False.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function OrderDual

set_option maxHeartbeats 800000

theorem Set.Iic_False.extracted_1_1 : Iic False = {False} := by
  aesop
