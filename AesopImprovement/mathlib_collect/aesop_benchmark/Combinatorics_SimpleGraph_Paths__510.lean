-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Paths.lean:510
-- Original call: aesop
-- Theorem name: SimpleGraph.Walk.IsCycle.getVert_endpoint_iff.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem SimpleGraph.Walk.IsCycle.getVert_endpoint_iff.extracted_1_1.{u} {V : Type u} {G : SimpleGraph V} {u : V} {i : ℕ} {p : G.Walk u u} (hpc : p.IsCycle) (hl : i ≤ p.length) : i = 0 ∨ i = p.length → p.getVert i = u := by
  aesop
