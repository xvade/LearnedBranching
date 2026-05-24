-- Benchmark: Mathlib/Algebra/Group/Pointwise/Set/Basic.lean:422
-- Original call: aesop
-- Theorem name: Set.prod_mul_prod_comm.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function MulOpposite Pointwise

set_option maxHeartbeats 800000

theorem Set.prod_mul_prod_comm.extracted_1_1.{u_3, u_2} {α : Type u_2} {β : Type u_3} [inst : Mul α] [inst_1 : Mul β] (s₁ s₂ : Set α) (t₁ t₂ : Set β) (x : α × β) : (∃ a b, (a ∈ s₁ ∧ b ∈ t₁) ∧ ∃ a_1 b_1, (a_1 ∈ s₂ ∧ b_1 ∈ t₂) ∧ (a * a_1, b * b_1) = x) ↔ (∃ x_1, x_1 ∈ s₁ ∧ ∃ y, y ∈ s₂ ∧ x_1 * y = x.1) ∧ ∃ x_1, x_1 ∈ t₁ ∧ ∃ y, y ∈ t₂ ∧ x_1 * y = x.2 := by
  aesop
