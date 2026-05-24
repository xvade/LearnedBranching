-- Benchmark: Mathlib/FieldTheory/SeparableDegree.lean:897
-- Original call: aesop
-- Theorem name: perfectField_iff_splits_of_natSepDegree_eq_one.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

open Module Polynomial IntermediateField Field Classical

set_option maxHeartbeats 800000

theorem perfectField_iff_splits_of_natSepDegree_eq_one.extracted_1_3.{u_1} (F : Type u_1) [inst : Field F] (x : PerfectField F) (f : F[X]) (hf : f.natSepDegree = 1) (h : ∀ {f : F[X]}, Irreducible f → f.Separable) : f ≠ 0 := by
  aesop
