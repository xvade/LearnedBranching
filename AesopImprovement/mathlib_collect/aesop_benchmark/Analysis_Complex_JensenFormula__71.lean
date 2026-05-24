-- Benchmark: Mathlib/Analysis/Complex/JensenFormula.lean:71
-- Original call: aesop
-- Theorem name: circleAverage_log_norm_factorizedRational.extracted_1_3
import Mathlib
import Mathlib.Tactic

open Filter MeromorphicAt MeromorphicOn Metric Real

set_option maxHeartbeats 800000

theorem circleAverage_log_norm_factorizedRational.extracted_1_3 {R : ℝ} {c : ℂ} (D : Function.locallyFinsuppWithin (closedBall c |R|) ℤ) (h : D.support.Finite) ⦃u : ℂ⦄ : (u ∈ Function.support fun u => ↑(D u) * log R) → u ∈ ↑h.toFinset := by
  aesop
