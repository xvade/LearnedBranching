-- Benchmark: Mathlib/Topology/IndicatorConstPointwise.lean:119
-- Original call: aesop
-- Theorem name: tendsto_indicator_const_iff_tendsto_pi_pure'.extracted_1_2.{u_3,
import Mathlib
import Mathlib.Tactic

open Filter Topology

set_option maxHeartbeats 800000

theorem tendsto_indicator_const_iff_tendsto_pi_pure'.extracted_1_2.{u_3, u_2, u_1} {α : Type u_1} {A : Set α} {β : Type u_2} [inst : Zero β] [inst_1 : TopologicalSpace β] {ι : Type u_3} (L : Filter ι) {As : ι → Set α} (b : β) (nhds_b : {0}ᶜ ∈ 𝓝 b) (nhds_o : {b}ᶜ ∈ 𝓝 0) : (∀ (x : α), ∀ᶠ (i : ι) in L, x ∈ As i ↔ x ∈ A) ↔ ∀ (i : α), ∀ᶠ (x : ι) in L, (i ∈ As x) = (i ∈ A) := by
  aesop
