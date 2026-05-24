-- Benchmark: Mathlib/Analysis/Complex/JensenFormula.lean:165
-- Original call: aesop
-- Theorem name: MeromorphicOn.circleAverage_log_norm.extracted_1_5
import Mathlib
import Mathlib.Tactic

open Filter MeromorphicAt MeromorphicOn Metric Real

set_option maxHeartbeats 800000

theorem MeromorphicOn.circleAverage_log_norm.extracted_1_5 {c : ℂ} {R : ℝ} {f : ℂ → ℂ} (hR : R ≠ 0) (h₁f : MeromorphicOn f (closedBall c |R|)) : let CB := closedBall c |R|; (¬∀ u ∈ CB, meromorphicOrderAt f u ≠ ⊤) → ¬∀ (u : ↑(closedBall c |R|)), meromorphicOrderAt f ↑u ≠ ⊤ := by
  aesop
