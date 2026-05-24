-- Benchmark: Mathlib/GroupTheory/Exponent.lean:683
-- Original call: aesop
-- Theorem name: mul_notMem_of_orderOf_eq_two.extracted_1_7.{u}
import Mathlib
import Mathlib.Tactic

open Classical MulOpposite Nat Submonoid Finset Monoid

set_option maxHeartbeats 800000

theorem mul_notMem_of_orderOf_eq_two.extracted_1_7.{u} {G : Type u} [inst : Group G] {x y : G} (hx : orderOf x = 2) (hy : orderOf y = 2) (hxy : x ≠ y) : ¬y = 1 ∧ ¬x = 1 ∧ ¬x = y := by
  aesop
