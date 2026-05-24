-- Benchmark: Mathlib/GroupTheory/SpecificGroups/Alternating/MaximalSubgroups.lean:57
-- Original call: aesop
-- Theorem name: Equiv.Perm.exists_mem_stabilizer_isThreeCycle_of_two_lt_ncard.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Pointwise Equiv.Perm Equiv Set MulAction

set_option maxHeartbeats 800000

theorem Equiv.Perm.exists_mem_stabilizer_isThreeCycle_of_two_lt_ncard.extracted_1_1.{u_1} {α : Type u_1} [inst : Fintype α] [inst_1 : DecidableEq α] {s : Set α} (a b c : α) (ha : a ∈ s) (hb : b ∈ s) (hc : c ∈ s) (hab : a ≠ b) (hac : a ≠ c) (hbc : b ≠ c) (x : α) (hx : x ∈ s) : (fun x => (swap a b * swap a c)⁻¹ • x) x ∈ s := by
  aesop
