-- Benchmark: Mathlib/Order/Interval/Finset/Basic.lean:706
-- Original call: aesop (add safe forward [le_antisymm, le_of_lt])
-- Theorem name: Finset.Ioc_map_sectR.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function OrderDual FinsetInterval

set_option maxHeartbeats 800000

theorem Finset.Ioc_map_sectR.extracted_1_1.{u_3, u_2} {α : Type u_2} {β : Type u_3} [inst : PartialOrder α] [inst_1 : Preorder β] [inst_2 : LocallyFiniteOrder α] [inst_3 : LocallyFiniteOrder β] [inst_4 : DecidableLE (α × β)] (c : α) (a b : β) : map (Embedding.sectR c β) (Ioc a b) = Ioc (c, a) (c, b) := by
  aesop (add safe forward [le_antisymm, le_of_lt])
