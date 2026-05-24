-- Benchmark: Mathlib/Data/Set/Image.lean:912
-- Original call: aesop (add simp [Unique.eq_default])
-- Theorem name: Set.range_unique.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set

set_option maxHeartbeats 800000

theorem Set.range_unique.extracted_1_1.{u_4, u_1} {α : Type u_1} {ι : Sort u_4} {f : ι → α} [inst : Unique ι] : range f = {f default} := by
  aesop (add simp [Unique.eq_default])
