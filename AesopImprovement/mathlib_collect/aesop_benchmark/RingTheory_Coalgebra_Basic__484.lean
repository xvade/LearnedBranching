-- Benchmark: Mathlib/RingTheory/Coalgebra/Basic.lean:484
-- Original call: aesop (add simp [map_map, DFinsupp.single_eq_pi_single])
-- Theorem name: Pi.comul_comp_dFinsuppCoeFnLinearMap.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open TensorProduct Coalgebra LinearMap DFinsupp

set_option maxHeartbeats 800000

theorem Pi.comul_comp_dFinsuppCoeFnLinearMap.extracted_1_1.{u_3, u_2, u_1} {R : Type u_1} {n : Type u_2} [inst : CommSemiring R] [inst_1 : Fintype n] [inst_2 : DecidableEq n] {A : n → Type u_3} [inst_3 : (i : n) → AddCommMonoid (A i)] [inst_4 : (i : n) → Module R (A i)] [inst_5 : (i : n) → CoalgebraStruct R (A i)] (x : Π₀ (i : n), A i) (this : (i : n) → (x : A i) → Decidable (x ≠ 0)) : (comul ∘ₗ coeFnLinearMap R) (x.sum DFinsupp.single) = (map (coeFnLinearMap R) (coeFnLinearMap R) ∘ₗ comul) (x.sum DFinsupp.single) := by
  aesop (add simp [map_map, DFinsupp.single_eq_pi_single])
