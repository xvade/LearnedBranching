-- Benchmark: Mathlib/LinearAlgebra/Finsupp/Pi.lean:241
-- Original call: aesop
-- Theorem name: FunOnFinite.map_apply_apply.extracted_1_2.{u_7,
import Mathlib
import Mathlib.Tactic

open Set LinearMap Submodule Finsupp Function

set_option maxHeartbeats 800000

theorem FunOnFinite.map_apply_apply.extracted_1_2.{u_7, u_6, u_5} {M : Type u_5} [inst : AddCommMonoid M] {X : Type u_6} {Y : Type u_7} [inst_1 : Finite Y] [inst_2 : DecidableEq Y] (f : X → Y) (y : Y) (s : X →₀ M) : (fun c => (Finsupp.single (f c) (s c)) y) = fun a => if f a = y then s a else 0 := by
  aesop
