-- Benchmark: Mathlib/LinearAlgebra/PiTensorProduct.lean:680
-- Original call: aesop
-- Theorem name: PiTensorProduct.reindex.extracted_1.{u_7,
import Mathlib
import Mathlib.Tactic

open Function TensorProduct MultilinearMap

set_option maxHeartbeats 800000

theorem PiTensorProduct.reindex.extracted_1.{u_7, u_4, u_2, u_1} {ι : Type u_1} {ι₂ : Type u_2} (R : Type u_4) [inst : CommSemiring R] (s : ι → Type u_7) [inst_1 : (i : ι) → AddCommMonoid (s i)] [inst_2 : (i : ι) → Module R (s i)] (e : ι ≃ ι₂) : let f := domDomCongrLinearEquiv' R R s (⨂[R] (i : ι₂), s (e.symm i)) e; let g := domDomCongrLinearEquiv' R R s (⨂[R] (i : ι), s i) e; lift (f.symm (tprod R)) ∘ₗ lift (g (tprod R)) = LinearMap.id := by
  aesop
