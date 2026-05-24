-- Benchmark: Mathlib/CategoryTheory/Preadditive/Biproducts.lean:466
-- Original call: aesop
-- Theorem name: CategoryTheory.Limits.biprod.decomp_hom_to.extracted_1_1.{u,
import Mathlib
import Mathlib.Tactic

open CategoryTheory CategoryTheory.Preadditive CategoryTheory.Limits CategoryTheory.Functor

set_option maxHeartbeats 800000

theorem CategoryTheory.Limits.biprod.decomp_hom_to.extracted_1_1.{u, v} {C : Type u} [inst : Category.{v, u} C] [inst_1 : Preadditive C] {X Y : C} [inst_2 : HasBinaryBiproduct X Y] {Z : C} (f : Z ⟶ X ⊞ Y) : f = (f ≫ fst) ≫ inl + (f ≫ snd) ≫ inr := by
  aesop
