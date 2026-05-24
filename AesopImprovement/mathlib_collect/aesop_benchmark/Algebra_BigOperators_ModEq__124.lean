-- Benchmark: Mathlib/Algebra/BigOperators/ModEq.lean:124
-- Original call: aesop (add unsafe ModEq.mul)
-- Theorem name: Int.ModEq.listProd_map.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Int.ModEq.listProd_map.extracted_1_4.{u_1} {α : Type u_1} {n : ℤ} {l : List α} {f g : α → ℤ} (head : α) (tail : List α) (tail_ih : (∀ x ∈ tail, f x ≡ g x [ZMOD n]) → (List.map f tail).prod ≡ (List.map g tail).prod [ZMOD n]) (h : ∀ x ∈ head :: tail, f x ≡ g x [ZMOD n]) : (List.map f (head :: tail)).prod ≡ (List.map g (head :: tail)).prod [ZMOD n] := by
  aesop (add unsafe ModEq.mul)
