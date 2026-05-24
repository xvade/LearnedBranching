-- Benchmark: Mathlib/Analysis/Complex/CoveringMap.lean:81
-- Original call: aesop
-- Theorem name: isCoveringMap_zpow.extracted_1_7.{u_1}
import Mathlib
import Mathlib.Tactic

open Topology Polynomial

set_option maxHeartbeats 800000

theorem isCoveringMap_zpow.extracted_1_7.{u_1} {𝕜 : Type u_1} [inst : NontriviallyNormedField 𝕜] [inst_1 : ProperSpace 𝕜] (n : ℕ) (hn : ↑↑n ≠ 0) : ↑n ≠ 0 := by
  aesop
