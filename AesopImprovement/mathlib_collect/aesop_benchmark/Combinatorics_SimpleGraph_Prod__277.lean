-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Prod.lean:277
-- Original call: aesop
-- Theorem name: SimpleGraph.edist_boxProd.extracted_1_5.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.edist_boxProd.extracted_1_5.{u_2, u_1} {α : Type u_1} {β : Type u_2} {G : SimpleGraph α} {H : SimpleGraph β} (x y : α × β) (top_case : (G □ H).edist x y = ⊤ ↔ G.edist x.1 y.1 = ⊤ ∨ H.edist x.2 y.2 = ⊤) (h : G.edist x.1 y.1 = ⊤ ∨ H.edist x.2 y.2 = ⊤) : (G □ H).edist x y = G.edist x.1 y.1 + H.edist x.2 y.2 := by
  aesop
