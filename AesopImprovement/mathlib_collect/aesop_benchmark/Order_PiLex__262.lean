-- Benchmark: Mathlib/Order/PiLex.lean:262
-- Original call: aesop
-- Theorem name: Pi.apply_le_of_toColex.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function

set_option maxHeartbeats 800000

theorem Pi.apply_le_of_toColex.extracted_1_1.{u_2, u_1} {ι : Type u_1} {β : ι → Type u_2} [inst : LinearOrder ι] {x y : (i : ι) → β i} {i : ι} [inst_1 : (i : ι) → LinearOrder (β i)] (h : ∀ (j : ι), j > i → x j = y j) (hxy : y i < x i) : (∀ (j : ι), (fun x1 x2 => x1 > x2) j i → toColex y j = toColex x j) ∧ (fun {i} x1 x2 => x1 < x2) (toColex y i) (toColex x i) := by
  aesop
