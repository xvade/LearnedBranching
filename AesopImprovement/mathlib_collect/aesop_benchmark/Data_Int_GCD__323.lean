-- Benchmark: Mathlib/Data/Int/GCD.lean:323
-- Original call: aesop
-- Theorem name: pow_mem_range_pow_of_coprime.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem pow_mem_range_pow_of_coprime.extracted_1_1.{u_1} {α : Type u_1} [inst : CommGroupWithZero α] {m n : ℕ} (hmn : m.Coprime n) (a : α) : (∃ c, a = c ^ n) ↔ ∃ y, y ^ n = a := by
  aesop
