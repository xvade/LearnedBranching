-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Chebyshev/Orthogonality.lean:89
-- Original call: aesop
-- Theorem name: Polynomial.Chebyshev.integral_measureT_eq_integral_cos.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Real MeasureTheory NNReal Set

set_option maxHeartbeats 800000

theorem Polynomial.Chebyshev.integral_measureT_eq_integral_cos.extracted_1_1 (x : ℝ) (hx : x ∈ uIcc 1 (-1)) : -1 ≤ x := by
  aesop
