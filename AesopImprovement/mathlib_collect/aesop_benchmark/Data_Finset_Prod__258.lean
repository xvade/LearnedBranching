-- Benchmark: Mathlib/Data/Finset/Prod.lean:258
-- Original call: aesop (add simp diag)
-- Theorem name: Finset.mem_diag.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Multiset

set_option maxHeartbeats 800000

theorem Finset.mem_diag.extracted_1_1.{u_1} {α : Type u_1} {s : Finset α} {x : α × α} : x ∈ s.diag ↔ x.1 ∈ s ∧ x.1 = x.2 := by
  aesop (add simp diag)
