-- Benchmark: Mathlib/Order/SupIndep.lean:350
-- Original call: aesop
-- Theorem name: iSupIndep_def''.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Set Function

set_option maxHeartbeats 800000

theorem iSupIndep_def''.extracted_1_1.{u_3, u_1} {α : Type u_1} {ι : Type u_3} [inst : CompleteLattice α] {t : ι → α} : (∀ (i : ι), Disjoint (t i) (sSup (t '' {j | j ≠ i}))) ↔ ∀ (i : ι), Disjoint (t i) (sSup {a | ∃ j, j ≠ i ∧ t j = a}) := by
  aesop
