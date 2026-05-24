-- Benchmark: Mathlib/SetTheory/Cardinal/HasCardinalLT.lean:176
-- Original call: aesop
-- Theorem name: hasCardinalLT_iUnion.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem hasCardinalLT_iUnion.extracted_1_1.{u_3, u_2, u_1} {ι : Type u_1} {X : Type u_2} (S : ι → Set X) {κ : Cardinal.{u_3}} [inst : Fact κ.IsRegular] (hι : HasCardinalLT ι κ) (hS : ∀ (i : ι), HasCardinalLT (↑(S i)) κ) : ⋃ i, S i = setOf (⨆ i, S i) := by
  aesop
