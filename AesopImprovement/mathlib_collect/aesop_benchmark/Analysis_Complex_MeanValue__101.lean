-- Benchmark: Mathlib/Analysis/Complex/MeanValue.lean:101
-- Original call: aesop
-- Theorem name: circleAverage_of_differentiable_on_off_countable.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Complex Filter Function Metric Real Set Topology

set_option maxHeartbeats 800000

theorem circleAverage_of_differentiable_on_off_countable.extracted_1_1.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℂ E] [inst_2 : CompleteSpace E] {f : ℂ → E} {R : ℝ} {c : ℂ} {s : Set ℂ} (hs : s.Countable) (h₁f : ContinuousOn f (closedBall c |R|)) (h₂f : ∀ z ∈ ball c |R| \ s, DifferentiableAt ℂ f z) (hR : ¬R = 0) : c ∈ ball c |R| := by
  aesop
