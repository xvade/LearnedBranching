-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Connectivity/Subgraph.lean:400
-- Original call: aesop
-- Theorem name: SimpleGraph.Walk.IsPath.neighborSet_toSubgraph_internal.extracted_1_9.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.Walk.IsPath.neighborSet_toSubgraph_internal.extracted_1_9.{u} {V : Type u} {G : SimpleGraph V} {v_1 u : V} {i : ℕ} {p : G.Walk u v_1} (hp : p.IsPath) (v : V) (h : ¬i = 0) (h' : i < p.length) (hadj1 : ∃ i_1, (p.getVert i_1 = p.getVert i ∧ p.getVert (i_1 + 1) = p.getVert (i - 1) ∨ p.getVert i_1 = p.getVert (i - 1) ∧ p.getVert (i_1 + 1) = p.getVert i) ∧ i_1 < p.length) : v = p.getVert (i - 1) ∨ v = p.getVert (i + 1) → ∃ i_1, (p.getVert i_1 = p.getVert i ∧ p.getVert (i_1 + 1) = v ∨ p.getVert i_1 = v ∧ p.getVert (i_1 + 1) = p.getVert i) ∧ i_1 < p.length := by
  aesop
