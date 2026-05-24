-- Benchmark: Mathlib/Analysis/SpecialFunctions/Integrability/LogMeromorphic.lean:97
-- Original call: aesop
-- Theorem name: MeromorphicOn.intervalIntegrable_log.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Filter Interval MeasureTheory MeromorphicOn Metric Real

set_option maxHeartbeats 800000

theorem MeromorphicOn.intervalIntegrable_log.extracted_1_1 {a b : ℝ} {f : ℝ → ℝ} (hf : MeromorphicOn f [[a, b]]) : log ∘ f = fun x => log ‖f x‖ := by
  aesop
