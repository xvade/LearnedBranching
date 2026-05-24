-- Benchmark: Mathlib/LinearAlgebra/Dual/Lemmas.lean:331
-- Original call: aesop
-- Theorem name: Submodule.exists_dual_map_eq_bot_of_lt_top.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Module Submodule Module.Dual LinearMap Cardinal Function Basis

set_option maxHeartbeats 800000

theorem Submodule.exists_dual_map_eq_bot_of_lt_top.extracted_1_1.{u_4, u_3} {R : Type u_3} {M : Type u_4} [inst : Ring R] [inst_1 : AddCommGroup M] [inst_2 : Module R M] {p : Submodule R M} (hp : p < ⊤) (hp' : Projective R (M ⧸ p)) (x : M) (hx : x ∉ p) (f : Dual R M) (hf : f x ≠ 0) (hf' : map f p = ⊥) : f ≠ 0 := by
  aesop
