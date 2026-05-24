-- Benchmark: Mathlib/Data/Finset/Sups.lean:613
-- Original call: aesop
-- Theorem name: Finset.exists_compls_iff.extracted_1_1.{u_2}
import Mathlib
import Mathlib.Tactic

open Function SetFamily FinsetFamily

set_option maxHeartbeats 800000

theorem Finset.exists_compls_iff.extracted_1_1.{u_2} {α : Type u_2} [inst : BooleanAlgebra α] {s : Finset α} {p : α → Prop} : (∃ a ∈ sᶜˢ, p a) ↔ ∃ a ∈ s, p aᶜ := by
  aesop
