-- Benchmark: Mathlib/Data/Finsupp/Weight.lean:327
-- Original call: aesop (add simp Set.subset_def)
-- Theorem name: Finsupp.nsmul_single_one_image.extracted_1_9.{u_5}
import Mathlib
import Mathlib.Tactic

open Module Pointwise

set_option maxHeartbeats 800000

theorem Finsupp.nsmul_single_one_image.extracted_1_9.{u_5} {α : Type u_5} {s : Set α} (n : ℕ) (ih : n • (fun x => single x 1) '' s = {x | degree x = n ∧ ↑x.support ⊆ s}) (f : α →₀ ℕ) (x_1 : f ∈ {x | degree x = n + 1 ∧ ↑x.support ⊆ s}) (f_deg : degree f = n + 1) (f_supp : ↑f.support ⊆ s) (i : α) (hi : i ∈ f.support) (x : α →₀ ℕ) (hx : f = x + single i 1) : x ∈ {x | degree x = n ∧ ↑x.support ⊆ s} := by
  aesop (add simp Set.subset_def)
