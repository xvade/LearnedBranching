-- Benchmark: Mathlib/Combinatorics/Colex.lean:187
-- Original call: aesop
-- Theorem name: Finset.Colex.singleton_le_toColex.extracted_1_5.{u_1}
import Mathlib
import Mathlib.Tactic

open Function Colex

set_option maxHeartbeats 800000

theorem Finset.Colex.singleton_le_toColex.extracted_1_5.{u_1} {α : Type u_1} [inst : PartialOrder α] {s : Finset α} {a : α} (h : a ∉ s) : (a ∉ s → ∃ b ∈ s, ¬b = a ∧ a ≤ b) ↔ ∃ x ∈ s, a ≤ x := by
  aesop
