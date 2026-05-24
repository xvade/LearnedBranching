-- Benchmark: Mathlib/Algebra/Order/Ring/Ordering/Defs.lean:76
-- Original call: aesop
-- Theorem name: RingPreordering.mul_self_mem.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem RingPreordering.mul_self_mem.extracted_1_1.{u_1} {R : Type u_1} [inst : CommRing R] (P : RingPreordering R) (x : R) : x * x ∈ P := by
  aesop
