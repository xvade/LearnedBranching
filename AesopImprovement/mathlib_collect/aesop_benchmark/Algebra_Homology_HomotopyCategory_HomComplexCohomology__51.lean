-- Benchmark: Mathlib/Algebra/Homology/HomotopyCategory/HomComplexCohomology.lean:51
-- Original call: aesop
-- Theorem name: CochainComplex.HomComplex.coboundaries.extracted_2.{u,
import Mathlib
import Mathlib.Tactic

open CategoryTheory Category Limits Preadditive

set_option maxHeartbeats 800000

theorem CochainComplex.HomComplex.coboundaries.extracted_2.{u, v} {C : Type u} [inst : Category.{v, u} C] [inst_1 : Preadditive C] (K L : CochainComplex C ℤ) (n : ℤ) {α₁ α₂ : Cocycle K L n} (m : ℤ) (hm : m + 1 = n) (β₁ : Cochain K L m) (hβ₁ : δ m n β₁ = ↑α₁) (hm' : m + 1 = n) (β₂ : Cochain K L m) (hβ₂ : δ m n β₂ = ↑α₂) : δ m n (β₁ + β₂) = ↑(α₁ + α₂) := by
  aesop
