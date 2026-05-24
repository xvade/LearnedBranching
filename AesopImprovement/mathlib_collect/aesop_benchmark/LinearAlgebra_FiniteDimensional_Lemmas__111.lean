-- Benchmark: Mathlib/LinearAlgebra/FiniteDimensional/Lemmas.lean:111
-- Original call: aesop
-- Theorem name: Submodule.finrank_sup_span_singleton.extracted_1_1.{v,
import Mathlib
import Mathlib.Tactic

open Cardinal Submodule Module Function IsNoetherian

set_option maxHeartbeats 800000

theorem Submodule.finrank_sup_span_singleton.extracted_1_1.{v, u} {K : Type u} {V : Type v} [inst : DivisionRing K] [inst_1 : AddCommGroup V] [inst_2 : Module K V] [inst_3 : Module.Finite K V] {p : Submodule K V} {v : V} (hv : v ∉ p) : v ≠ 0 := by
  aesop
