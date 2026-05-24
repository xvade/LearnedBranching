-- Benchmark: Mathlib/Algebra/Homology/ComplexShapeSigns.lean:310
-- Original call: aesop
-- Theorem name: TotalComplexShape.symmSymmetry.extracted_1.{u_4,
import Mathlib
import Mathlib.Tactic

open CategoryTheory

set_option maxHeartbeats 800000

theorem TotalComplexShape.symmSymmetry.extracted_1.{u_4, u_2, u_1} {I₁ : Type u_1} {I₂ : Type u_2} {I₁₂ : Type u_4} (c₁ : ComplexShape I₁) (c₂ : ComplexShape I₂) (c₁₂ : ComplexShape I₁₂) [inst : TotalComplexShape c₁ c₂ c₁₂] : let this := symm c₁ c₂ c₁₂; ∀ {i₁ i₁' : I₁}, c₁.Rel i₁ i₁' → ∀ (x_1 : I₂), 1 * c₁.ε₁ c₂ c₁₂ (i₁, x_1) = c₂.ε₂ c₁ c₁₂ (x_1, i₁) * 1 := by
  aesop
