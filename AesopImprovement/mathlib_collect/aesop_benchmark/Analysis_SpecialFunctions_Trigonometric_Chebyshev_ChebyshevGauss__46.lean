-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Chebyshev/ChebyshevGauss.lean:46
-- Original call: aesop
-- Theorem name: Polynomial.Chebyshev.exp_sub_one_ne_zero.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Real Polynomial Finset Complex

set_option maxHeartbeats 800000

theorem Polynomial.Chebyshev.exp_sub_one_ne_zero.extracted_1_1 {n : ℕ} {k : ℤ} (hn : n ≠ 0) (hk : Complex.exp (↑k / ↑n * ↑π * I) = 1) (m : ℤ) (hx : ↑k / ↑n * ↑π * I = ↑m * (2 * ↑π * I)) : ↑n ≠ 0 := by
  aesop
