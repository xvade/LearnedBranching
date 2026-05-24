-- Benchmark: Mathlib/Analysis/Complex/Order.lean:78
-- Original call: aesop
-- Theorem name: Complex.sq_nonneg_iff.extracted_1_1
import Mathlib
import Mathlib.Tactic

open ComplexOrder

set_option maxHeartbeats 800000

theorem Complex.sq_nonneg_iff.extracted_1_1 {z : ℂ} : 0 ≤ z.re ^ 2 - z.im ^ 2 ∧ (z.re = 0 ∨ z.im = 0) → z.im = 0 := by
  aesop
