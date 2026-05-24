-- Benchmark: Mathlib/Analysis/SpecialFunctions/ContinuousFunctionalCalculus/Rpow/IntegralRepresentation.lean:132
-- Original call: aesop
-- Theorem name: Real.rpowIntegrand₀₁_apply_mul'.extracted_1_1
import Mathlib
import Mathlib.Tactic

open MeasureTheory Set Filter NNReal Topology

set_option maxHeartbeats 800000

theorem Real.rpowIntegrand₀₁_apply_mul'.extracted_1_1 {p t x : ℝ} (hp : p ∈ Ioo 0 1) (ht : 0 ≤ t) (hx : 0 ≤ x) : p - 1 + 1 ≠ 0 := by
  aesop
