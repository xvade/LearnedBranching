-- Benchmark: Mathlib/CategoryTheory/GlueData.lean:411
-- Original call: aesop
-- Theorem name: CategoryTheory.GlueData'.t''.extracted_1.{u₁,
import Mathlib
import Mathlib.Tactic

open CategoryTheory.Limits Classical

set_option maxHeartbeats 800000

theorem CategoryTheory.GlueData'.t''.extracted_1.{u₁, v} {C : Type u₁} [inst : Category.{v, u₁} C] (D : GlueData' C) (i j k : D.J) (hij : i = j) : (if h : i = k then D.U i else D.V i k h) = if h : j = k then D.U j else D.V j k h := by
  aesop
