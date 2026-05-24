-- Benchmark: Mathlib/CategoryTheory/Limits/Types/Coequalizers.lean:55
-- Original call: aesop (add safe constructors _root_.Equivalence)
-- Theorem name: CategoryTheory.Limits.Types.coequalizer_preimage_image_eq_of_preimage_eq.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open CategoryTheory Limits ConcreteCategory

set_option maxHeartbeats 800000

theorem CategoryTheory.Limits.Types.coequalizer_preimage_image_eq_of_preimage_eq.extracted_1_1.{u} {X Y Z : Type u} (f g : X ⟶ Y) (π : Y ⟶ Z) (e : f ≫ π = g ≫ π) (U : Set Y) (H : ⇑(hom f) ⁻¹' U = ⇑(hom g) ⁻¹' U) (lem : ∀ (x y : (fun X => X) Y), Function.Coequalizer.Rel (⇑(hom f)) (⇑(hom g)) x y → (x ∈ U ↔ y ∈ U)) : _root_.Equivalence fun x y => x ∈ U ↔ y ∈ U := by
  aesop (add safe constructors _root_.Equivalence)
