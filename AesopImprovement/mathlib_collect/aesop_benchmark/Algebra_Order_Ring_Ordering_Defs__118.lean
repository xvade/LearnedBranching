-- Benchmark: Mathlib/Algebra/Order/Ring/Ordering/Defs.lean:118
-- Original call: aesop
-- Theorem name: RingPreordering.copy.extracted_5.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem RingPreordering.copy.extracted_5.{u_1} {R : Type u_1} [inst : CommRing R] (P : RingPreordering R) (S : Set R) (hS : S = ↑P) {a b : R} (ha : a ∈ S) (hb : b ∈ S) : a + b ∈ S := by
  aesop
