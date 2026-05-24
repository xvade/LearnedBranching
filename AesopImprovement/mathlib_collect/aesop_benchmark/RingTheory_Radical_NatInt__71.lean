-- Benchmark: Mathlib/RingTheory/Radical/NatInt.lean:71
-- Original call: aesop
-- Theorem name: Nat.radical_le_self_iff.extracted_1_1
import Mathlib
import Mathlib.Tactic

open UniqueFactorizationMonoid

set_option maxHeartbeats 800000

theorem Nat.radical_le_self_iff.extracted_1_1 {n : ℕ} : radical n ≤ n → n ≠ 0 := by
  aesop
