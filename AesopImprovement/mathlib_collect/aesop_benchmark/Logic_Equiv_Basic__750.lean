-- Benchmark: Mathlib/Logic/Equiv/Basic.lean:750
-- Original call: aesop
-- Theorem name: Equiv.Perm.sumCongr_refl_swap.extracted_1_1.{u_10,
import Mathlib
import Mathlib.Tactic

open Function Sum Nat Subtype

set_option maxHeartbeats 800000

theorem Equiv.Perm.sumCongr_refl_swap.extracted_1_1.{u_10, u_9} {α : Type u_9} {β : Type u_10} [inst : DecidableEq α] [inst_1 : DecidableEq β] (i j : β) : sumCongr (Equiv.refl α) (swap i j) = swap (Sum.inr i) (Sum.inr j) := by
  aesop
