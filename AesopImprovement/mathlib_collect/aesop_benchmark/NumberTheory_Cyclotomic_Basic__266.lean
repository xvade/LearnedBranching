-- Benchmark: Mathlib/NumberTheory/Cyclotomic/Basic.lean:266
-- Original call: aesop
-- Theorem name: IsCyclotomicExtension.iff_union_singleton_one.extracted_1_1.{v,
import Mathlib
import Mathlib.Tactic

open Polynomial Algebra Module Set

set_option maxHeartbeats 800000

theorem IsCyclotomicExtension.iff_union_singleton_one.extracted_1_1.{v, u} (S : Set ℕ) (A : Type u) (B : Type v) [inst : CommRing A] [inst_1 : CommRing B] [inst_2 : Algebra A B] (hS : ¬∃ s ∈ S, s ≠ 0) : S \ {0} = ∅ := by
  aesop
