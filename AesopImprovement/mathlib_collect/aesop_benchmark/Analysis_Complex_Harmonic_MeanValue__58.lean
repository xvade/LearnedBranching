-- Benchmark: Mathlib/Analysis/Complex/Harmonic/MeanValue.lean:58
-- Original call: aesop
-- Theorem name: HarmonicContOnCl.circleAverage_eq.extracted_1_1
import Mathlib
import Mathlib.Tactic

open InnerProductSpace Metric Real

set_option maxHeartbeats 800000

theorem HarmonicContOnCl.circleAverage_eq.extracted_1_1 {f : ℂ → ℝ} {c : ℂ} {R : ℝ} (h₁f : HarmonicContOnCl f (ball c |R|)) (hR : ¬R = 0) ⦃x : ℂ⦄ (hx : x ∈ {z | ‖z - c‖ ∈ Set.Ioc 0 |R|}) : |R| ≠ 0 := by
  aesop
