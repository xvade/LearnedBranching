-- Benchmark: Mathlib/Data/List/PeriodicityLemma.lean:93
-- Original call: aesop
-- Theorem name: List.HasPeriod.getElem?_mod.extracted_1_3.{u_1}
import Mathlib
import Mathlib.Tactic

open Nat

set_option maxHeartbeats 800000

theorem List.HasPeriod.getElem?_mod.extracted_1_3.{u_1} {α : Type u_1} (p i : ℕ) (w : List α) (per : ∀ i < w.length - p, w[i]? = w[i + p]?) (less : i < w.length) (p_zero : ¬p = 0) (large : p ≤ i) (len' : i - p < w.length) (IH : w[(i - p) % p]? = w[i - p]?) (minus : i - p < w.length - p) (per' : w[i - p]? = w[i]?) (mod : i % p = (i - p) % p) : w[i % p]? = w[i]? := by
  aesop
