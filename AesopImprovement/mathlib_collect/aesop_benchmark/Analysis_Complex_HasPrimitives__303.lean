-- Benchmark: Mathlib/Analysis/Complex/HasPrimitives.lean:303
-- Original call: aesop
-- Theorem name: Complex.IsConservativeOn.isExactOn_univ.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Complex MeasureTheory Metric Set Topology Interval

set_option maxHeartbeats 800000

theorem Complex.IsConservativeOn.isExactOn_univ.extracted_1_1.{u_1} {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℂ E] {f : ℂ → E} [inst_2 : CompleteSpace E] (h₁ : Continuous f) (h₂ : IsConservativeOn f univ) (z : ℂ) (a : z ∈ univ) (h₃ : IsConservativeOn f (ball 0 (‖z‖ + 1))) : z ∈ ball 0 (‖z‖ + 1) := by
  aesop
