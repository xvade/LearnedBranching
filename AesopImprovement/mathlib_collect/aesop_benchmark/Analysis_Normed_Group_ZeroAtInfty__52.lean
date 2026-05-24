-- Benchmark: Mathlib/Analysis/Normed/Group/ZeroAtInfty.lean:52
-- Original call: aesop
-- Theorem name: zero_at_infty_of_norm_le.extracted_1_1.{u_2,
import Mathlib
import Mathlib.Tactic

open Topology Filter

set_option maxHeartbeats 800000

theorem zero_at_infty_of_norm_le.extracted_1_1.{u_2, u_1} {E : Type u_1} {F : Type u_2} [inst : SeminormedAddGroup E] [inst_1 : SeminormedAddCommGroup F] [inst_2 : ProperSpace E] (f : E → F) (h : ∀ (ε : ℝ), 0 < ε → ∃ r, ∀ (x : E), r < ‖x‖ → ‖f x‖ < ε) ⦃s : Set ℝ⦄ (ε : ℝ) (hε : ε > 0) (hs : Metric.ball 0 ε ⊆ s) (r : ℝ) (hr : ∀ (x : E), r < ‖x‖ → ‖f x‖ < ε) ⦃a : E⦄ : a ∈ (Metric.closedBall 0 r)ᶜ → a ∈ (fun x => ‖f x‖) ⁻¹' s := by
  aesop
