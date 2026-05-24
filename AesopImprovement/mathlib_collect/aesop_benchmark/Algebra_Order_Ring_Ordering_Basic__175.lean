-- Benchmark: Mathlib/Algebra/Order/Ring/Ordering/Basic.lean:175
-- Original call: aesop
-- Theorem name: RingPreordering.isOrdering_iff.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem RingPreordering.isOrdering_iff.extracted_1_1.{u_1} {R : Type u_1} [inst : CommRing R] {P : RingPreordering R} (x : P.IsOrdering) (a b : R) (x_1 : -(a * b) ∈ P) (this : ¬(a ∈ P ∨ b ∈ P)) : -a ∈ P := by
  aesop
