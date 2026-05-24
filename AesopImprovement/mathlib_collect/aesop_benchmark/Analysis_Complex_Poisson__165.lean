-- Benchmark: Mathlib/Analysis/Complex/Poisson.lean:165
-- Original call: aesop
-- Theorem name: DiffContOnCl.circleAverage_re_smul_on_ball_zero.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Complex Metric Real Set

set_option maxHeartbeats 800000

theorem DiffContOnCl.circleAverage_re_smul_on_ball_zero.extracted_1_1.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℂ E] {f : ℂ → E} {R : ℝ} [inst_2 : CompleteSpace E] (hf : DiffContOnCl ℂ f (ball 0 R)) (hR : 0 < R) (hw : 0 ∈ ball 0 R) (z : ℂ) (hz : z ∈ sphere 0 R) : z ≠ 0 := by
  aesop
