-- Benchmark: Mathlib/NumberTheory/NumberField/InfinitePlace/Ramification.lean:706
-- Original call: aesop
-- Theorem name: NumberField.InfinitePlace.bijOn_sumElim_conjugate.extracted_1_1.{u_5,
import Mathlib
import Mathlib.Tactic

open NumberField Fintype Module ComplexEmbedding Finset Classical AbsoluteValue

set_option maxHeartbeats 800000

theorem NumberField.InfinitePlace.bijOn_sumElim_conjugate.extracted_1_1.{u_5, u_4} {K : Type u_4} (L : Type u_5) [inst : Field K] [inst_1 : Field L] [inst_2 : Algebra K L] (v : InfinitePlace K) (ψ : L →+* ℂ) (h : ψ ∈ mixedEmbeddingsOver L v.embedding) (hr : (mk ψ).embedding = conjugate ψ) : conjugate (mk ψ).embedding = ψ := by
  aesop
