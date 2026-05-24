-- Benchmark: Mathlib/Geometry/Convex/Cone/Dual.lean:74
-- Original call: aesop
-- Theorem name: PointedCone.dual_union.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function LinearMap Pointwise Set

set_option maxHeartbeats 800000

theorem PointedCone.dual_union.extracted_1_1.{u_3, u_2, u_1} {R : Type u_1} [inst : CommSemiring R] [inst_1 : PartialOrder R] [inst_2 : IsOrderedRing R] {M : Type u_2} [inst_3 : AddCommMonoid M] [inst_4 : Module R M] {N : Type u_3} [inst_5 : AddCommMonoid N] [inst_6 : Module R N] {p : M →ₗ[R] N →ₗ[R] R} (s t : Set M) : dual p (s ∪ t) = dual p s ⊓ dual p t := by
  aesop
