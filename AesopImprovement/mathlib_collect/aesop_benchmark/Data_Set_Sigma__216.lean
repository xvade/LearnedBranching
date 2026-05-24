-- Benchmark: Mathlib/Data/Set/Sigma.lean:216
-- Original call: aesop
-- Theorem name: Set.sigma_eq_biUnion.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Set.sigma_eq_biUnion.extracted_1_1.{u_3, u_1} {ι : Type u_1} {α : ι → Type u_3} {s : Set ι} {t : (i : ι) → Set (α i)} : s.sigma t = ⋃ i ∈ s, Sigma.mk i '' t i := by
  aesop
