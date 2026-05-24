-- Benchmark: Mathlib/Algebra/BigOperators/ModEq.lean:133
-- Original call: aesop (add unsafe ModEq.add)
-- Theorem name: Int.ModEq.listSum_map.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Int.ModEq.listSum_map.extracted_1_4.{u_1} {α : Type u_1} {n : ℤ} {l : List α} {f g : α → ℤ} (head : α) (tail : List α) (tail_ih : (∀ x ∈ tail, f x ≡ g x [ZMOD n]) → (List.map f tail).sum ≡ (List.map g tail).sum [ZMOD n]) (h : ∀ x ∈ head :: tail, f x ≡ g x [ZMOD n]) : (List.map f (head :: tail)).sum ≡ (List.map g (head :: tail)).sum [ZMOD n] := by
  aesop (add unsafe ModEq.add)
