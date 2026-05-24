-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Tutte.lean:50
-- Original call: aesop
-- Theorem name: SimpleGraph.tutte_exists_isAlternating_isCycles.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.tutte_exists_isAlternating_isCycles.extracted_1_1.{u_1} {V : Type u_1} {G G' : SimpleGraph V} {x b a c : V} {M : (G ⊔ edge a c).Subgraph} (p : G'.Walk a x) (hp : p.IsPath) (hcalt : G'.IsAlternating M.spanningCoe) (hM2nadj : ¬M.Adj x a) (hpac : p.toSubgraph.Adj a c) (hnpxb : ¬p.toSubgraph.Adj x b) (hM2ac : M.Adj a c) (hgadj : G.Adj x a) (hnxc : x ≠ c) (hnab : a ≠ b) (hle : p.toSubgraph.spanningCoe ≤ G ⊔ edge a c) (aux : ∀ (c' : V), c' ≠ a → p.toSubgraph.Adj c' x → M.Adj c' x) : (p.toSubgraph.spanningCoe ⊔ edge x a).Adj a c := by
  aesop
