-- Benchmark: Mathlib/Analysis/Convex/Visible.lean:130
-- Original call: aesop
-- Theorem name: IsVisible.eq_of_mem_interior.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open AffineMap Filter Finset Set Cardinal Pointwise Topology

set_option maxHeartbeats 800000

theorem IsVisible.eq_of_mem_interior.extracted_1_1.{u_2, u_1} {𝕜 : Type u_1} {V : Type u_2} [inst : Field 𝕜] [inst_1 : LinearOrder 𝕜] [inst_2 : IsStrictOrderedRing 𝕜] [inst_3 : AddCommGroup V] [inst_4 : Module 𝕜 V] {s : Set V} {x y : V} [inst_5 : TopologicalSpace 𝕜] [inst_6 : OrderTopology 𝕜] [inst_7 : TopologicalSpace V] [inst_8 : IsTopologicalAddGroup V] [inst_9 : ContinuousSMul 𝕜 V] (hsxy : IsVisible 𝕜 s x y) (hy : y ∈ interior s) (hxy : x ≠ y) (hmem_1 : ∀ᶠ (δ : 𝕜) in 𝓝[>] 0, (lineMap y x) δ ∈ s) (δ : 𝕜) (hmem : (lineMap y x) δ ∈ s) (hsbt : δ ∈ Set.Ioo 0 1) : Sbtw 𝕜 y ((lineMap y x) δ) x := by
  aesop
