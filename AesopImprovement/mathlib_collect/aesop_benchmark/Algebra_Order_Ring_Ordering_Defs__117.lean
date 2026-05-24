-- Benchmark: Mathlib/Algebra/Order/Ring/Ordering/Defs.lean:117
-- Original call: aesop
-- Theorem name: RingPreordering.copy.extracted_7.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem RingPreordering.copy.extracted_7.{u_1} {R : Type u_1} [inst : CommRing R] (P : RingPreordering R) (S : Set R) (hS : S = ↑P) : 0 ∈ S := by
  aesop
