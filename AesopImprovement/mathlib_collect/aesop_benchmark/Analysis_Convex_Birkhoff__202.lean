-- Benchmark: Mathlib/Analysis/Convex/Birkhoff.lean:202
-- Original call: aesop
-- Theorem name: extremePoints_doublyStochastic.extracted_1_4.{u_2,
import Mathlib
import Mathlib.Tactic

open Finset Function Matrix

set_option maxHeartbeats 800000

theorem extremePoints_doublyStochastic.extracted_1_4.{u_2, u_1} {R : Type u_1} {n : Type u_2} [inst : Fintype n] [inst_1 : DecidableEq n] [inst_2 : Field R] [inst_3 : LinearOrder R] [inst_4 : IsStrictOrderedRing R] (σ : Equiv.Perm n) (x₁ : Matrix n n R) (hx₁ : x₁ ∈ ↑(doublyStochastic R n)) (x₂ : Matrix n n R) (hx₂ : x₂ ∈ ↑(doublyStochastic R n)) (hσ : Equiv.Perm.permMatrix R σ ∈ openSegment R x₁ x₂) (i j : n) (h₁ : Equiv.Perm.permMatrix R σ i j ∈ openSegment R (x₁ i j) (x₂ i j)) (h : x₁ i j ≠ x₂ i j) (h₂ : Equiv.Perm.permMatrix R σ i j ∈ Set.Ioo 0 1) : False := by
  aesop
