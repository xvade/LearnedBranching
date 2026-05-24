-- Benchmark: Mathlib/Data/Finsupp/Weight.lean:296
-- Original call: aesop
-- Theorem name: Finsupp.exists_le_degree_eq.extracted_1_3.{u_5}
import Mathlib
import Mathlib.Tactic

open Module

set_option maxHeartbeats 800000

theorem Finsupp.exists_le_degree_eq.extracted_1_3.{u_5} {σ : Type u_5} (g f : σ →₀ ℕ) (hgf : g ≤ g + f) (IH : degree g ≤ degree (g + f) → ∃ g_1 ≤ g + f, degree g_1 = degree g) (hn : degree g + 1 ≤ degree (g + f)) : f.support.Nonempty := by
  aesop
