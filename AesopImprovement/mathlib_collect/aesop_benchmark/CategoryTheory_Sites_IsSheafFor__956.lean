-- Benchmark: Mathlib/CategoryTheory/Sites/IsSheafFor.lean:956
-- Original call: aesop
-- Theorem name: CategoryTheory.Presieve.isSeparatedFor_singleton.extracted_1_2.{u₁,
import Mathlib
import Mathlib.Tactic

open Opposite CategoryTheory Category Limits Sieve

set_option maxHeartbeats 800000

theorem CategoryTheory.Presieve.isSeparatedFor_singleton.extracted_1_2.{u₁, v₁, w} {C : Type u₁} [inst : Category.{v₁, u₁} C] {P : Cᵒᵖ ⥤ Type w} {X Y : C} {f : X ⟶ Y} : (∀ (b : P.obj (op X)) (t₁ t₂ : P.obj (op Y)), (ConcreteCategory.hom (P.map f.op)) t₁ = b → (ConcreteCategory.hom (P.map f.op)) t₂ = b → t₁ = t₂) ↔ ∀ ⦃a₁ a₂ : P.obj (op Y)⦄, (ConcreteCategory.hom (P.map f.op)) a₁ = (ConcreteCategory.hom (P.map f.op)) a₂ → a₁ = a₂ := by
  aesop
