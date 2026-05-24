-- Benchmark: Mathlib/Data/Bool/Count.lean:30
-- Original call: aesop (add simp this)
-- Theorem name: List.count_not_add_count.extracted_1_1
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem List.count_not_add_count.extracted_1_1 (l : List Bool) (b : Bool) (this : l.length = countP (fun x => x == !b) l + countP (fun a => decide ¬(a == !b) = true) l) : count (!b) l + count b l = l.length := by
  aesop (add simp this)
