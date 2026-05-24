-- Benchmark: Mathlib/Data/Finset/Union.lean:209
-- Original call: aesop
-- Theorem name: Finset.biUnion_insert.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Finset.biUnion_insert.extracted_1_1.{u_2, u_1} {α : Type u_1} {β : Type u_2} {s : Finset α} {t : α → Finset β} [inst : DecidableEq β] [inst_1 : DecidableEq α] {a : α} : (insert a s).biUnion t = t a ∪ s.biUnion t := by
  aesop
