-- Benchmark: Mathlib/Data/Finsupp/Weight.lean:324
-- Original call: aesop
-- Theorem name: Finsupp.nsmul_single_one_image.extracted_1_7.{u_5}
import Mathlib
import Mathlib.Tactic

open Module Pointwise

set_option maxHeartbeats 800000

theorem Finsupp.nsmul_single_one_image.extracted_1_7.{u_5} {α : Type u_5} {s : Set α} (n : ℕ) (ih : n • (fun x => single x 1) '' s = {x | degree x = n ∧ ↑x.support ⊆ s}) (f : α →₀ ℕ) (x : f ∈ {x | degree x = n + 1 ∧ ↑x.support ⊆ s}) (f_deg : degree f = n + 1) (f_supp : ↑f.support ⊆ s) : f.support.Nonempty := by
  aesop
