-- Benchmark: Mathlib/Analysis/SpecialFunctions/Trigonometric/Cotangent.lean:130
-- Original call: aesop
-- Theorem name: HasProdUniformlyOn_sineTerm_prod_on_compact.extracted_1_1
import Mathlib
import Mathlib.Tactic

open Real Complex UpperHalfPlane Filter Function Topology Nat

set_option maxHeartbeats 800000

theorem HasProdUniformlyOn_sineTerm_prod_on_compact.extracted_1_1 {Z : Set ℂ} (hZ2 : Z ⊆ ℂ_ℤ) (hZC : IsCompact Z) (x : ℂ) (hx : x ∈ Z) : x ∈ ℂ_ℤ := by
  aesop
