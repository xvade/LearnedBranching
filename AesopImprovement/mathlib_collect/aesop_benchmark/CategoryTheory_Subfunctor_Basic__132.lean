-- Benchmark: Mathlib/CategoryTheory/Subfunctor/Basic.lean:132
-- Original call: aesop
-- Theorem name: CategoryTheory.Subfunctor.max_min.extracted_1_1.{u,
import Mathlib
import Mathlib.Tactic

open Opposite CategoryTheory ConcreteCategory

set_option maxHeartbeats 800000

theorem CategoryTheory.Subfunctor.max_min.extracted_1_1.{u, v, w} {C : Type u} [inst : Category.{v, u} C] {F : C ⥤ Type w} (S₁ S₂ T : Subfunctor F) : (S₁ ⊔ S₂) ⊓ T = S₁ ⊓ T ⊔ S₂ ⊓ T := by
  aesop
