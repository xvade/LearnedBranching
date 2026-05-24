-- Benchmark: Mathlib/Data/Sym/Sym2.lean:87
-- Original call: aesop (rule_sets := [Sym2])
-- Theorem name: Sym2.rel_iff'.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.rel_iff'.extracted_1_1.{u_1} {α : Type u_1} {p q : α × α} : Rel α p q ↔ p = q ∨ p = q.swap := by
  aesop (rule_sets := [Sym2])
