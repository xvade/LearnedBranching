-- Benchmark: Mathlib/Algebra/Module/Torsion/PrimaryComponent.lean:127
-- Original call: aesop
-- Theorem name: Ideal.primaryComponent_sup.extracted_1_11.{u_2,
import Mathlib
import Mathlib.Tactic

open Set Function Submodule Module

set_option maxHeartbeats 800000

theorem Ideal.primaryComponent_sup.extracted_1_11.{u_2, u_1} {A : Type u_1} {M : Type u_2} [inst : CommRing A] (I : Ideal A) [inst_1 : AddCommGroup M] [inst_2 : Module A M] (N₁ N₂ : Submodule A M) (hD : Disjoint N₁ N₂) (y : M) (hymem : y ∈ N₁) (n₁ : ℕ) (z : M) (hzmem : z ∈ N₂) (n₂ : ℕ) (a : A) (ha : a ∈ I ^ max n₁ n₂) (hy : a • y = 0) (hz : a • z = 0) : a • (y + z) = 0 := by
  aesop
