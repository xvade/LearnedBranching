-- Benchmark: Mathlib/SetTheory/Ordinal/CantorNormalForm.lean:285
-- Original call: aesop
-- Theorem name: Ordinal.CNF.eval_single_add'.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

open List AList Finsupp

set_option maxHeartbeats 800000

theorem Ordinal.CNF.eval_single_add'.extracted_1_3.{u_1} {e : Ordinal.{u_1}} {f : Ordinal.{u_1} →₀ Ordinal.{u_1}} (h : ∀ e' ∈ f.support, e' < e) (hf : f e = 0) (e' : Ordinal.{u_1}) (he' : e' ∈ f.support.sort fun x1 x2 => x1 ≥ x2) : e' ≠ e := by
  aesop
