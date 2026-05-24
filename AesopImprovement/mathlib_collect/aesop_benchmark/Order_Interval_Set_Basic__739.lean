-- Benchmark: Mathlib/Order/Interval/Set/Basic.lean:739
-- Original call: aesop (add simp [Ioi, lt_iff_le_not_ge])
-- Theorem name: Set.Iio_True.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Function OrderDual

set_option maxHeartbeats 800000

theorem Set.Iio_True.extracted_1_1 : Iio True = {False} := by
  aesop (add simp [Ioi, lt_iff_le_not_ge])
