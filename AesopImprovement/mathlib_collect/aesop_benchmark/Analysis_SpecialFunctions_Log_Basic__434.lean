-- Benchmark: Mathlib/Analysis/SpecialFunctions/Log/Basic.lean:434
-- Original call: aesop (add safe forward log_pos)
-- Theorem name: Real.isLittleO_const_log_atTop.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Set Filter Function Topology List Multiset Finset

set_option maxHeartbeats 800000

theorem Real.isLittleO_const_log_atTop.extracted_1_1 {c : ℝ} (x : ℝ) (hx : 1 < x) : log x = 0 → c = 0 := by
  aesop (add safe forward log_pos)
