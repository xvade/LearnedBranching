-- Benchmark: Mathlib/Analysis/Convex/BetweenList.lean:93
-- Original call: aesop
-- Theorem name: List.sbtw_four.extracted_1_4.{u_4,
import Mathlib
import Mathlib.Tactic

open AffineEquiv AffineMap

set_option maxHeartbeats 800000

theorem List.sbtw_four.extracted_1_4.{u_4, u_2, u_1} {R : Type u_1} {V : Type u_2} {P : Type u_4} [inst : Ring R] [inst_1 : PartialOrder R] [inst_2 : AddCommGroup V] [inst_3 : Module R V] [inst_4 : AddTorsor V P] [inst_5 : IsOrderedRing R] {p₁ p₂ p₃ p₄ : P} : (((Wbtw R p₁ p₂ p₃ ∧ Wbtw R p₁ p₂ p₄) ∧ Wbtw R p₁ p₃ p₄) ∧ Wbtw R p₂ p₃ p₄) ∧ (¬p₁ = p₂ ∧ ¬p₁ = p₃ ∧ ¬p₁ = p₄) ∧ (¬p₂ = p₃ ∧ ¬p₂ = p₄) ∧ ¬p₃ = p₄ ↔ (Wbtw R p₁ p₂ p₃ ∧ ¬p₂ = p₁ ∧ ¬p₂ = p₃) ∧ (Wbtw R p₁ p₂ p₄ ∧ ¬p₂ = p₁ ∧ ¬p₂ = p₄) ∧ (Wbtw R p₁ p₃ p₄ ∧ ¬p₃ = p₁ ∧ ¬p₃ = p₄) ∧ Wbtw R p₂ p₃ p₄ ∧ ¬p₃ = p₂ ∧ ¬p₃ = p₄ := by
  aesop
