-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Clique.lean:185
-- Original call: aesop
-- Theorem name: SimpleGraph.isClique_sup_edge_of_ne_sdiff.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Fintype Function SimpleGraph.Walk

set_option maxHeartbeats 800000

theorem SimpleGraph.isClique_sup_edge_of_ne_sdiff.extracted_1_4.{u_1} {α : Type u_1} {G : SimpleGraph α} {v w : α} {s : Set α} (h : v ≠ w) (hv : G.IsClique (s \ {v})) (hw : G.IsClique (s \ {w})) ⦃x : α⦄ (hx : x ∈ s) ⦃y : α⦄ (hy : y ∈ s) (hxy : x ≠ y) (h' : ¬(x ∈ s \ {v} ∧ y ∈ s \ {v} ∨ x ∈ s \ {w} ∧ y ∈ s \ {w})) (h_1 : ¬x = v) : Sym2.ToRel {s(v, w)} x y := by
  aesop
