-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Finite.lean:619
-- Original call: aesop (add simp [Finset.ext_iff, Sym2.exists, Sym2.forall, adj_comm])
-- Theorem name: SimpleGraph.map_edgeFinset_induce.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Function

set_option maxHeartbeats 800000

theorem SimpleGraph.map_edgeFinset_induce.extracted_1_1.{u_1} {V : Type u_1} {s : Set V} [inst : DecidablePred fun x => x ∈ s] [inst_1 : Fintype V] {G : SimpleGraph V} [inst_2 : DecidableRel G.Adj] [inst_3 : DecidableEq V] : map (Embedding.subtype fun x => x ∈ s).sym2Map (induce s G).edgeFinset = G.edgeFinset ∩ s.toFinset.sym2 := by
  aesop (add simp [Finset.ext_iff, Sym2.exists, Sym2.forall, adj_comm])
