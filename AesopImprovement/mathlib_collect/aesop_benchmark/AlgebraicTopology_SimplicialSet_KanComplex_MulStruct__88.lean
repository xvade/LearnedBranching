-- Benchmark: Mathlib/AlgebraicTopology/SimplicialSet/KanComplex/MulStruct.lean:88
-- Original call: aesop
-- Theorem name: SSet.PtSimplex.RelStruct.refl.extracted_8
import Mathlib
import Mathlib.Tactic

open CategoryTheory Simplicial

set_option maxHeartbeats 800000

theorem SSet.PtSimplex.RelStruct.refl.extracted_8 {n : ℕ} (j : Fin (n + 2)) (i : Fin n) (hj : i.castSucc.succ < j) : j ≠ 0 := by
  aesop
