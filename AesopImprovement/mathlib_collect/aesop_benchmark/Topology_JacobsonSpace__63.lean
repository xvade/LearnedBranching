-- Benchmark: Mathlib/Topology/JacobsonSpace.lean:63
-- Original call: aesop
-- Theorem name: Set.Finite.isDiscrete_of_subset_closedPoints.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Topology TopologicalSpace

set_option maxHeartbeats 800000

theorem Set.Finite.isDiscrete_of_subset_closedPoints.extracted_1_1.{u_1} {X : Type u_1} [inst : TopologicalSpace X] {s : Set X} (hs : s.Finite) (hs' : s ⊆ closedPoints X) (x : ↑s) (e_1 : ↑s = { x // x ∈ s }) : {x} = Subtype.val ⁻¹' {↑x} := by
  aesop
