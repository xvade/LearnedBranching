-- Benchmark: Mathlib/Data/Set/Insert.lean:356
-- Original call: aesop
-- Theorem name: Set.pair_eq_pair_iff.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Set.pair_eq_pair_iff.extracted_1_3.{u_1} {α : Type u_1} {x y z w : α} : ((x = z ∨ x = w) ∧ (y = z ∨ y = w)) ∧ (z = x ∨ z = y) ∧ (w = x ∨ w = y) ↔ x = z ∧ y = w ∨ x = w ∧ y = z := by
  aesop
