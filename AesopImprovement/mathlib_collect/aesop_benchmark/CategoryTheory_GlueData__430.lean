-- Benchmark: Mathlib/CategoryTheory/GlueData.lean:430
-- Original call: aesop
-- Theorem name: CategoryTheory.GlueData'.t''.extracted_18.{u₁,
import Mathlib
import Mathlib.Tactic

open CategoryTheory.Limits Classical

set_option maxHeartbeats 800000

theorem CategoryTheory.GlueData'.t''.extracted_18.{u₁, v} {C : Type u₁} [inst : Category.{v, u₁} C] (D : GlueData' C) (i j k : D.J) (hij : ¬i = j) (hik : ¬i = k) (hjk : ¬j = k) (this : j ≠ i) : D.V j k hjk = if h : j = k then D.U j else D.V j k h := by
  aesop
