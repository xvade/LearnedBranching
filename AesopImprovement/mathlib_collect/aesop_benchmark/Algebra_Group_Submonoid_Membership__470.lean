-- Benchmark: Mathlib/Algebra/Group/Submonoid/Membership.lean:470
-- Original call: aesop
-- Theorem name: Submonoid.forall_mem_sup.extracted_1_2.{u_4}
import Mathlib
import Mathlib.Tactic

open Function Set Submonoid MonoidHom Fintype

set_option maxHeartbeats 800000

theorem Submonoid.forall_mem_sup.extracted_1_2.{u_4} {N : Type u_4} [inst : CommMonoid N] {P : N → Prop} {s t : Submonoid N} : (∀ (x x_1 : N), x_1 ∈ s → ∀ x_2 ∈ t, x_1 * x_2 = x → P x) ↔ ∀ x₁ ∈ s, ∀ x₂ ∈ t, P (x₁ * x₂) := by
  aesop
