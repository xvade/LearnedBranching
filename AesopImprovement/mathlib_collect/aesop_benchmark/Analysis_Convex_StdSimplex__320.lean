-- Benchmark: Mathlib/Analysis/Convex/StdSimplex.lean:320
-- Original call: aesop
-- Theorem name: stdSimplex.map.extracted_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Set Convex Bornology

set_option maxHeartbeats 800000

theorem stdSimplex.map.extracted_1.{u_3, u_2, u_1} {S : Type u_1} [inst : Semiring S] [inst_1 : PartialOrder S] {X : Type u_2} {Y : Type u_3} [inst_2 : Fintype X] [inst_3 : Fintype Y] [inst_4 : IsOrderedRing S] (f : X → Y) (s : ↑(stdSimplex S X)) : (FunOnFinite.linearMap S S f) ⇑s ∈ ⇑(FunOnFinite.linearMap S S f) '' stdSimplex S X := by
  aesop
