-- Benchmark: Mathlib/Analysis/Normed/Operator/FredholmAlternative.lean:70
-- Original call: aesop
-- Theorem name: IsCompactOperator.antilipschitz_of_not_hasEigenvalue.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Module End Filter Topology

set_option maxHeartbeats 800000

theorem IsCompactOperator.antilipschitz_of_not_hasEigenvalue.extracted_1_1.{u_2, u_1} {𝕜 : Type u_1} {X : Type u_2} [inst : NontriviallyNormedField 𝕜] [inst_1 : NormedAddCommGroup X] [inst_2 : NormedSpace 𝕜 X] {T : X →L[𝕜] X} {μ : 𝕜} (hT : IsCompactOperator ⇑T) (hμ : μ ≠ 0) (h : ∀ c > 0, ∃ x, ‖(T - μ • 1) x‖ < c * ‖x‖) (hK : ∀ K > 0, ∃ x, ‖(T - μ • 1) x‖ < K * ‖x‖) (C : 𝕜) (hC : 1 < ‖C‖) (ε : ℝ) (hε : ε > 0) (x : X) (hx : ‖(T - μ • 1) x‖ < ε * ‖x‖) : x ≠ 0 := by
  aesop
