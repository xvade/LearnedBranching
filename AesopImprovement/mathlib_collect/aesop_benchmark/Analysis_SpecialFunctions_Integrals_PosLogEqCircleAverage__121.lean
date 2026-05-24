-- Benchmark: Mathlib/Analysis/SpecialFunctions/Integrals/PosLogEqCircleAverage.lean:121
-- Original call: aesop
-- Theorem name: circleAverage_log_norm_sub_const₁.extracted_1_4
import Mathlib
import Mathlib.Tactic

open Filter Interval MeasureTheory Metric Real

set_option maxHeartbeats 800000

theorem circleAverage_log_norm_sub_const₁.extracted_1_4 {a : ℂ} (h : ‖a‖ = 1) (ζ : ℝ) (hζ : a⁻¹ = circleMap 0 1 ζ) : a ≠ 0 := by
  aesop
