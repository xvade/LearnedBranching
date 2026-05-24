-- Benchmark: Mathlib/Analysis/Complex/Poisson.lean:183
-- Original call: aesop
-- Theorem name: DiffContOnCl.circleAverage_re_smul_on_ball_zero.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

open Complex Metric Real Set

set_option maxHeartbeats 800000

theorem DiffContOnCl.circleAverage_re_smul_on_ball_zero.extracted_1_3.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℂ E] {f : ℂ → E} {R : ℝ} {w : ℂ} [inst_2 : CompleteSpace E] (hf : DiffContOnCl ℂ f (ball 0 R)) (hw : w ∈ ball 0 R) (hR : 0 < R) (h₁w : w ≠ 0) : let W := ↑R * cexp (↑w.arg * I); let q := ‖w‖ / R; 0 < q → q < 1 → (∀ {x : ℂ}, ‖x‖ ≤ R → ↑q * x - W ≠ 0) → ∀ z ∈ sphere 0 R, z ≠ 0 := by
  aesop
