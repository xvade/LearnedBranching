-- Benchmark: Mathlib/Data/ENat/Lattice.lean:169
-- Original call: aesop
-- Theorem name: ENat.mul_iInf'.extracted_1_2.{u_2}
import Mathlib
import Mathlib.Tactic

open Set

set_option maxHeartbeats 800000

theorem ENat.mul_iInf'.extracted_1_2.{u_2} {ι : Sort u_2} {f : ι → ℕ∞} {a : ℕ∞} (h₀ : a = 0 → Nonempty ι) (hι : IsEmpty ι) : a ≠ 0 := by
  aesop
