-- Benchmark: Mathlib/RingTheory/PiTensorProduct.lean:211
-- Original call: aesop
-- Theorem name: PiTensorProduct.liftAlgHom.extracted_2.{u_5,
import Mathlib
import Mathlib.Tactic

open TensorProduct Function

set_option maxHeartbeats 800000

theorem PiTensorProduct.liftAlgHom.extracted_2.{u_5, u_4, u_3, u_2, u_1} {ι : Type u_1} {R' : Type u_2} {R : Type u_3} {A : ι → Type u_4} [inst : CommSemiring R'] [inst_1 : CommSemiring R] [inst_2 : (i : ι) → Semiring (A i)] [inst_3 : Algebra R' R] [inst_4 : (i : ι) → Algebra R (A i)] [inst_5 : (i : ι) → Algebra R' (A i)] [inst_6 : ∀ (i : ι), IsScalarTower R' R (A i)] {S : Type u_5} [inst_7 : Semiring S] [inst_8 : Algebra R S] (f : MultilinearMap R A S) (one : f 1 = 1) (mul : ∀ (x y : (i : ι) → A i), f (x * y) = f x * f y) : (LinearMap.mul R (⨂[R] (i : ι), A i)).compr₂ (lift f) = (LinearMap.mul R S ∘ₗ lift f).compl₂ (lift f) := by
  aesop
