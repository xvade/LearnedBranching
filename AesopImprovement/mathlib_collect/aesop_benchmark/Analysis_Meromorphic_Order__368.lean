-- Benchmark: Mathlib/Analysis/Meromorphic/Order.lean:368
-- Original call: aesop
-- Theorem name: meromorphicOrderAt_zpow_id_sub_const.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Filter Set WithTop.LinearOrderedAddCommGroup Topology Classical

set_option maxHeartbeats 800000

theorem meromorphicOrderAt_zpow_id_sub_const.extracted_1_1.{u_1} {𝕜 : Type u_1} [inst : NontriviallyNormedField 𝕜] {x : 𝕜} {n : ℤ} : ∀ᶠ (z : 𝕜) in 𝓝[≠] x, ((fun x_1 => x_1 - x) ^ n) z = (z - x) ^ n • (fun z => 1) z := by
  aesop
