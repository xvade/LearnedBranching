-- Benchmark: Mathlib/Combinatorics/SimpleGraph/CompleteMultipartite.lean:172
-- Original call: aesop
-- Theorem name: SimpleGraph.IsPathGraph3Compl.pathGraph3ComplEmbedding.extracted_3.{u}
import Mathlib
import Mathlib.Tactic

open Finset Fintype Function

set_option maxHeartbeats 800000

theorem SimpleGraph.IsPathGraph3Compl.pathGraph3ComplEmbedding.extracted_3.{u} {α : Type u} {G : SimpleGraph α} {v w₁ w₂ : α} (h : G.IsPathGraph3Compl v w₁ w₂) ⦃a₁ a₂ : Fin 3⦄ (a : (fun x => match x with | 0 => w₁ | 1 => v | 2 => w₂) a₁ = (fun x => match x with | 0 => w₁ | 1 => v | 2 => w₂) a₂) (this_1 : v ≠ w₁) (this_2 : v ≠ w₂) (this : w₁ ≠ w₂) : a₁ = a₂ := by
  aesop
