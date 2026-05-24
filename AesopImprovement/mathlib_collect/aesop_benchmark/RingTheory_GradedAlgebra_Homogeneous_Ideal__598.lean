-- Benchmark: Mathlib/RingTheory/GradedAlgebra/Homogeneous/Ideal.lean:598
-- Original call: aesop
-- Theorem name: HomogeneousIdeal.mem_irrelevant_of_mem.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open SetLike DirectSum Set Pointwise HomogeneousIdeal GradedRing SetLike.GradedMonoid

set_option maxHeartbeats 800000

theorem HomogeneousIdeal.mem_irrelevant_of_mem.extracted_1_1.{u_3, u_2, u_1} {ι : Type u_1} {σ : Type u_2} {A : Type u_3} [inst : Semiring A] [inst_1 : DecidableEq ι] [inst_2 : AddCommMonoid ι] [inst_3 : PartialOrder ι] [inst_4 : CanonicallyOrderedAdd ι] [inst_5 : SetLike σ A] [inst_6 : AddSubmonoidClass σ A] (𝒜 : ι → σ) [inst_7 : GradedRing 𝒜] {x : A} {i : ι} (hi : 0 < i) (hx : x ∈ 𝒜 i) : 0 ≠ i := by
  aesop
