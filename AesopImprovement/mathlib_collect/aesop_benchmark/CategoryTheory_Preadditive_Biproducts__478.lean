-- Benchmark: Mathlib/CategoryTheory/Preadditive/Biproducts.lean:478
-- Original call: aesop
-- Theorem name: CategoryTheory.Limits.biprod.ext_from_iff.extracted_1_1.{u,
import Mathlib
import Mathlib.Tactic

open CategoryTheory CategoryTheory.Preadditive CategoryTheory.Limits CategoryTheory.Functor

set_option maxHeartbeats 800000

theorem CategoryTheory.Limits.biprod.ext_from_iff.extracted_1_1.{u, v} {C : Type u} [inst : Category.{v, u} C] [inst_1 : Preadditive C] {X Y : C} [inst_2 : HasBinaryBiproduct X Y] {Z : C} {f g : X ⊞ Y ⟶ Z} : f = g ↔ inl ≫ f = inl ≫ g ∧ inr ≫ f = inr ≫ g := by
  aesop
