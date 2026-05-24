-- Benchmark: Mathlib/NumberTheory/Divisors.lean:677
-- Original call: aesop
-- Theorem name: Int.mem_divisorsAntidiag.extracted_1_10
import Mathlib
import Mathlib.Tactic

open Finset

set_option maxHeartbeats 800000

theorem Int.mem_divisorsAntidiag.extracted_1_10 (n x y : ℕ) : (∃ b, x * b = n + 1 ∧ b = y + 1) ↔ x * (y + 1) = n + 1 ∧ ¬False := by
  aesop
