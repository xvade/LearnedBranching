-- Benchmark: Mathlib/LinearAlgebra/SesquilinearForm/Basic.lean:981
-- Original call: aesop
-- Theorem name: LinearMap.BilinForm.nondegenerate_iff'.extracted_1_3.{u_5,
import Mathlib
import Mathlib.Tactic

open Module Function

set_option maxHeartbeats 800000

theorem LinearMap.BilinForm.nondegenerate_iff'.extracted_1_3.{u_5, u_1} {R : Type u_1} {M : Type u_5} [inst : CommRing R] [inst_1 : LinearOrder R] [inst_2 : IsStrictOrderedRing R] [inst_3 : AddCommGroup M] [inst_4 : Module R M] (B : LinearMap.BilinForm R M) (hs : ∀ (x : M), 0 ≤ (B x) x) (hB : IsSymm B) (x : M) : (B x) x = 0 ∧ x ≠ 0 ∨ (B x) x ≠ 0 ∧ x = 0 → x ≠ 0 ∧ (B x) x ≤ 0 := by
  aesop
