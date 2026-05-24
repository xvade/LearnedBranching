-- Benchmark: Mathlib/Analysis/Complex/Harmonic/Poisson.lean:46
-- Original call: aesop
-- Theorem name: InnerProductSpace.HarmonicOnNhd.circleAverage_re_herglotzRieszKernel_smul.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Complex InnerProductSpace Metric Real Topology

set_option maxHeartbeats 800000

theorem InnerProductSpace.HarmonicOnNhd.circleAverage_re_herglotzRieszKernel_smul.extracted_1_1 {f : ℂ → ℝ} {c w : ℂ} {R : ℝ} (hf : HarmonicOnNhd f (closedBall c R)) (hw : w ∈ ball c R) : closedBall c R ⊆ {x | HarmonicAt f x} := by
  aesop
