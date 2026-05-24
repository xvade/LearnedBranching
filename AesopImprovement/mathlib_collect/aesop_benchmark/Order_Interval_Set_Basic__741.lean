-- Benchmark: Mathlib/Order/Interval/Set/Basic.lean:741
-- Original call: aesop
-- Theorem name: Set.Iio_True.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function OrderDual

set_option maxHeartbeats 800000

theorem Set.Iio_True.extracted_1_1 : Iio True = {False} := by
  aesop
