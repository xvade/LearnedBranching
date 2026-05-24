-- Benchmark: Mathlib/RingTheory/Coalgebra/Basic.lean:463
-- Original call: aesop (add simp [map_map, proj_comp_single, diag])
-- Theorem name: Pi.comul_comp_proj.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open TensorProduct Coalgebra LinearMap

set_option maxHeartbeats 800000

theorem Pi.comul_comp_proj.extracted_1_1.{u_3, u_2, u_1} {R : Type u_1} {n : Type u_2} [inst : CommSemiring R] [inst_1 : Fintype n] [inst_2 : DecidableEq n] {A : n → Type u_3} [inst_3 : (i : n) → AddCommMonoid (A i)] [inst_4 : (i : n) → Module R (A i)] [inst_5 : (i : n) → CoalgebraStruct R (A i)] (i j : n) (x : A j) (this : i = j ∨ i ≠ j) : ((comul ∘ₗ proj i) ∘ₗ LinearMap.single R A j) x = ((map (proj i) (proj i) ∘ₗ comul) ∘ₗ LinearMap.single R A j) x := by
  aesop (add simp [map_map, proj_comp_single, diag])
