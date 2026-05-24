-- Benchmark: Mathlib/Data/Nat/Digits/Lemmas.lean:59
-- Original call: aesop
-- Theorem name: Nat.length_digits.extracted_1_1
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Nat.length_digits.extracted_1_1 (b : ℕ) (hb : 1 < b) (n : ℕ) (IH : ∀ m < n, m ≠ 0 → (b.digits m).length = log b m + 1) (hn : n ≠ 0) (h : n / b = 0) : n < b ∨ b ≤ 1 := by
  aesop
