-- Benchmark: Mathlib/LinearAlgebra/FiniteDimensional/Lemmas.lean:105
-- Original call: aesop
-- Theorem name: Submodule.sup_span_singleton_eq_top_iff.extracted_1_4.{v,
import Mathlib
import Mathlib.Tactic

open Cardinal Submodule Module Function IsNoetherian

set_option maxHeartbeats 800000

theorem Submodule.sup_span_singleton_eq_top_iff.extracted_1_4.{v, u} {K : Type u} {V : Type v} [inst : DivisionRing K] [inst_1 : AddCommGroup V] [inst_2 : Module K V] [inst_3 : Module.Finite K V] {W : Submodule K V} {v : V} (hv : v ∉ W) (hW : finrank K (V ⧸ W) = 1) : 1 ≤ finrank K ↥(K ∙ v) := by
  aesop
