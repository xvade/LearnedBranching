-- Benchmark: Mathlib/GroupTheory/Perm/Cycle/Basic.lean:318
-- Original call: aesop
-- Theorem name: Equiv.Perm.swap_isSwap_iff.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Equiv Function Finset

set_option maxHeartbeats 800000

theorem Equiv.Perm.swap_isSwap_iff.extracted_1_1.{u_2} {α : Type u_2} [inst : DecidableEq α] {a b : α} (h : (swap a b).IsSwap) (hab : a = b) : swap a b = 1 := by
  aesop
