-- Benchmark: Mathlib/GroupTheory/SpecificGroups/Alternating/MaximalSubgroups.lean:261
-- Original call: aesop
-- Theorem name: alternatingGroup.isCoatom_stabilizer_of_ncard_lt_ncard_compl.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

open Pointwise Equiv.Perm Equiv Set MulAction

set_option maxHeartbeats 800000

theorem alternatingGroup.isCoatom_stabilizer_of_ncard_lt_ncard_compl.extracted_1_4.{u_1} {α : Type u_1} [inst : Fintype α] [inst_1 : DecidableEq α] {s : Set α} (h0 : s.Nontrivial) (hs : s.ncard < sᶜ.ncard) (this_1 : s.ncard + sᶜ.ncard = Nat.card α) (h1 : sᶜ.Nontrivial) (hα : 4 < Nat.card α) (G : Subgroup ↥(alternatingGroup α)) (hG : stabilizer (↥(alternatingGroup α)) s < G) (this : IsPretransitive (↥G) α) {B_1 : Set α} (hB_1 : IsBlock (↥G) B_1) (hB' : ¬B_1.Subsingleton) (not_isBlock_sc : ¬IsBlock (↥G) sᶜ) (B : Set α) (hB : IsBlock (↥G) B) (hBsc : B ⊆ sᶜ) : B ≠ sᶜ := by
  aesop
