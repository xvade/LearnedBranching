-- Benchmark: Mathlib/Logic/Equiv/Basic.lean:745
-- Original call: aesop
-- Theorem name: Equiv.Perm.sumCongr_swap_refl.extracted_1_1.{u_10,
import Mathlib
import Mathlib.Tactic

open Function Sum Nat Subtype

set_option maxHeartbeats 800000

theorem Equiv.Perm.sumCongr_swap_refl.extracted_1_1.{u_10, u_9} {α : Type u_9} {β : Type u_10} [inst : DecidableEq α] [inst_1 : DecidableEq β] (i j : α) : (swap i j).sumCongr (Equiv.refl β) = swap (Sum.inl i) (Sum.inl j) := by
  aesop
