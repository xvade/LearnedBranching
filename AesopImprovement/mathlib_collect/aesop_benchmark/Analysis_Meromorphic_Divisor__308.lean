-- Benchmark: Mathlib/Analysis/Meromorphic/Divisor.lean:308
-- Original call: aesop
-- Theorem name: MeromorphicOn.divisor_prod.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Filter Topology Classical Finset

set_option maxHeartbeats 800000

theorem MeromorphicOn.divisor_prod.extracted_1_1.{u_3, u_1} {𝕜 : Type u_1} [inst : NontriviallyNormedField 𝕜] {U : Set 𝕜} {ι : Type u_3} {f : ι → 𝕜 → 𝕜} (a : ι) (s : Finset ι) (ha : a ∉ s) (hs : (∀ i ∈ s, MeromorphicOn (f i) U) → (∀ i ∈ s, ∀ z ∈ U, meromorphicOrderAt (f i) z ≠ ⊤) → divisor (∏ i ∈ s, f i) U = ∑ i ∈ s, divisor (f i) U) (h₁f : ∀ i ∈ insert a s, MeromorphicOn (f i) U) (h₂f : ∀ i ∈ insert a s, ∀ z ∈ U, meromorphicOrderAt (f i) z ≠ ⊤) (this : ∀ z ∈ U, meromorphicOrderAt (∏ i ∈ s, f i) z ≠ ⊤) : MeromorphicOn (f a) U := by
  aesop
