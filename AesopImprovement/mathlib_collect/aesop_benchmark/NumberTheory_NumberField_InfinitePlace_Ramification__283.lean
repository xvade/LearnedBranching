-- Benchmark: Mathlib/NumberTheory/NumberField/InfinitePlace/Ramification.lean:283
-- Original call: aesop
-- Theorem name: NumberField.InfinitePlace.isRamified_mk_iff_isMixed.extracted_1_4.{u_2,
import Mathlib
import Mathlib.Tactic

open NumberField Fintype Module ComplexEmbedding Finset

set_option maxHeartbeats 800000

theorem NumberField.InfinitePlace.isRamified_mk_iff_isMixed.extracted_1_4.{u_2, u_1} {k : Type u_1} [inst : Field k] {K : Type u_2} [inst_1 : Field K] [inst_2 : Algebra k K] {φ : K →+* ℂ} (h : IsMixed k φ) (h_1 : (mk φ).embedding = conjugate φ) : ¬ComplexEmbedding.IsReal (mk φ).embedding := by
  aesop
