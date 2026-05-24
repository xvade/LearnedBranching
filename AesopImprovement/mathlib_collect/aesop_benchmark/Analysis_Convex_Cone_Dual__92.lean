-- Benchmark: Mathlib/Analysis/Convex/Cone/Dual.lean:92
-- Original call: aesop
-- Theorem name: ProperCone.dual_union.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Set LinearMap Pointwise

set_option maxHeartbeats 800000

theorem ProperCone.dual_union.extracted_1_1.{u_3, u_2, u_1} {R : Type u_1} {M : Type u_2} {N : Type u_3} [inst : CommRing R] [inst_1 : PartialOrder R] [inst_2 : IsOrderedRing R] [inst_3 : TopologicalSpace R] [inst_4 : ClosedIciTopology R] [inst_5 : AddCommGroup M] [inst_6 : Module R M] [inst_7 : TopologicalSpace M] [inst_8 : AddCommGroup N] [inst_9 : Module R N] [inst_10 : TopologicalSpace N] {p : M →ₗ[R] N →ₗ[R] R} [inst_11 : p.IsContPerfPair] (s t : Set M) : dual p (s ∪ t) = dual p s ⊓ dual p t := by
  aesop
