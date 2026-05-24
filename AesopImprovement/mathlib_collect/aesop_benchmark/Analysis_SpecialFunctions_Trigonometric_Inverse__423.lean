-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Inverse.lean:423
-- Original call: aesop
-- Theorem name: Real.sinPartialEquiv.extracted_3
import Mathlib
import Mathlib.Tactic

open Topology Filter Set Real

set_option maxHeartbeats 800000

theorem Real.sinPartialEquiv.extracted_3 (θ : ℝ) (hθ : θ ∈ Icc (-(π / 2)) (π / 2)) : -(π / 2) ≤ θ := by
  aesop
