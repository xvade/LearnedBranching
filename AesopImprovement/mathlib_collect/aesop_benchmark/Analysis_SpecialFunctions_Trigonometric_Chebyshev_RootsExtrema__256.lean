-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Chebyshev/RootsExtrema.lean:256
-- Original call: aesop
-- Theorem name: Polynomial.Chebyshev.isLocalExtr_T_real_iff.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Real

set_option maxHeartbeats 800000

theorem Polynomial.Chebyshev.isLocalExtr_T_real_iff.extracted_1_1 {n : ℕ} (hn : 2 ≤ n) (x : ℝ) (hx : ↑n * eval x (U ℝ (↑n - 1)) = 0) : ↑n ≠ 0 := by
  aesop
