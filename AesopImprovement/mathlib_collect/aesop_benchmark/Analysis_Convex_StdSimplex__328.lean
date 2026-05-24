-- Benchmark: Mathlib/Analysis/Convex/StdSimplex.lean:328
-- Original call: aesop
-- Theorem name: stdSimplex.map_id_apply.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Set Convex Bornology

set_option maxHeartbeats 800000

theorem stdSimplex.map_id_apply.extracted_1_1.{u_2, u_1} {S : Type u_1} [inst : Semiring S] [inst_1 : PartialOrder S] {X : Type u_2} [inst_2 : Fintype X] [inst_3 : IsOrderedRing S] (x : ↑(stdSimplex S X)) : map id x = x := by
  aesop
