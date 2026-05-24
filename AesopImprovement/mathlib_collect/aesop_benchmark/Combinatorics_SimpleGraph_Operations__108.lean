-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Operations.lean:108
-- Original call: aesop
-- Theorem name: SimpleGraph.disjoint_sdiff_neighborFinset_image.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset

set_option maxHeartbeats 800000

theorem SimpleGraph.disjoint_sdiff_neighborFinset_image.extracted_1_1.{u_1} {V : Type u_1} (G : SimpleGraph V) {s t : V} [inst : DecidableEq V] [inst_1 : Fintype V] [inst_2 : DecidableRel G.Adj] (e : Sym2 V) (he : e ∈ G.edgeFinset \ G.incidenceFinset t) (this : t ∉ e) : ∀ b ∈ image (fun x => s(x, t)) (G.neighborFinset s), e ≠ b := by
  aesop
