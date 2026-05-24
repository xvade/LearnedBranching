-- Benchmark: Mathlib/LinearAlgebra/Matrix/Nondegenerate.lean:126
-- Original call: aesop
-- Theorem name: LinearIndependent.sum_smul_of_nondegenerate.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Matrix

set_option maxHeartbeats 800000

theorem LinearIndependent.sum_smul_of_nondegenerate.extracted_1_1.{u_4, u_3, u_2, u_1} {ι : Type u_1} {κ : Type u_2} {R : Type u_3} {M : Type u_4} [inst : Fintype ι] [inst_1 : Finite κ] [inst_2 : CommRing R] [inst_3 : AddCommGroup M] [inst_4 : Module R M] {v : ι → M} (hv : ∀ (g : ι → R), ∑ i, g i • v i = 0 → ∀ (i : ι), g i = 0) {A : Matrix κ ι R} (hA : A.Nondegenerate) (this_1 : Fintype κ) (w : κ → R) (hw : ∑ i, w i • ∑ j, A i j • v j = 0) (this : w = 0) : ∀ (i : κ), w i = 0 := by
  aesop
