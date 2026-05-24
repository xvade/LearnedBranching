-- Benchmark: Mathlib/LinearAlgebra/FixedSubmodule.lean:59
-- Original call: aesop
-- Theorem name: LinearMap.fixedSubmodule_comp_inf_fixedSubmodule_le.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Pointwise Submodule MulAction

set_option maxHeartbeats 800000

theorem LinearMap.fixedSubmodule_comp_inf_fixedSubmodule_le.extracted_1_1.{u_3, u_1} {R : Type u_1} [inst : Semiring R] {V : Type u_3} [inst_1 : AddCommMonoid V] [inst_2 : Module R V] (f g : V →ₗ[R] V) ⦃x : V⦄ : x ∈ (f ∘ₗ g).fixedSubmodule ⊓ g.fixedSubmodule → x ∈ f.fixedSubmodule := by
  aesop
