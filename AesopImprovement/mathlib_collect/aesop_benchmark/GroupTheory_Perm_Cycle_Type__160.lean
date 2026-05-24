-- Benchmark: Mathlib/GroupTheory/Perm/Cycle/Type.lean:160
-- Original call: aesop
-- Theorem name: Equiv.Perm.card_fixedPoints.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset List Equiv Multiset

set_option maxHeartbeats 800000

theorem Equiv.Perm.card_fixedPoints.extracted_1_1.{u_1} {α : Type u_1} [inst : Fintype α] [inst_1 : DecidableEq α] (σ : Perm α) : Finset.filter (Membership.mem (Function.fixedPoints ⇑σ)) Finset.univ = σ.supportᶜ := by
  aesop
