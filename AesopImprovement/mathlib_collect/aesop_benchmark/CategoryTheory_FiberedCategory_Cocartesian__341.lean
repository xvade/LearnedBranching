-- Benchmark: Mathlib/CategoryTheory/FiberedCategory/Cocartesian.lean:341
-- Original call: aesop
-- Theorem name: CategoryTheory.Functor.IsStronglyCocartesian.of_isIso.extracted_1.{u₂,
import Mathlib
import Mathlib.Tactic

open CategoryTheory Functor Category IsHomLift

set_option maxHeartbeats 800000

theorem CategoryTheory.Functor.IsStronglyCocartesian.of_isIso.extracted_1.{u₂, u₁, v₂, v₁} {𝒮 : Type u₁} {𝒳 : Type u₂} [inst : Category.{v₁, u₁} 𝒮] [inst_1 : Category.{v₂, u₂} 𝒳] (p : 𝒳 ⥤ 𝒮) {R S : 𝒮} {a b : 𝒳} (f : R ⟶ S) (φ : a ⟶ b) [inst_2 : p.IsHomLift f φ] [inst_3 : IsIso φ] : p.IsHomLift f (asIso φ).hom := by
  aesop
