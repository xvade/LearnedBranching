-- Benchmark: Mathlib/Topology/Category/Profinite/Nobeling/Basic.lean:559
-- Original call: aesop (add simp Proj)
-- Theorem name: Profinite.NobelingProof.contained_proj.extracted_1_3.{u}
import Mathlib
import Mathlib.Tactic

open CategoryTheory ContinuousMap Limits Opposite Submodule

set_option maxHeartbeats 800000

theorem Profinite.NobelingProof.contained_proj.extracted_1_3.{u} {I : Type u} (C : Set (I → Bool)) [inst : LinearOrder I] [inst_1 : WellFoundedLT I] (o : Ordinal.{u}) (x w : I → Bool) (left : w ∈ C) (h : Proj (fun x => ord I x < o) w = x) (j : I) (hj : x j = true) : ord I j < o := by
  aesop (add simp Proj)
