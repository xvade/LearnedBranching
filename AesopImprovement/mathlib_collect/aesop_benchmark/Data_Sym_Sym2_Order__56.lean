-- Benchmark: Mathlib/Data/Sym/Sym2/Order.lean:56
-- Original call: aesop (add unsafe le_antisymm)
-- Theorem name: Sym2.inf_eq_inf_and_sup_eq_sup.extracted_1_7.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Sym2.inf_eq_inf_and_sup_eq_sup.extracted_1_7.{u_1} {α : Type u_1} [inst : LinearOrder α] (a b c d : α) (hba : b ≤ a) (hdc : d ≤ c) : s(a, b).inf = s(c, d).inf ∧ s(a, b).sup = s(c, d).sup ↔ s(a, b) = s(c, d) := by
  aesop (add unsafe le_antisymm)
