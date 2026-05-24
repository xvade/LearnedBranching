-- Benchmark: Mathlib/Algebra/Pointwise/Stabilizer.lean:70
-- Original call: aesop (add simp [SetLike.le_def])
-- Theorem name: MulAction.stabilizer_inf_stabilizer_le_stabilizer_apply₂.extracted_1_1.{u_3,
import Mathlib
import Mathlib.Tactic

open Function MulOpposite Set Pointwise

set_option maxHeartbeats 800000

theorem MulAction.stabilizer_inf_stabilizer_le_stabilizer_apply₂.extracted_1_1.{u_3, u_1} {G : Type u_1} {α : Type u_3} [inst : Group G] [inst_1 : MulAction G α] {s t : Set α} {f : Set α → Set α → Set α} (hf : ∀ (a : G), a • f s t = f (a • s) (a • t)) : stabilizer G s ⊓ stabilizer G t ≤ stabilizer G (f s t) := by
  aesop (add simp [SetLike.le_def])
