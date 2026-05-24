-- Benchmark: Mathlib/AlgebraicTopology/SimplexCategory/Basic.lean:35
-- Original call: aesop
-- Theorem name: SimplexCategory.instFiniteHom__stdin.extracted_1
import Mathlib
import Mathlib.Tactic

open Simplicial CategoryTheory Limits

set_option maxHeartbeats 800000

theorem SimplexCategory.instFiniteHom__stdin.extracted_1 {a b : SimplexCategory} (x x_1 : a ⟶ b) (x_2 : (fun f => (Hom.toOrderHom f).toFun) x = (fun f => (Hom.toOrderHom f).toFun) x_1) : x = x_1 := by
  aesop
