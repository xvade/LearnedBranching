-- Benchmark: Mathlib/GroupTheory/GroupAction/MultiplePrimitivity.lean:156
-- Original call: aesop
-- Theorem name: MulAction.isMultiplyPreprimitive_ofStabilizer.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Pointwise Cardinal SubMulAction

set_option maxHeartbeats 800000

theorem MulAction.isMultiplyPreprimitive_ofStabilizer.extracted_1_1.{u_2, u_1} (M : Type u_1) (α : Type u_2) [inst : Group M] [inst_1 : MulAction M α] [inst_2 : IsPretransitive M α] {n : ℕ} {a : α} [inst_3 : IsMultiplyPreprimitive M α n.succ] (h1 : n ≥ 1) {s : Set ↥(ofStabilizer M a)} (hs : s.encard + 1 = ↑n) : a ∉ Subtype.val '' s := by
  aesop
