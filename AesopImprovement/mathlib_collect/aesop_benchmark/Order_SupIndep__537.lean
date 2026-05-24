-- Benchmark: Mathlib/Order/SupIndep.lean:537
-- Original call: aesop
-- Theorem name: iSupIndep.disjoint_biSup_biSup'.extracted_1_4.{u_3,
import Mathlib
import Mathlib.Tactic

open Set Function

set_option maxHeartbeats 800000

theorem iSupIndep.disjoint_biSup_biSup'.extracted_1_4.{u_3, u_1} {α : Type u_1} {ι : Type u_3} [inst : CompleteLattice α] [inst_1 : IsModularLattice α] {f : ι → α} (hf : iSupIndep f) (j : ι) (s₀ : Finset ι) (hj : j ∉ s₀) {t : Set ι} (hjt : j ∉ t) (hst : Disjoint (↑s₀) (insert j t)) (ih : Disjoint (⨆ i ∈ s₀, f i) (f j ⊔ ⨆ i ∈ t, f i)) : j ∉ t ∪ ↑s₀ := by
  aesop
