-- Benchmark: Mathlib/NumberTheory/Cyclotomic/Basic.lean:217
-- Original call: aesop
-- Theorem name: IsCyclotomicExtension.union_of_isPrimitiveRoot.extracted_1_1.{v,
import Mathlib
import Mathlib.Tactic

open Polynomial Algebra Module Set

set_option maxHeartbeats 800000

theorem IsCyclotomicExtension.union_of_isPrimitiveRoot.extracted_1_1.{v, u} {n : ℕ} [inst : NeZero n] (S : Set ℕ) (A : Type u) (B : Type v) [inst_1 : CommRing A] [inst_2 : CommRing B] [inst_3 : Algebra A B] [hB : IsCyclotomicExtension S A B] {r : B} (hr : IsPrimitiveRoot r n) (hn : ¬n = 0) : {b | ∃ n ∈ S, n ≠ 0 ∧ b ^ n = 1} ⊆ {b | ∃ n_1 ∈ S ∪ {n}, n_1 ≠ 0 ∧ b ^ n_1 = 1} := by
  aesop
