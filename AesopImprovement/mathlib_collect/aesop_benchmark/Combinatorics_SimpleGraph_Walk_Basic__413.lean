-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Walk/Basic.lean:413
-- Original call: aesop
-- Theorem name: SimpleGraph.Walk.mem_support_iff_exists_mem_edges_of_not_nil.extracted_1_4.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.Walk.mem_support_iff_exists_mem_edges_of_not_nil.extracted_1_4.{u} {V : Type u} {G : SimpleGraph V} {w u v w_1 : V} (h : G.Adj u v) {v_1 : V} (h_1 : G.Adj v v_1) (p : G.Walk v_1 w_1) (ih : ¬(cons h_1 p).Nil → (w ∈ (cons h_1 p).support ↔ ∃ e ∈ (cons h_1 p).edges, w ∈ e)) (hnil : ¬(cons h (cons h_1 p)).Nil) : w ∈ (cons h (cons h_1 p)).support ↔ ∃ e ∈ (cons h (cons h_1 p)).edges, w ∈ e := by
  aesop
