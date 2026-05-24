-- Benchmark: Mathlib/GroupTheory/SpecificGroups/Alternating/MaximalSubgroups.lean:141
-- Original call: aesop
-- Theorem name: alternatingGroup.stabilizer_ne_top.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Pointwise Equiv.Perm Equiv Set MulAction

set_option maxHeartbeats 800000

theorem alternatingGroup.stabilizer_ne_top.extracted_1_1.{u_1} {α : Type u_1} [inst : Fintype α] [inst_1 : DecidableEq α] {s : Set α} (a : α) (ha : a ∈ s) (b : α) (hb : b ∈ sᶜ) (c : α) (hc : c ∈ sᶜ) (hbc : b ≠ c) : swap a b * swap a c ∈ alternatingGroup α := by
  aesop
