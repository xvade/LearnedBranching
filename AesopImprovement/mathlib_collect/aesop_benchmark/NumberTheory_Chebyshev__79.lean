-- Benchmark: Mathlib/NumberTheory/Chebyshev.lean:79
-- Original call: aesop
-- Theorem name: Chebyshev.theta_nonneg.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Nat Finset Real ArithmeticFunction Nat.Prime

set_option maxHeartbeats 800000

theorem Chebyshev.theta_nonneg.extracted_1_1 (x : ℝ) (n : ℕ) (hn : n ∈ {p ∈ Ioc 0 ⌊x⌋₊ | Nat.Prime p}) : 1 ≤ ↑n := by
  aesop
