-- Benchmark: Mathlib/Tactic/NormNum/Basic.lean:675
-- Original call: aesop
-- Theorem name: Mathlib.Meta.NormNum.isNat_natMod.extracted_1_3
import Mathlib
import Mathlib.Tactic

open Lean Meta Qq

set_option maxHeartbeats 800000

theorem Mathlib.Meta.NormNum.isNat_natMod.extracted_1_3 (n n_1 : ℕ) : ↑n % ↑n_1 = ↑(n.mod n_1) := by
  aesop
