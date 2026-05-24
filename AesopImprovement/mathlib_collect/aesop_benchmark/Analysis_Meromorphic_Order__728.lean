-- Benchmark: Mathlib/Analysis/Meromorphic/Order.lean:728
-- Original call: aesop (add simp Classical.em)
-- Theorem name: MeromorphicOn.eventually_analyticAt_or_mem_compl.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Filter Set WithTop.LinearOrderedAddCommGroup Topology Classical

set_option maxHeartbeats 800000

theorem MeromorphicOn.eventually_analyticAt_or_mem_compl.extracted_1_1.{u_2, u_1} {𝕜 : Type u_1} [inst : NontriviallyNormedField 𝕜] {E : Type u_2} [inst_1 : NormedAddCommGroup E] [inst_2 : NormedSpace 𝕜 E] {f : 𝕜 → E} {x : 𝕜} {U : Set 𝕜} (h : MeromorphicOn f U) (hx : x ∈ U) : {x}ᶜ = U \ {x} ∪ Uᶜ := by
  aesop (add simp Classical.em)
