-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Paths.lean:235
-- Original call: aesop
-- Theorem name: SimpleGraph.Walk.IsPath.of_adj.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem SimpleGraph.Walk.IsPath.of_adj.extracted_1_1.{u} {V : Type u} {G : SimpleGraph V} {u v : V} (h : G.Adj u v) : h.toWalk.IsPath := by
  aesop
