-- Benchmark: Mathlib/Data/Sym/Sym2.lean:70
-- Original call: aesop (rule_sets := [Sym2])
-- Theorem name: Sym2.Rel.symm.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.Rel.symm.extracted_1_1.{u_1} {α : Type u_1} {x y : α × α} : Rel α x y → Rel α y x := by
  aesop (rule_sets := [Sym2])
