-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Maps.lean:61
-- Original call: aesop (add norm unfold Relation.Map) (add forward safe Adj.symm)
-- Theorem name: SimpleGraph.map.extracted_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem SimpleGraph.map.extracted_1.{u_2, u_1} {V : Type u_1} {W : Type u_2} (f : V → W) (G : SimpleGraph V) (a b : W) (v : a ≠ b) (w h : V) (h_1 : G.Adj w h ∧ f w = a ∧ f h = b) : (Ne ⊓ Relation.Map G.Adj f f) b a := by
  aesop (add norm unfold Relation.Map) (add forward safe Adj.symm)
