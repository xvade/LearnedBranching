-- Benchmark: Mathlib/Combinatorics/Matroid/Circuit.lean:323
-- Original call: aesop
-- Theorem name: Matroid.indep_iff_forall_subset_not_isCircuit'.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem Matroid.indep_iff_forall_subset_not_isCircuit'.extracted_1_3.{u_1} {α : Type u_1} {M : Matroid α} {I : Set α} : ¬((∃ C ⊆ I, M.IsCircuit C) ∧ I ⊆ M.E) ∧ I ⊆ M.E ↔ (∀ C ⊆ I, ¬M.IsCircuit C) ∧ I ⊆ M.E := by
  aesop
