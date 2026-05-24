-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Inverse.lean:458
-- Original call: aesop
-- Theorem name: Real.cosPartialEquiv.extracted_2
import Mathlib
import Mathlib.Tactic

open Topology Filter Set Real

set_option maxHeartbeats 800000

theorem Real.cosPartialEquiv.extracted_2 (θ : ℝ) (hθ : θ ∈ Icc 0 π) : 0 ≤ θ := by
  aesop
