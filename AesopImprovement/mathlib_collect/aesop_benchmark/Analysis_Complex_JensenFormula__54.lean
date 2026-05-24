-- Benchmark: Mathlib/Analysis/Complex/JensenFormula.lean:54
-- Original call: aesop
-- Theorem name: circleAverage_log_norm_factorizedRational.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Filter MeromorphicAt MeromorphicOn Metric Real

set_option maxHeartbeats 800000

theorem circleAverage_log_norm_factorizedRational.extracted_1_1 {R : ℝ} {c : ℂ} (D : Function.locallyFinsuppWithin (closedBall c |R|) ℤ) (h : D.support.Finite) ⦃u : ℂ⦄ : u ∉ ↑h.toFinset → u ∉ Function.support fun u x => ↑(D u) * log ‖x - u‖ := by
  aesop
