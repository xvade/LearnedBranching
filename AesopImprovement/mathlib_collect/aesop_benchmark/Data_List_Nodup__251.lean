-- Benchmark: Mathlib/Data/List/Nodup.lean:251
-- Original call: aesop
-- Theorem name: List.nodup_tail_reverse.extracted_1_3.{u}
import Mathlib
import Mathlib.Tactic

open Function Relator

set_option maxHeartbeats 800000

theorem List.nodup_tail_reverse.extracted_1_3.{u} {α : Type u} (a : α) (l : List α) (ih : l[0]? = l.getLast? → (l.dropLast.Nodup ↔ l.tail.Nodup)) (h : (a :: l)[0]? = (a :: l).getLast?) (hl : ¬l = []) : l.length ≠ 0 := by
  aesop
