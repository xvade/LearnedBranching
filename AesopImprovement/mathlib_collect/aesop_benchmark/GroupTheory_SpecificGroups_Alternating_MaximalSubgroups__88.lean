-- Benchmark: Mathlib/GroupTheory/SpecificGroups/Alternating/MaximalSubgroups.lean:88
-- Original call: aesop
-- Theorem name: alternatingGroup.stabilizer.surjective_toPerm.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Pointwise Equiv.Perm Equiv Set MulAction

set_option maxHeartbeats 800000

theorem alternatingGroup.stabilizer.surjective_toPerm.extracted_1_1.{u_1} {α : Type u_1} [inst : Fintype α] [inst_1 : DecidableEq α] {s : Set α} (a : α) (ha : a ∈ sᶜ) (b : α) (hb : b ∈ sᶜ) (hab : a ≠ b) : a ≠ b ∧ _root_.Disjoint s ↑(swap a b).support := by
  aesop
