-- Benchmark: Mathlib/Data/Sym/Sym2.lean:985
-- Original call: aesop
-- Theorem name: Set.sym2_insert.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym Sym2

set_option maxHeartbeats 800000

theorem Set.sym2_insert.extracted_1_1.{u_1} {α : Type u_1} (a : α) (s : Set α) (x y : α) : Quot.mk (Rel α) (x, y) ∈ (insert a s).sym2 ↔ Quot.mk (Rel α) (x, y) ∈ (fun b => s(a, b)) '' insert a s ∪ s.sym2 := by
  aesop
