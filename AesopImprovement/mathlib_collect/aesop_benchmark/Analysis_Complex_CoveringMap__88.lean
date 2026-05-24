-- Benchmark: Mathlib/Analysis/Complex/CoveringMap.lean:88
-- Original call: aesop
-- Theorem name: isCoveringMapOn_zpow.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Topology Polynomial

set_option maxHeartbeats 800000

theorem isCoveringMapOn_zpow.extracted_1_1.{u_1} {𝕜 : Type u_1} [inst : NontriviallyNormedField 𝕜] [inst_1 : ProperSpace 𝕜] (n : ℤ) (hn : ↑n ≠ 0) : n ≠ 0 := by
  aesop
