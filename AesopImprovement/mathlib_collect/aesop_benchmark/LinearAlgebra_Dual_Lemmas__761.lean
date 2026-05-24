-- Benchmark: Mathlib/LinearAlgebra/Dual/Lemmas.lean:761
-- Original call: aesop
-- Theorem name: Module.Dual.eq_of_ker_eq_of_apply_eq.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Module Submodule Module.Dual LinearMap Cardinal Function Basis Set FiniteDimensional Classical

set_option maxHeartbeats 800000

theorem Module.Dual.eq_of_ker_eq_of_apply_eq.extracted_1_1.{u_2, u_1} {K : Type u_1} {V₁ : Type u_2} [inst : DivisionRing K] [inst_1 : AddCommGroup V₁] [inst_2 : Module K V₁] [inst_3 : FiniteDimensional K V₁] {f g : Dual K V₁} (x : V₁) (h : LinearMap.ker f = LinearMap.ker g) (h' : f x = g x) (hx : f x ≠ 0) : let p := K ∙ x; p ≠ ⊥ := by
  aesop
