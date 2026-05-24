-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Chebyshev/Orthogonality.lean:65
-- Original call: aesop
-- Theorem name: Polynomial.Chebyshev.intervalIntegrable_sqrt_one_sub_sq_inv.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Real MeasureTheory NNReal

set_option maxHeartbeats 800000

theorem Polynomial.Chebyshev.intervalIntegrable_sqrt_one_sub_sq_inv.extracted_1_1 (x : ℝ) (hx : x ∈ Set.Ioo (min (-1) 1) (max (-1) 1)) : x ≠ -1 := by
  aesop
