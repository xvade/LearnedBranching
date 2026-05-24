-- Benchmark: Mathlib/Analysis/LocallyConvex/Basic.lean:105
-- Original call: aesop
-- Theorem name: Balanced.sInter.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Set Pointwise Topology

set_option maxHeartbeats 800000

theorem Balanced.sInter.extracted_1_1.{u_3, u_1} {𝕜 : Type u_1} {E : Type u_3} [inst : SeminormedRing 𝕜] [inst_1 : SMul 𝕜 E] {S : Set (Set E)} (h : ∀ s ∈ S, Balanced 𝕜 s) (x : 𝕜) (x_1 : ‖x‖ ≤ 1) (x_2 : E) (x_3 : x_2 ∈ ⋂ s ∈ S, x • s) : x_2 ∈ ⋂₀ S := by
  aesop
