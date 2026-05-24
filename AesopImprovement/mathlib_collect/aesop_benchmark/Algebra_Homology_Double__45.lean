-- Benchmark: Mathlib/Algebra/Homology/Double.lean:45
-- Original call: aesop
-- Theorem name: HomologicalComplex.double.extracted_1.{u_2}
import Mathlib
import Mathlib.Tactic

open CategoryTheory Category Limits ZeroObject Opposite Classical

set_option maxHeartbeats 800000

theorem HomologicalComplex.double.extracted_1.{u_2} {ι : Type u_2} {c : ComplexShape ι} {i₀ i₁ : ι} (hi₀₁ : c.Rel i₀ i₁) (k k' : ι) (hk : k = i₀ ∧ k' = i₁ ∧ i₀ ≠ i₁) : ¬k' = i₀ := by
  aesop
