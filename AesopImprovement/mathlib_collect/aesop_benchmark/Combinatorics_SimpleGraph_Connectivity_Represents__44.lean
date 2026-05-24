-- Benchmark: Mathlib/Combinatorics/SimpleGraph/Connectivity/Represents.lean:44
-- Original call: aesop
-- Theorem name: SimpleGraph.ConnectedComponent.Represents.image_out.extracted_1_2.{u}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem SimpleGraph.ConnectedComponent.Represents.image_out.extracted_1_2.{u} {V : Type u} {G : SimpleGraph V} (C : Set G.ConnectedComponent) (c : Quot G.Reachable) (hc : c ∈ C) (d : Quot G.Reachable) (hd : d ∈ C) (hxy : Quot.mk G.Reachable c.out = Quot.mk G.Reachable d.out) : c.out = d.out := by
  aesop
