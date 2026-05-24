-- Benchmark: Mathlib/CategoryTheory/Subfunctor/Basic.lean:136
-- Original call: aesop
-- Theorem name: CategoryTheory.Subfunctor.iSup_min.extracted_1_1.{u_1,
import Mathlib
import Mathlib.Tactic

open Opposite CategoryTheory ConcreteCategory

set_option maxHeartbeats 800000

theorem CategoryTheory.Subfunctor.iSup_min.extracted_1_1.{u_1, u, v, w} {C : Type u} [inst : Category.{v, u} C] {F : C ⥤ Type w} {ι : Sort u_1} (S : ι → Subfunctor F) (T : Subfunctor F) : (⨆ i, S i) ⊓ T = ⨆ i, S i ⊓ T := by
  aesop
