-- Benchmark: Mathlib/Algebra/Homology/Double.lean:58
-- Original call: aesop
-- Theorem name: HomologicalComplex.double.extracted_3.{u_2}
import Mathlib
import Mathlib.Tactic

open CategoryTheory Category Limits ZeroObject Opposite Classical

set_option maxHeartbeats 800000

theorem HomologicalComplex.double.extracted_3.{u_2} {ι : Type u_2} {c : ComplexShape ι} {i₀ i₁ : ι} (hi₀₁ : c.Rel i₀ i₁) (i j : ι) (hij : ¬c.Rel i j) : ¬(i = i₀ ∧ j = i₁ ∧ i₀ ≠ i₁) := by
  aesop
