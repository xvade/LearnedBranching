-- Benchmark: Mathlib/NumberTheory/NumberField/InfinitePlace/Embeddings.lean:363
-- Original call: aesop (add simp [IsReal.comp])
-- Theorem name: NumberField.ComplexEmbedding.IsUnmixed.isReal_iff_isReal.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Finset Module Set Polynomial Complex NumberField ComplexConjugate

set_option maxHeartbeats 800000

theorem NumberField.ComplexEmbedding.IsUnmixed.isReal_iff_isReal.extracted_1_1.{u_4, u_3} (K : Type u_3) {L : Type u_4} [inst : Field K] [inst_1 : Field L] [inst_2 : Algebra K L] {φ : L →+* ℂ} (h : IsUnmixed K φ) : IsReal (φ.comp (algebraMap K L)) ↔ IsReal φ := by
  aesop (add simp [IsReal.comp])
