-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Connectivity/Connected.lean:238
-- Original call: aesop (add simp Preconnected)
-- Theorem name: SimpleGraph.preconnected_iff_reachable_eq_top.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem SimpleGraph.preconnected_iff_reachable_eq_top.extracted_1_1.{u} {V : Type u} (G : SimpleGraph V) : G.Preconnected ↔ G.Reachable = ⊤ := by
  aesop (add simp Preconnected)
