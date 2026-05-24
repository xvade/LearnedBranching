-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Chebyshev/RootsExtrema.lean:180
-- Original call: aesop
-- Theorem name: Polynomial.Chebyshev.roots_U_real_nodup.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Real

set_option maxHeartbeats 800000

theorem Polynomial.Chebyshev.roots_U_real_nodup.extracted_1_1 (n : ℕ) ⦃x : ℕ⦄ (hx : x ∈ ↑(Finset.range n)) ⦃y : ℕ⦄ (hy : y ∈ ↑(Finset.range n)) (hxy : ↑x + 1 = ↑y + 1) : x = y := by
  aesop
