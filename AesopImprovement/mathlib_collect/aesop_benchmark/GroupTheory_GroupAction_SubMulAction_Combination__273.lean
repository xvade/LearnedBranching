-- Benchmark: Mathlib/GroupTheory/GroupAction/SubMulAction/Combination.lean:273
-- Original call: aesop
-- Theorem name: Set.powersetCard.isPretransitive_alternatingGroup.extracted_1_2.{u_2}
import Mathlib
import Mathlib.Tactic

open Pointwise MulAction Finset Set Equiv Equiv.Perm

set_option maxHeartbeats 800000

theorem Set.powersetCard.isPretransitive_alternatingGroup.extracted_1_2.{u_2} {α : Type u_2} {n : ℕ} [inst : DecidableEq α] [inst_1 : Fintype α] (hα : 3 ≤ Nat.card α) (hn : Nat.card α < 2 * n) (this : IsPretransitive ↥(alternatingGroup α) ↑(powersetCard α (Nat.card α - n))) (hn' : n ≤ Nat.card α) : n + (Nat.card α - n) = Fintype.card α := by
  aesop
