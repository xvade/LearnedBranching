-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Walk/Basic.lean:294
-- Original call: aesop
-- Theorem name: SimpleGraph.Walk.mem_support_iff_exists_mem_edges.extracted_1_4.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.Walk.mem_support_iff_exists_mem_edges.extracted_1_4.{u} {V : Type u} {G : SimpleGraph V} {w u v w_1 : V} (h : G.Adj u v) (p : G.Walk v w_1) (p_ih : w ∈ p.support ↔ w = w_1 ∨ ∃ e ∈ p.edges, w ∈ e) : w ∈ (cons h p).support ↔ w = w_1 ∨ ∃ e ∈ (cons h p).edges, w ∈ e := by
  aesop
