-- Benchmark: Mathlib/Analysis/SpecialFunctions/Integrals/PosLogEqCircleAverage.lean:64
-- Original call: aesop
-- Theorem name: circleAverage_log_norm_sub_const₀.extracted_1_9
import Mathlib
import Mathlib.Tactic

open Filter Interval MeasureTheory Metric Real

set_option maxHeartbeats 800000

theorem circleAverage_log_norm_sub_const₀.extracted_1_9 (x : ℂ) (hx : x ∈ closedBall 0 |1|) : ‖x‖ ≤ 1 := by
  aesop
