-- Benchmark: Mathlib/Algebra/BigOperators/ModEq.lean:31
-- Original call: aesop (add unsafe ModEq.mul)
-- Theorem name: Nat.ModEq.listProd_map.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Nat.ModEq.listProd_map.extracted_1_4.{u_1} {α : Type u_1} {n : ℕ} {l : List α} {f g : α → ℕ} (head : α) (tail : List α) (tail_ih : (∀ x ∈ tail, f x ≡ g x [MOD n]) → (List.map f tail).prod ≡ (List.map g tail).prod [MOD n]) (h : ∀ x ∈ head :: tail, f x ≡ g x [MOD n]) : (List.map f (head :: tail)).prod ≡ (List.map g (head :: tail)).prod [MOD n] := by
  aesop (add unsafe ModEq.mul)
