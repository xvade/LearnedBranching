-- Benchmark: Mathlib/RepresentationTheory/Basic.lean:271
-- Original call: aesop
-- Theorem name: Representation.instIsScalarTowerMonoidAlgebraAsModule.extracted_1.{u_3,
import Mathlib
import Mathlib.Tactic

open MonoidAlgebra LinearMap Module

set_option maxHeartbeats 800000

theorem Representation.instIsScalarTowerMonoidAlgebraAsModule.extracted_1.{u_3, u_2, u_1} {k : Type u_1} {G : Type u_2} {V : Type u_3} [inst : CommSemiring k] [inst_1 : Monoid G] [inst_2 : AddCommMonoid V] [inst_3 : Module k V] (ρ : Representation k G V) (v : ρ.asModule) (s : k) (y : k[G]) (hy : ∀ (t : k), (t • y) • v = t • y • v) (t : k) : t • s • y • v = t • (s • y) • v := by
  aesop
