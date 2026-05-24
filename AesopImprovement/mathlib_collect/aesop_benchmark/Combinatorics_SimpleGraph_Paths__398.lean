-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Paths.lean:398
-- Original call: aesop
-- Theorem name: SimpleGraph.Walk.IsPath.getVert_injOn.extracted_1_2.{u}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem SimpleGraph.Walk.IsPath.getVert_injOn.extracted_1_2.{u} {V : Type u} {G : SimpleGraph V} {u_1 v_1 v w u : V} (h : G.Adj v w) (p : G.Walk w u) (ihp : p.IsPath → ∀ ⦃n : ℕ⦄, n ∈ {i | i ≤ p.length} → ∀ ⦃m : ℕ⦄, m ∈ {i | i ≤ p.length} → p.getVert n = p.getVert m → n = m) (hp : (cons h p).IsPath) ⦃n : ℕ⦄ (hn : n ≤ p.length + 1) ⦃m : ℕ⦄ (hm : m ≤ p.length + 1) (hn0 : n = 0) (hm0 : ¬m = 0) (hnm : v = p.getVert (m - 1)) : v ∉ p.support := by
  aesop
