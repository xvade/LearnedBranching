-- Benchmark: Mathlib/Algebra/Group/Indicator.lean:206
-- Original call: aesop
-- Theorem name: Set.mulSupport_subset_subsingleton_of_disjoint_on_mulSupport.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Set.mulSupport_subset_subsingleton_of_disjoint_on_mulSupport.extracted_1_1.{u_3, u_2, u_1} {α : Type u_1} {β : Type u_2} {γ : Type u_3} [inst : One β] {s : γ → Set α} (f : α → β) (hs : Pairwise (Disjoint on fun j => s j ∩ mulSupport f)) (i : α) (j : γ) (hj : i ∈ s j) (this_1 : ∀ (j' : γ), j' ≠ j → {i} ⊆ s j → {i} ⊆ s j' → {i} ⊆ mulSupport f → False) (this : ¬(mulSupport fun d => (s d).mulIndicator f i) ⊆ {j}) : False := by
  aesop
