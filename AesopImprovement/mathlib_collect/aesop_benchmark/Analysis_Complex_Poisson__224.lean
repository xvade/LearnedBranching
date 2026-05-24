-- Benchmark: Mathlib/Analysis/Complex/Poisson.lean:224
-- Original call: aesop
-- Theorem name: DiffContOnCl.circleAverage_re_herglotzRieszKernel_smul.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Complex Metric Real Set

set_option maxHeartbeats 800000

theorem DiffContOnCl.circleAverage_re_herglotzRieszKernel_smul.extracted_1_1.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℂ E] {f : ℂ → E} {R : ℝ} {w : ℂ} [inst_2 : CompleteSpace E] {c : ℂ} (hf : DiffContOnCl ℂ f (ball c R)) (hw : w ∈ ball c R) (hR : 0 < R) ⦃x : ℂ⦄ : x ∈ ball 0 R → (fun z => z + c) x ∈ ball c R := by
  aesop
