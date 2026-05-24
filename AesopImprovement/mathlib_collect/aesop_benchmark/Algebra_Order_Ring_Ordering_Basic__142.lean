-- Benchmark: Mathlib/Algebra/Order/Ring/Ordering/Basic.lean:142
-- Original call: aesop (add simp sub_eq_add_neg)
-- Theorem name: RingPreordering.hasIdealSupport_of_isUnit_two.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem RingPreordering.hasIdealSupport_of_isUnit_two.extracted_1_1.{u_1} {R : Type u_1} [inst : CommRing R] {P : RingPreordering R} (h : IsUnit 2) (x a : R) (a_1 : a ∈ P) (a_2 : -a ∈ P) (half : R) (h2 : 2 * half = 1) : let y := (1 + x) * half; let z := (1 - x) * half; y ^ 2 * a - z ^ 2 * a ∈ P ∧ -(y ^ 2 * a) + z ^ 2 * a ∈ P := by
  aesop (add simp sub_eq_add_neg)
