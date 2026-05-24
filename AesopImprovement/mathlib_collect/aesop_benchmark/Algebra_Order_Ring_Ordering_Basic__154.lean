-- Benchmark: Mathlib/Algebra/Order/Ring/Ordering/Basic.lean:154
-- Original call: aesop (erase simp neg_mul)
-- Theorem name: RingPreordering.eq_zero_of_mem_of_neg_mem.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem RingPreordering.eq_zero_of_mem_of_neg_mem.extracted_1_1.{u_2} {F : Type u_2} [inst : Field F] {P : RingPreordering F} {x : F} (h : x ∈ P) (h2 : -x ∈ P) (this : ¬x = 0) : -x * x⁻¹ ∈ P := by
  aesop (erase simp neg_mul)
