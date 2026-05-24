-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Connectivity/Represents.lean:54
-- Original call: aesop
-- Theorem name: SimpleGraph.ConnectedComponent.Represents.exists_inter_eq_singleton.extracted_1_1.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.ConnectedComponent.Represents.exists_inter_eq_singleton.extracted_1_1.{u} {V : Type u} {G : SimpleGraph V} {C : Set G.ConnectedComponent} {s : Set V} {c : G.ConnectedComponent} (hrep : Represents s C) (h : c ∈ C) (a : V) (ha : (fun x => x ∈ s ∩ c.supp) a ∧ ∀ (y : V), (fun x => x ∈ s ∩ c.supp) y → y = a) : ∃ x, s ∩ c.supp = {x} := by
  aesop
