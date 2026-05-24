-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Chebyshev/Extremal.lean:57
-- Original call: aesop
-- Theorem name: Polynomial.Chebyshev.node_eq_neg_one.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Polynomial Real

set_option maxHeartbeats 800000

theorem Polynomial.Chebyshev.node_eq_neg_one.extracted_1_1 {n : ℕ} (hn : n ≠ 0) : ↑n * π / ↑n = π := by
  aesop
