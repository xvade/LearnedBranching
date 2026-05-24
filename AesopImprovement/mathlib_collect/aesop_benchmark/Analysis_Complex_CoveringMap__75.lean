-- Benchmark: Mathlib/Analysis/Complex/CoveringMap.lean:75
-- Original call: aesop
-- Theorem name: isCoveringMap_npow.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Topology Polynomial

set_option maxHeartbeats 800000

theorem isCoveringMap_npow.extracted_1_1.{u_1} {𝕜 : Type u_1} [inst : NontriviallyNormedField 𝕜] [inst_1 : ProperSpace 𝕜] (n : ℕ) (hn : ↑n ≠ 0) : n ≠ 0 := by
  aesop
