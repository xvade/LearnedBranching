-- Benchmark: Mathlib/Topology/LocallyFinsupp.lean:171
-- Original call: aesop
-- Theorem name: Function.locallyFinsuppWithin.single_zero.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Filter Function Set Topology

set_option maxHeartbeats 800000

theorem Function.locallyFinsuppWithin.single_zero.extracted_1_1.{u_2, u_1} {X : Type u_1} [inst : TopologicalSpace X] {Y : Type u_2} [inst_1 : DecidableEq X] [inst_2 : Zero Y] {x : X} : single x 0 = 0 := by
  aesop
