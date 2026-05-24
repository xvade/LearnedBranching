-- Benchmark: Mathlib/Combinatorics/Matroid/Closure.lean:370
-- Original call: aesop
-- Theorem name: Matroid.Indep.mem_closure_iff'.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem Matroid.Indep.mem_closure_iff'.extracted_1_1.{u_2} {α : Type u_2} {M : Matroid α} {I : Set α} {x : α} (hI : M.Indep I) (this : I ⊆ M.E) : ¬M.Indep (insert x I) ∧ x ∈ M.E ∨ x ∈ I ↔ x ∈ M.E ∧ (¬M.Indep (insert x I) ∨ x ∈ I) := by
  aesop
