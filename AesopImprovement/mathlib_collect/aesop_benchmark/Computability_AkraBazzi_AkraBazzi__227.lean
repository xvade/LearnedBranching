-- Benchmark: Mathlib/Computability/AkraBazzi/AkraBazzi.lean:227
-- Original call: aesop
-- Theorem name: AkraBazziRecurrence.isBigO_apply_r_sub_b.extracted_1_1.{u_1}
import Mathlib
import Mathlib.Tactic

open Finset Real Filter Asymptotics Topology

set_option maxHeartbeats 800000

theorem AkraBazziRecurrence.isBigO_apply_r_sub_b.extracted_1_1.{u_1} {α : Type u_1} [inst : Fintype α] {b : α → ℝ} {r : α → ℕ → ℕ} [inst_1 : Nonempty α] : let b' := b (min_bi b) / 2; 0 < b' → b' < 1 → b' ∈ Set.Ioo 0 1 → ∀ (i : α), b (min_bi b) ≤ b i := by
  aesop
