-- Benchmark: Mathlib/AlgebraicTopology/SimplicialSet/Horn.lean:136
-- Original call: aesop
-- Theorem name: SSet.face_le_horn_iff.extracted_1_3
import Mathlib
import Mathlib.Tactic

open CategoryTheory Simplicial Opposite

set_option maxHeartbeats 800000

theorem SSet.face_le_horn_iff.extracted_1_3 {n : ℕ} (S : Finset (Fin (n + 2))) (j : Fin (n + 2)) : S = Finset.univ ∨ S = {j}ᶜ → {j}ᶜ ⊆ S := by
  aesop
