-- Benchmark: Mathlib/Analysis/LocallyConvex/Polar.lean:67
-- Original call: aesop
-- Theorem name: LinearMap.polar_eq_biInter_preimage.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Topology

set_option maxHeartbeats 800000

theorem LinearMap.polar_eq_biInter_preimage.extracted_1_1.{u_3, u_2, u_1} {𝕜 : Type u_1} {E : Type u_2} {F : Type u_3} [inst : NormedCommRing 𝕜] [inst_1 : AddCommMonoid E] [inst_2 : AddCommMonoid F] [inst_3 : Module 𝕜 E] [inst_4 : Module 𝕜 F] (B : E →ₗ[𝕜] F →ₗ[𝕜] 𝕜) (s : Set E) : B.polar s = ⋂ x ∈ s, ⇑(B x) ⁻¹' Metric.closedBall 0 1 := by
  aesop
