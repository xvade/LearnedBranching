-- Benchmark: Mathlib/Combinatorics/Matroid/Loop.lean:730
-- Original call: aesop
-- Theorem name: Matroid.restrict_isColoop_iff.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem Matroid.restrict_isColoop_iff.extracted_1_1.{u_1} {α : Type u_1} {M : Matroid α} {e : α} {R : Set α} (hRE : R ⊆ M.E) (heR : e ∈ R) : (∀ ⦃C : Set α⦄, M.IsCircuit C ∧ C ⊆ R → e ∉ C) ↔ (¬∃ C ⊆ insert e R, M.IsCircuit C ∧ e ∈ C) ∧ e ∈ R := by
  aesop
