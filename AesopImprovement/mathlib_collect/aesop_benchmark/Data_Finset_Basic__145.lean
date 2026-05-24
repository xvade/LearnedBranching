-- Benchmark: Mathlib/Data/Finset/Basic.lean:145
-- Original call: aesop
-- Theorem name: Finset.erase_eq_iff_eq_insert.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Multiset Subtype Function

set_option maxHeartbeats 800000

theorem Finset.erase_eq_iff_eq_insert.extracted_1_1.{u_1} {α : Type u_1} [inst : DecidableEq α] {s t : Finset α} {a : α} (hs : a ∈ s) (ht : a ∉ t) : s.erase a = t ↔ s = insert a t := by
  aesop
