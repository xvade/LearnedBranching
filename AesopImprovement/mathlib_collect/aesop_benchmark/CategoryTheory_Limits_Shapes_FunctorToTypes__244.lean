-- Benchmark: Mathlib/CategoryTheory/Limits/Shapes/FunctorToTypes.lean:244
-- Original call: aesop
-- Theorem name: CategoryTheory.FunctorToTypes.inr_comp_binaryCoproductIso_hom.extracted_1_2.{u,
import Mathlib
import Mathlib.Tactic

open CategoryTheory Limits ConcreteCategory

set_option maxHeartbeats 800000

theorem CategoryTheory.FunctorToTypes.inr_comp_binaryCoproductIso_hom.extracted_1_2.{u, v, w} {C : Type u} [inst : Category.{v, u} C] (F G : C ⥤ Type w) : (binaryCoproductColimitCocone F G).cocone.ι.app { as := WalkingPair.right } = coprod.inr := by
  aesop
