-- Benchmark: Mathlib/LinearAlgebra/FixedSubmodule.lean:36
-- Original call: aesop
-- Theorem name: LinearMap.fixedSubmodule.extracted_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Pointwise Submodule MulAction

set_option maxHeartbeats 800000

theorem LinearMap.fixedSubmodule.extracted_1.{u_3, u_1} {R : Type u_1} [inst : Semiring R] {V : Type u_3} [inst_1 : AddCommMonoid V] [inst_2 : Module R V] (f : V →ₗ[R] V) {x y : V} (hx : x ∈ {x | f x = x}) (hy : y ∈ {x | f x = x}) : x + y ∈ {x | f x = x} := by
  aesop
