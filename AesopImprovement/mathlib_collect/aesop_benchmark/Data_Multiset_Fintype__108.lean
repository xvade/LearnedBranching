-- Benchmark: Mathlib/Data/Multiset/Fintype.lean:108
-- Original call: aesop
-- Theorem name: Multiset.toEnumFinset_filter_eq.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Multiset.toEnumFinset_filter_eq.extracted_1_1.{u_1} {α : Type u_1} [inst : DecidableEq α] (m : Multiset α) (a : α) : {x ∈ m.toEnumFinset | x.1 = a} = {a} ×ˢ Finset.range (count a m) := by
  aesop
