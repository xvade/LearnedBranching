-- Benchmark: Mathlib/Data/Int/GCD.lean:311
-- Original call: aesop
-- Theorem name: Commute.pow_eq_pow_iff_of_coprime.extracted_1_6.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Commute.pow_eq_pow_iff_of_coprime.extracted_1_6.{u_1} {α : Type u_1} [inst : GroupWithZero α] {a b : α} {m n : ℕ} (hab : Commute a b) (hmn : m.Coprime n) (h : a ^ m = b ^ n) (h_1 : ¬m = 0) (h_2 : ¬n = 0) (hb : ¬b = 0) (ha : ¬a = 0) : Commute b b := by
  aesop
