-- Benchmark: Mathlib/Combinatorics/Matroid/Closure.lean:651
-- Original call: aesop
-- Theorem name: Matroid.IsBase.isBase_insert_diff_of_mem_closure.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem Matroid.IsBase.isBase_insert_diff_of_mem_closure.extracted_1_1.{u_2} {α : Type u_2} {M : Matroid α} {e f : α} {B : Set α} (hB : M.IsBasis B M.E) (he : e ∈ M.closure (insert f B \ {e} ∩ M.E)) (hf : f ∉ M.E) (heB : e ∈ B) ⦃a : α⦄ : a ∈ insert f B \ {e} ∩ M.E → a ∈ B \ {e} := by
  aesop
