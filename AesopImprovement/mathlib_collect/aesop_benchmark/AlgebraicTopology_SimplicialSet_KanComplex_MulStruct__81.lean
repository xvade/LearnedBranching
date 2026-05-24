-- Benchmark: Mathlib/AlgebraicTopology/SimplicialSet/KanComplex/MulStruct.lean:81
-- Original call: aesop
-- Theorem name: SSet.PtSimplex.RelStruct.refl.extracted_3
import Mathlib
import Mathlib.Tactic

open CategoryTheory Simplicial

set_option maxHeartbeats 800000

theorem SSet.PtSimplex.RelStruct.refl.extracted_3 {n : ℕ} (i : Fin (n + 1)) (j : Fin (n + 2)) (hj : j < i.castSucc) : i ≠ 0 := by
  aesop
