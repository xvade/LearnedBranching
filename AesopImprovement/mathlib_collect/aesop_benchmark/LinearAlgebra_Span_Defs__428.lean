-- Benchmark: Mathlib/LinearAlgebra/Span/Defs.lean:428
-- Original call: aesop
-- Theorem name: Submodule.forall_mem_sup.extracted_1_2.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set Pointwise AddSubmonoid

set_option maxHeartbeats 800000

theorem Submodule.forall_mem_sup.extracted_1_2.{u_4, u_1} {R : Type u_1} {M : Type u_4} [inst : Semiring R] [inst_1 : AddCommMonoid M] [inst_2 : Module R M] (p p' : Submodule R M) {P : M → Prop} : (∀ (x x_1 : M), x_1 ∈ p → ∀ x_2 ∈ p', x_1 + x_2 = x → P x) ↔ ∀ x₁ ∈ p, ∀ x₂ ∈ p', P (x₁ + x₂) := by
  aesop
