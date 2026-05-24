-- Benchmark: Mathlib/Analysis/Complex/MeanValue.lean:115
-- Original call: aesop
-- Theorem name: DiffContOnCl.circleAverage.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Complex Filter Function Metric Real Set Topology

set_option maxHeartbeats 800000

theorem DiffContOnCl.circleAverage.extracted_1_1.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℂ E] [inst_2 : CompleteSpace E] {f : ℂ → E} {R : ℝ} {c : ℂ} (hf : DiffContOnCl ℂ f (ball c |R|)) (hR : ¬R = 0) : c ∈ ball c |R| := by
  aesop
