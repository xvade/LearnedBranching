-- Benchmark: Mathlib/NumberTheory/Divisors.lean:657
-- Original call: aesop
-- Theorem name: Int.mem_divisorsAntidiag.extracted_1_6
import Mathlib
import Mathlib.Tactic

open Finset

set_option maxHeartbeats 800000

theorem Int.mem_divisorsAntidiag.extracted_1_6 (n x y : ℕ) : ((∃ b, (x * b = n ∧ ¬n = 0) ∧ False) ∨ (0 = n ∧ ¬n = 0) ∧ x = 0 ∧ ∃ x, x = y + 1) ↔ (x * (y + 1) = 0 ∧ n = 0) ∧ ¬n = 0 := by
  aesop
