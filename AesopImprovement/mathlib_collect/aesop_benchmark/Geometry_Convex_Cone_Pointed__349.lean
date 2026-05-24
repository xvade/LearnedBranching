-- Benchmark: Mathlib/Geometry/Convex/Cone/Pointed.lean:349
-- Original call: aesop
-- Theorem name: PointedCone.gc_ofSubmodule_lineal.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Function Submodule Pointwise

set_option maxHeartbeats 800000

theorem PointedCone.gc_ofSubmodule_lineal.extracted_1_1.{u_2, u_1} {R : Type u_1} {E : Type u_2} [inst : Ring R] [inst_1 : LinearOrder R] [inst_2 : IsOrderedRing R] [inst_3 : AddCommGroup E] [inst_4 : Module R E] (x : Submodule R E) (x_1 : PointedCone R E) (x_2 : ↑x ≤ x_1) (x_3 : E) : x_3 ∈ x → x_3 ∈ x_1.lineal := by
  aesop
