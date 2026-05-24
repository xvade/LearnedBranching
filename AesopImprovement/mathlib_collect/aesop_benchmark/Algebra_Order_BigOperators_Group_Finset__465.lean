-- Benchmark: Mathlib/Algebra/Order/BigOperators/Group/Finset.lean:465
-- Original call: aesop
-- Theorem name: Finset.prod_lt_prod_of_nonempty'.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Finset.prod_lt_prod_of_nonempty'.extracted_1_1.{u_4, u_1} {ι : Type u_1} {M : Type u_4} [inst : CommMonoid M] [inst_1 : Preorder M] [inst_2 : IsOrderedCancelMonoid M] {f g : ι → M} {s : Finset ι} [inst_3 : MulLeftStrictMono M] (hs : s.Nonempty) (hlt : ∀ i ∈ s, f i < g i) : s.val ≠ ∅ := by
  aesop
