-- Benchmark: Mathlib/Analysis/LocallyConvex/SeparatingDual.lean:172
-- Original call: aesop
-- Theorem name: Algebra.IsCentral.instContinuousLinearMap.extracted_3.{u_3,
import Mathlib
import Mathlib.Tactic

open Function ContinuousLinearMap

set_option maxHeartbeats 800000

theorem Algebra.IsCentral.instContinuousLinearMap.extracted_3.{u_3, u_2, u_1} {R : Type u_1} {V : Type u_2} [inst : Field R] [inst_1 : AddCommGroup V] [inst_2 : TopologicalSpace R] [inst_3 : TopologicalSpace V] [inst_4 : IsTopologicalRing R] [inst_5 : Module R V] [inst_6 : SeparatingDual R V] [inst_7 : IsTopologicalAddGroup V] [inst_8 : ContinuousSMul R V] {S : Type u_3} [inst_9 : CommSemiring S] [inst_10 : Module S V] [inst_11 : SMulCommClass R S V] [inst_12 : Algebra S R] [inst_13 : IsScalarTower S R V] [inst_14 : ContinuousConstSMul S V] [inst_15 : Algebra.IsCentral S R] (f : V →L[R] V) (hf : f ∈ Subalgebra.center S (V →L[R] V)) (this : ∃ α ∈ Subalgebra.center S R, f = α • ContinuousLinearMap.id R V) (w : R) (y : S) (h : (Algebra.ofId S R).toRingHom y = w) (right : f = w • ContinuousLinearMap.id R V) : (Algebra.ofId S (V →L[R] V)).toRingHom y = f := by
  aesop
