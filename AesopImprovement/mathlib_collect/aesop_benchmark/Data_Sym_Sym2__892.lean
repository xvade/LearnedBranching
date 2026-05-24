-- Benchmark: Mathlib/Data/Sym/Sym2.lean:892
-- Original call: aesop (add norm unfold [Sym2.rec, Quot.rec]) (rule_sets := [Sym2])
-- Theorem name: Sym2.other_spec'.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open List Finset Function Sym

set_option maxHeartbeats 800000

theorem Sym2.other_spec'.extracted_1_1.{u_1} {α : Type u_1} [inst : DecidableEq α] {a : α} (x y : α) (h : a ∈ s(x, y)) : s(a, Mem.other' h) = s(x, y) := by
  aesop (add norm unfold [Sym2.rec, Quot.rec]) (rule_sets := [Sym2])
