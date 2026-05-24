-- Benchmark: Mathlib/Analysis/Convex/Visible.lean:63
-- Original call: aesop
-- Theorem name: isVisible_iff_lineMap.extracted_1_3.{u_3,
import Mathlib
import Mathlib.Tactic

open AffineMap Filter Finset Set Cardinal Pointwise Topology

set_option maxHeartbeats 800000

theorem isVisible_iff_lineMap.extracted_1_3.{u_3, u_2, u_1} {𝕜 : Type u_1} {V : Type u_2} {P : Type u_3} [inst : Field 𝕜] [inst_1 : LinearOrder 𝕜] [inst_2 : IsOrderedRing 𝕜] [inst_3 : AddCommGroup V] [inst_4 : Module 𝕜 V] [inst_5 : AddTorsor V P] {s : Set P} {x y : P} (hxy : x ≠ y) : (∀ ⦃z : P⦄, z ∈ s → ∀ (x_1 : 𝕜), 0 < x_1 → x_1 < 1 → ¬(lineMap x y) x_1 = z) ↔ ∀ (δ : 𝕜), 0 < δ → δ < 1 → (lineMap x y) δ ∉ s := by
  aesop
