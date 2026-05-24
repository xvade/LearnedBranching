-- Benchmark: Mathlib/GroupTheory/SpecificGroups/Cyclic.lean:357
-- Original call: aesop
-- Theorem name: not_isCyclic_iff_exponent_eq_prime.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Subgroup Finset Nat IsMulCommutative Monoid

set_option maxHeartbeats 800000

theorem not_isCyclic_iff_exponent_eq_prime.extracted_1_1.{u_1} {α : Type u_1} [inst : Group α] {p : ℕ} (hp : Nat.Prime p) (hα : Nat.card α = p ^ 2) (this_1 : Finite α) (this : Nontrivial α) (h_cyc : ¬IsCyclic α) (g : α) (hg : g ≠ 1) : p ^ 2 ≠ 0 := by
  aesop
