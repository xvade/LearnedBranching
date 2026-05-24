-- Benchmark: Mathlib/SetTheory/Ordinal/Exponential.lean:297
-- Original call: aesop
-- Theorem name: Ordinal.log_zero_right.extracted_1_2.{u_1}
import Mathlib
import Mathlib.Tactic

open Function Set Equiv Order Cardinal Ordinal

set_option maxHeartbeats 800000

theorem Ordinal.log_zero_right.extracted_1_2.{u_1} (b : Ordinal.{u_1}) (hb : b ≠ 0) : (fun x => b ^ x) ⁻¹' Iic 0 = ∅ := by
  aesop
