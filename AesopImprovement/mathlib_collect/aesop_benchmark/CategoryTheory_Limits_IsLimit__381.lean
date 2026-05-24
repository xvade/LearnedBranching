-- Benchmark: Mathlib/CategoryTheory/Limits/IsLimit.lean:381
-- Original call: aesop
-- Theorem name: CategoryTheory.Limits.IsLimit.homEquiv_symm_naturality.extracted_1_1.{u₃,
import Mathlib
import Mathlib.Tactic

open CategoryTheory CategoryTheory.Category CategoryTheory.Functor Opposite CategoryTheory.Equivalence

set_option maxHeartbeats 800000

theorem CategoryTheory.Limits.IsLimit.homEquiv_symm_naturality.extracted_1_1.{u₃, u₁, v₃, v₁} {J : Type u₁} [inst : Category.{v₁, u₁} J] {C : Type u₃} [inst_1 : Category.{v₃, u₃} C] {F : J ⥤ C} {t : Cone F} (h : IsLimit t) {W W' : C} (f : (const J).obj W ⟶ F) (g : W' ⟶ W) : h.homEquiv (h.homEquiv.symm ((const J).map g ≫ f)) = h.homEquiv (g ≫ h.homEquiv.symm f) := by
  aesop
