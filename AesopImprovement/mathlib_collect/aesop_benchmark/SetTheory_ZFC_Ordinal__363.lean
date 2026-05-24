-- Benchmark: Mathlib/SetTheory/ZFC/Ordinal.lean:363
-- Original call: aesop (add simp [mem_toZFSet_iff, le_iff_eq_or_lt])
-- Theorem name: Ordinal.toZFSet_add_one.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Set ZFSet

set_option maxHeartbeats 800000

theorem Ordinal.toZFSet_add_one.extracted_1_1.{u_1} (o : Ordinal.{u_1}) : (o + 1).toZFSet = insert o.toZFSet o.toZFSet := by
  aesop (add simp [mem_toZFSet_iff, le_iff_eq_or_lt])
