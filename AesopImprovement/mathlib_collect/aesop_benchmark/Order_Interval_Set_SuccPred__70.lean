-- Benchmark: Mathlib/Order/Interval/Set/SuccPred.lean:70
-- Original call: aesop
-- Theorem name: Set.insert_Icc_succ_left_eq_Icc.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

open Order

set_option maxHeartbeats 800000

theorem Set.insert_Icc_succ_left_eq_Icc.extracted_1_4.{u_1} {α : Type u_1} [inst : LinearOrder α] [inst_1 : SuccOrder α] {a b : α} (h : a ≤ b) (x : α) : a ≤ x → a = x → x ≤ b := by
  aesop
