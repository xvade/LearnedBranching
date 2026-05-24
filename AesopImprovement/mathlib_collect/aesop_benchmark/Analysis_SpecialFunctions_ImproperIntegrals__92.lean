-- Benchmark: Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean:92
-- Original call: aesop
-- Theorem name: integral_exp_mul_complex_Ioi.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Real Set Filter MeasureTheory Topology

set_option maxHeartbeats 800000

theorem integral_exp_mul_complex_Ioi.extracted_1_1 {a : ℂ} (ha : a.re < 0) : a ≠ 0 := by
  aesop
