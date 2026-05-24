-- Benchmark: Mathlib/LinearAlgebra/Dimension/Constructions.lean:638
-- Original call: aesop
-- Theorem name: Module.Basis.sumQuot_repr_inr_of_mem.extracted_1_1.{u_5,
import Mathlib
import Mathlib.Tactic

open Basis Cardinal DirectSum Function Module Set Submodule Module.Free Fintype LinearMap TensorProduct

set_option maxHeartbeats 800000

theorem Module.Basis.sumQuot_repr_inr_of_mem.extracted_1_1.{u_5, u_4, u_3, u_2} {R : Type u_2} {V : Type u_3} [inst : CommRing R] [inst_1 : AddCommGroup V] [inst_2 : Module R V] {W : Submodule R V} {m : Type u_4} {n : Type u_5} (bW : Basis m R ↥W) (bQ : Basis n R (V ⧸ W)) (v : V) (hv : v ∈ W) : W.mkQ v = 0 := by
  aesop
