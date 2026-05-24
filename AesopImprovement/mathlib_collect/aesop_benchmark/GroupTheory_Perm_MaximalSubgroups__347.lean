-- Benchmark: Mathlib/GroupTheory/Perm/MaximalSubgroups.lean:347
-- Original call: aesop
-- Theorem name: Equiv.Perm.isCoatom_stabilizer_of_ncard_lt_ncard_compl.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Pointwise Set Equiv MulAction Equiv.Perm SubMulAction

set_option maxHeartbeats 800000

theorem Equiv.Perm.isCoatom_stabilizer_of_ncard_lt_ncard_compl.extracted_1_1.{u_2} {α : Type u_2} [inst : Finite α] {s : Set α} (h0 : s.Nonempty) (hα : s.ncard < sᶜ.ncard) : sᶜ ≠ ∅ := by
  aesop
