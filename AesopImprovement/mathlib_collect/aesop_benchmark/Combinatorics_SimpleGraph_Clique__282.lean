-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Clique.lean:282
-- Original call: aesop
-- Theorem name: SimpleGraph.IsNClique.insert_erase.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Fintype Function SimpleGraph.Walk

set_option maxHeartbeats 800000

theorem SimpleGraph.IsNClique.insert_erase.extracted_1_1.{u_1} {α : Type u_1} {G : SimpleGraph α} {s : Finset α} {a b : α} [inst : DecidableEq α] (ha : ∀ w ∈ s \ {b}, G.Adj a w) (hb : b ∈ s) (n : ℕ) (hs : G.IsNClique (n + 1) s) (w : α) (h : w ∈ s.erase b) : G.Adj a w := by
  aesop
