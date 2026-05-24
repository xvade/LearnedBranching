-- Benchmark: Mathlib/Algebra/Group/Submonoid/Support.lean:84
-- Original call: aesop
-- Theorem name: isMulPointed_iff_mulSupport_eq_bot.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Pointwise

set_option maxHeartbeats 800000

theorem isMulPointed_iff_mulSupport_eq_bot.extracted_1_1.{u_1} {G : Type u_1} [inst : Group G] {M : Submonoid G} : M.IsMulPointed → M.mulSupport = ⊥ := by
  aesop
