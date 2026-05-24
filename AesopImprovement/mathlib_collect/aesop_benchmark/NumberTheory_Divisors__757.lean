-- Benchmark: Mathlib/NumberTheory/Divisors.lean:757
-- Original call: aesop
-- Theorem name: Int.mul_mem_one_two_three_iff.extracted_1_6
import Mathlib
import Mathlib.Tactic

open Finset

set_option maxHeartbeats 800000

theorem Int.mul_mem_one_two_three_iff.extracted_1_6 {a b : ℤ} : (a, b) ∈ divisorsAntidiag 1 ∨ (a, b) ∈ divisorsAntidiag 2 ∨ (a, b) ∈ divisorsAntidiag 3 ↔ (a, b) = (1, 1) ∨ (a, b) = (-1, -1) ∨ (a, b) = (1, 2) ∨ (a, b) = (2, 1) ∨ (a, b) = (-1, -2) ∨ (a, b) = (-2, -1) ∨ (a, b) = (1, 3) ∨ (a, b) = (3, 1) ∨ (a, b) = (-1, -3) ∨ (a, b) = (-3, -1) := by
  aesop
