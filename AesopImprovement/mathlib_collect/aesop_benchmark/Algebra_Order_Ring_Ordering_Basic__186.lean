-- Benchmark: Mathlib/Algebra/Order/Ring/Ordering/Basic.lean:186
-- Original call: aesop
-- Theorem name: RingPreordering.isOrdering_iff.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem RingPreordering.isOrdering_iff.extracted_1_4.{u_1} {R : Type u_1} [inst : CommRing R] {P : RingPreordering R} (h : ∀ (a b : R), -(a * b) ∈ P → a ∈ P ∨ b ∈ P) (this_1 : HasMemOrNegMem P) {x y : R} (x_1 : x * y ∈ P.support) (this_2 : ¬(x ∈ P.support ∨ y ∈ P.support)) (this_3 : -(-x * y) ∈ P → -x ∈ P ∨ y ∈ P) (this_4 : -(-x * -y) ∈ P → -x ∈ P ∨ -y ∈ P) (this_5 : -(x * y) ∈ P → x ∈ P ∨ y ∈ P) (this : -(x * -y) ∈ P → x ∈ P ∨ -y ∈ P) : x ∈ P ∨ -x ∈ P := by
  aesop
