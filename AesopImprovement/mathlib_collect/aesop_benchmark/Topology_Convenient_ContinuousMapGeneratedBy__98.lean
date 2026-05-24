-- Benchmark: Mathlib/Topology/Convenient/ContinuousMapGeneratedBy.lean:98
-- Original call: aesop
-- Theorem name: Topology.instFunLikeContinuousMapGeneratedBy.extracted_1.{u,
import Mathlib
import Mathlib.Tactic

open Topology

set_option maxHeartbeats 800000

theorem Topology.instFunLikeContinuousMapGeneratedBy.extracted_1.{u, t, v', v} {ι : Type t} {X : ι → Type u} [inst : (i : ι) → TopologicalSpace (X i)] {Y : Type v} [inst_1 : TopologicalSpace Y] {Z : Type v'} [inst_2 : TopologicalSpace Z] (x x_1 : ContinuousMapGeneratedBy X Y Z) (x_2 : (fun f => f.toFun) x = (fun f => f.toFun) x_1) : x = x_1 := by
  aesop
