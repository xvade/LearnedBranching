-- Benchmark: Mathlib/Data/Sym/Sym2.lean:74
-- Original call: aesop (rule_sets := [Sym2])
-- Theorem name: Sym2.Rel.trans.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.Rel.trans.extracted_1_1.{u_1} {α : Type u_1} {x y z : α × α} (a : Rel α x y) (b : Rel α y z) : Rel α x z := by
  aesop (rule_sets := [Sym2])
