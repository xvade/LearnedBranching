-- Benchmark: Mathlib/Analysis/Complex/Order.lean:83
-- Original call: aesop
-- Theorem name: Complex.sq_nonpos_iff.extracted_1_1
import Mathlib
import Mathlib.Tactic

open ComplexOrder

set_option maxHeartbeats 800000

theorem Complex.sq_nonpos_iff.extracted_1_1 {z : ℂ} : z.re ^ 2 - z.im ^ 2 ≤ 0 ∧ (z.re = 0 ∨ z.im = 0) → z.re = 0 := by
  aesop
