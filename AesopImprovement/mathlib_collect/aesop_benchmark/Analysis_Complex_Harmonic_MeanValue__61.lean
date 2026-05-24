-- Benchmark: Mathlib/Analysis/Complex/Harmonic/MeanValue.lean:61
-- Original call: aesop
-- Theorem name: HarmonicContOnCl.circleAverage_eq.extracted_1_2
import Mathlib
import Mathlib.Tactic

open InnerProductSpace Metric Real

set_option maxHeartbeats 800000

theorem HarmonicContOnCl.circleAverage_eq.extracted_1_2 {f : ℂ → ℝ} {c : ℂ} {R : ℝ} (h₁f : HarmonicContOnCl f (ball c |R|)) (hR : ¬R = 0) (H : ContinuousOn (circleAverage f c) (Set.Ioc 0 |R|)) : 0 < |R| := by
  aesop
