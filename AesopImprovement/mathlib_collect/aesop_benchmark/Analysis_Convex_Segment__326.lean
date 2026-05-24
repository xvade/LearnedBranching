-- Benchmark: Mathlib/Analysis/Convex/Segment.lean:326
-- Original call: aesop
-- Theorem name: segment_inter_eq_endpoint_of_linearIndependent_of_ne.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Module Set Pointwise Convex

set_option maxHeartbeats 800000

theorem segment_inter_eq_endpoint_of_linearIndependent_of_ne.extracted_1_1.{u_2, u_1} {𝕜 : Type u_1} {E : Type u_2} [inst : CommRing 𝕜] [inst_1 : PartialOrder 𝕜] [inst_2 : IsOrderedRing 𝕜] [inst_3 : IsDomain 𝕜] [inst_4 : AddCommGroup E] [inst_5 : Module 𝕜 E] {x y : E} (h : LinearIndependent 𝕜 ![x, y]) {s t : 𝕜} (hs : s ≠ t) (inst_6 : Nontrivial 𝕜) : LinearIndependent 𝕜 ![x, y] ∧ -1 * s ≠ t * -1 := by
  aesop
