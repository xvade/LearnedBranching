-- Benchmark: Mathlib/Combinatorics/Colex.lean:175
-- Original call: aesop
-- Theorem name: Finset.Colex.toColex_le_singleton.extracted_1_7.{u_1}
import Mathlib
import Mathlib.Tactic

open Function Colex

set_option maxHeartbeats 800000

theorem Finset.Colex.toColex_le_singleton.extracted_1_7.{u_1} {α : Type u_1} [inst : PartialOrder α] {s : Finset α} {a : α} (b : α) (x : b ∈ s) (hba : b ≠ a) : ¬b = a → a ∉ s ∧ b ≤ a ↔ b ≤ a ∧ (a ∈ s → b = a) := by
  aesop
