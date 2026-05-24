-- Benchmark: Mathlib/Data/Matrix/Basis.lean:94
-- Original call: aesop (add unsafe unfold single)
-- Theorem name: Matrix.map_single.extracted_1_1.{u_11,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Matrix.map_single.extracted_1_1.{u_11, u_10, u_7, u_3, u_2} {m : Type u_2} {n : Type u_3} {α : Type u_7} [inst : DecidableEq m] [inst_1 : DecidableEq n] [inst_2 : Zero α] (i : m) (j : n) (a : α) {β : Type u_10} [inst_3 : Zero β] {F : Type u_11} [inst_4 : FunLike F α β] [inst_5 : ZeroHomClass F α β] (f : F) : (single i j a).map ⇑f = single i j (f a) := by
  aesop (add unsafe unfold single)
