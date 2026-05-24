-- Benchmark: Mathlib/Algebra/Homology/AlternatingConst.lean:64
-- Original call: aesop
-- Theorem name: HomologicalComplex.alternatingConst.extracted_1.{u_1,
import Mathlib
import Mathlib.Tactic

open CategoryTheory Limits ShortComplex

set_option maxHeartbeats 800000

theorem HomologicalComplex.alternatingConst.extracted_1.{u_1, v_1} {C : Type u_1} [inst : Category.{v_1, u_1} C] [inst_1 : HasZeroMorphisms C] (A : C) {φ ψ : A ⟶ A} (hOdd : φ ≫ ψ = 0) (hEven : ψ ≫ φ = 0) {c : ComplexShape ℕ} [inst_2 : DecidableRel c.Rel] (hc : ∀ (i j : ℕ), c.Rel i j → Odd (i + j)) (i j : ℕ) : ¬c.Rel i j → (if hij : c.Rel i j then if hi : Even i then φ else ψ else 0) = 0 := by
  aesop
