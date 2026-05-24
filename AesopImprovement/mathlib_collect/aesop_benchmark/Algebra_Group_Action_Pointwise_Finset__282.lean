-- Benchmark: Mathlib/Algebra/Group/Action/Pointwise/Finset.lean:282
-- Original call: aesop
-- Theorem name: Nat.decidablePred_mem_vadd_set.extracted_2
import Mathlib
import Mathlib.Tactic

open Function MulOpposite Pointwise RightActions

set_option maxHeartbeats 800000

theorem Nat.decidablePred_mem_vadd_set.extracted_2 {s : Set ℕ} (a n : ℕ) : (∃ y ∈ s, a + y = n) ↔ a ≤ n ∧ n - a ∈ s := by
  aesop
