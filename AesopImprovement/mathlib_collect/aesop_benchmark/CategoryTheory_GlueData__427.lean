-- Benchmark: Mathlib/CategoryTheory/GlueData.lean:427
-- Original call: aesop
-- Theorem name: CategoryTheory.GlueData'.t''.extracted_13.{u₁,
import Mathlib
import Mathlib.Tactic

open CategoryTheory.Limits Classical

set_option maxHeartbeats 800000

theorem CategoryTheory.GlueData'.t''.extracted_13.{u₁, v} {C : Type u₁} [inst : Category.{v, u₁} C] (D : GlueData' C) (i j k : D.J) (hij : ¬i = j) (hik : ¬i = k) (hjk : ¬j = k) (this : j ≠ i) : (if h : i = j then D.U i else D.V i j h) = D.V i j hij := by
  aesop
