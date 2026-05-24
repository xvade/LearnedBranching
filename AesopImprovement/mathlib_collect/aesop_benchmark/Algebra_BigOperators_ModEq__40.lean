-- Benchmark: Mathlib/Algebra/BigOperators/ModEq.lean:40
-- Original call: aesop (add unsafe ModEq.add)
-- Theorem name: Nat.ModEq.listSum_map.extracted_1_4.{u_1}
import Mathlib
import Mathlib.Tactic

set_option maxHeartbeats 800000

theorem Nat.ModEq.listSum_map.extracted_1_4.{u_1} {α : Type u_1} {n : ℕ} {l : List α} {f g : α → ℕ} (head : α) (tail : List α) (tail_ih : (∀ x ∈ tail, f x ≡ g x [MOD n]) → (List.map f tail).sum ≡ (List.map g tail).sum [MOD n]) (h : ∀ x ∈ head :: tail, f x ≡ g x [MOD n]) : (List.map f (head :: tail)).sum ≡ (List.map g (head :: tail)).sum [MOD n] := by
  aesop (add unsafe ModEq.add)
