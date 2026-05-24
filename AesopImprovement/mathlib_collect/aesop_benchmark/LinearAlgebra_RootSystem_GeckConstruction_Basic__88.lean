-- Benchmark: Mathlib/LinearAlgebra/RootSystem/GeckConstruction/Basic.lean:88
-- Original call: aesop
-- Theorem name: RootPairing.GeckConstruction.linearIndependent_h.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Function Set Submodule Matrix Classical

set_option maxHeartbeats 800000

theorem RootPairing.GeckConstruction.linearIndependent_h.extracted_1_1.{u_4, u_3, u_2, u_1} {ι : Type u_1} {R : Type u_2} {M : Type u_3} {N : Type u_4} [inst : CommRing R] [inst_1 : AddCommGroup M] [inst_2 : Module R M] [inst_3 : AddCommGroup N] [inst_4 : Module R N] {P : RootPairing ι R M N} [inst_5 : P.IsCrystallographic] (b : P.Base) [inst_6 : Finite ι] [inst_7 : CharZero R] [inst_8 : IsDomain R] [inst_9 : P.IsRootSystem] (x : ↥b.support) (x_1 : ↥b.support ⊕ ι) : (Matrix.diagLinearMap (↥b.support ⊕ ι) R R) (Matrix.fromBlocks 0 0 0 (Matrix.diagonal fun x_2 => ↑(P.pairingIn ℤ x_2 ↑x))) x_1 = (⇑Sum.elimZeroLeft ∘ fun i => ⇑(algebraMap ℤ R) ∘ fun x => P.pairingIn ℤ x ↑i) x x_1 := by
  aesop
