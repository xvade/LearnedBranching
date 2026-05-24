-- Benchmark: Mathlib/Data/PFun.lean:572
-- Original call: aesop
-- Theorem name: PFun.prodMap_id_id.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem PFun.prodMap_id_id.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} : (PFun.id α).prodMap (PFun.id β) = PFun.id (α × β) := by
  aesop
