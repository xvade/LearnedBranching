-- Benchmark: Mathlib/Data/Sym/Sym2.lean:975
-- Original call: aesop
-- Theorem name: Set.sym2_eq_mk_image.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym Sym2

set_option maxHeartbeats 800000

theorem Set.sym2_eq_mk_image.extracted_1_1.{u_1} {α : Type u_1} {s : Set α} (x y : α) : Quot.mk (Rel α) (x, y) ∈ s.sym2 ↔ Quot.mk (Rel α) (x, y) ∈ uncurry Sym2.mk '' s ×ˢ s := by
  aesop
