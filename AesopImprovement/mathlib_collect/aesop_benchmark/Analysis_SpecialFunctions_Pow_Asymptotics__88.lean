-- Benchmark: Mathlib/Analysis/SpecialFunctions/Pow/Asymptotics.lean:88
-- Original call: aesop
-- Theorem name: tendsto_rpow_atBot_of_base_gt_one.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Real Topology NNReal ENNReal Filter ComplexConjugate Finset Set Asymptotics

set_option maxHeartbeats 800000

theorem tendsto_rpow_atBot_of_base_gt_one.extracted_1_1 (b : ℝ) (hb : 1 < b) : 1 < b := by
  aesop
