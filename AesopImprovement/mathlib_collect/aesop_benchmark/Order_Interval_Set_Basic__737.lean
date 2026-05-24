-- Benchmark: Mathlib/Order/Interval/Set/Basic.lean:737
-- Original call: aesop
-- Theorem name: Set.Iic_True.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function OrderDual

set_option maxHeartbeats 800000

theorem Set.Iic_True.extracted_1_1 : Iic True = univ := by
  aesop
