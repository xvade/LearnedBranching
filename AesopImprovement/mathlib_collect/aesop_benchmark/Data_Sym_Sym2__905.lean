-- Benchmark: Mathlib/Data/Sym/Sym2.lean:905
-- Original call: aesop (rule_sets := [Sym2]) (add norm unfold [Sym2.rec, Quot.rec])
-- Theorem name: Sym2.other_invol'.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.other_invol'.extracted_1_1.{u_1} {α : Type u_1} [inst : DecidableEq α] {a : α} (x y : α) (ha : a ∈ s(x, y)) (hb : Mem.other' ha ∈ s(x, y)) : Mem.other' hb = a := by
  aesop (rule_sets := [Sym2]) (add norm unfold [Sym2.rec, Quot.rec])
