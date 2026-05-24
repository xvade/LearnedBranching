-- Benchmark: Mathlib/NumberTheory/ArithmeticFunction/Misc.lean:159
-- Original call: aesop
-- Theorem name: ArithmeticFunction.sigma_eq_zero.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Finset Nat Batteries.ExtendedBinder

set_option maxHeartbeats 800000

theorem ArithmeticFunction.sigma_eq_zero.extracted_1_1 {k n : ℕ} (hn : n ≠ 0) : ∑ d ∈ n.divisors, d ^ k = 0 ↔ n = 0 := by
  aesop
