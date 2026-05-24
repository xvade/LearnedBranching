-- Benchmark: Mathlib/Algebra/Order/Ring/Ordering/Basic.lean:60
-- Original call: aesop
-- Theorem name: RingPreordering.inv_mem.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem RingPreordering.inv_mem.extracted_1_1.{u_2} {F : Type u_2} [inst : Field F] {P : RingPreordering F} {a : F} (ha : a ∈ P) : a * (a⁻¹ * a⁻¹) ∈ P := by
  aesop
