-- Benchmark: Mathlib/Algebra/Homology/HomotopyCategory/HomComplexCohomology.lean:54
-- Original call: aesop
-- Theorem name: CochainComplex.HomComplex.coboundaries.extracted_6.{u,
import Mathlib
import Mathlib.Tactic

open CategoryTheory Category Limits Preadditive

set_option maxHeartbeats 800000

theorem CochainComplex.HomComplex.coboundaries.extracted_6.{u, v} {C : Type u} [inst : Category.{v, u} C] [inst_1 : Preadditive C] (K L : CochainComplex C ℤ) (n : ℤ) {α : Cocycle K L n} (m : ℤ) (hm : m + 1 = n) (β : Cochain K L m) (hβ : δ m n β = ↑α) : δ m n (-β) = ↑(-α) := by
  aesop
