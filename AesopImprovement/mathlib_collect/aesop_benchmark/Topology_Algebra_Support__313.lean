-- Benchmark: Mathlib/Topology/Algebra/Support.lean:313
-- Original call: aesop
-- Theorem name: HasCompactMulSupport.isCompact_preimage.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set Filter Topology

set_option maxHeartbeats 800000

theorem HasCompactMulSupport.isCompact_preimage.extracted_1_1.{u_4, u_2} {α : Type u_2} {β : Type u_4} [inst : TopologicalSpace α] [inst_1 : One β] {f : α → β} [inst_2 : TopologicalSpace β] {K : Set β} (h'f : HasCompactMulSupport f) (hf : Continuous f) (hk : IsClosed K) (h'k : 1 ∉ K) (x : α) (hx : x ∈ f ⁻¹' K) : x ∈ mulSupport f := by
  aesop
