-- Benchmark: Mathlib/Algebra/DirectSum/Module.lean:333
-- Original call: aesop
-- Theorem name: DirectSum.lequivCongrLeft_lof.extracted_1_1.{u_1,
import Mathlib
import Mathlib.Tactic

open DirectSum Finsupp Module

set_option maxHeartbeats 800000

theorem DirectSum.lequivCongrLeft_lof.extracted_1_1.{u_1, w, v, u} (R : Type u) [inst : Semiring R] {ι : Type v} {M : ι → Type w} [inst_1 : (i : ι) → AddCommMonoid (M i)] [inst_2 : (i : ι) → Module R (M i)] {κ : Type u_1} {e : ι ≃ κ} {k : κ} (j : κ) (eq : ¬k = j) : ¬e.symm k = e.symm j := by
  aesop
