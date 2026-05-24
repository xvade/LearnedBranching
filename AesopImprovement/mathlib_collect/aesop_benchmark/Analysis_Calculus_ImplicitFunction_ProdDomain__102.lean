-- Benchmark: Mathlib/Analysis/Calculus/ImplicitFunction/ProdDomain.lean:102
-- Original call: aesop
-- Theorem name: HasStrictFDerivAt.eventually_apply_eq_iff_implicitFunctionOfProdDomain.extracted_1_1.{u_4,
import Mathlib
import Mathlib.Tactic

open Filter Topology

set_option maxHeartbeats 800000

theorem HasStrictFDerivAt.eventually_apply_eq_iff_implicitFunctionOfProdDomain.extracted_1_1.{u_4, u_3, u_2, u_1} {𝕜 : Type u_1} [inst : NontriviallyNormedField 𝕜] {E₁ : Type u_2} [inst_1 : NormedAddCommGroup E₁] [inst_2 : NormedSpace 𝕜 E₁] [inst_3 : CompleteSpace E₁] {E₂ : Type u_3} [inst_4 : NormedAddCommGroup E₂] [inst_5 : NormedSpace 𝕜 E₂] [inst_6 : CompleteSpace E₂] {F : Type u_4} [inst_7 : NormedAddCommGroup F] [inst_8 : NormedSpace 𝕜 F] [inst_9 : CompleteSpace F] {u : E₁ × E₂} {f : E₁ × E₂ → F} {f'u : E₁ × E₂ →L[𝕜] F} (dfu : HasStrictFDerivAt f f'u u) (if₂u : (f'u.comp (ContinuousLinearMap.inr 𝕜 E₁ E₂)).IsInvertible) : let φ := dfu.implicitFunctionDataOfProdDomain if₂u; ∀ (v : E₁ × E₂), (φ.leftFun v = φ.leftFun φ.pt ↔ φ.implicitFunction (φ.leftFun φ.pt) (φ.rightFun v) = v) → φ.rightFun (φ.implicitFunction (φ.leftFun φ.pt) (φ.rightFun v)) = φ.rightFun v → dfu.implicitFunctionOfProdDomain if₂u v.1 = v.2 → φ.implicitFunction (φ.leftFun φ.pt) (φ.rightFun v) = v := by
  aesop
