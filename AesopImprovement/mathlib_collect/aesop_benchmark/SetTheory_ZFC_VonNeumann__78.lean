-- Benchmark: Mathlib/SetTheory/ZFC/VonNeumann.lean:78
-- Original call: aesop
-- Theorem name: ZFSet.mem_vonNeumann.extracted_1_5.{u}
import Mathlib
import Mathlib.Tactic

open Order

set_option maxHeartbeats 800000

theorem ZFSet.mem_vonNeumann.extracted_1_5.{u} {o : Ordinal.{u}} {x : ZFSet.{u}} : x.rank < o → ∃ a < o, x.rank ≤ a := by
  aesop
