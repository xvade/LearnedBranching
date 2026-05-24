-- Benchmark: Mathlib/LinearAlgebra/Matrix/Rank.lean:64
-- Original call: aesop
-- Theorem name: Matrix.lift_cRank_submatrix_le.extracted_1_1.{uR,
import Mathlib
import Mathlib.Tactic

open Matrix Module Cardinal Set Submodule

set_option maxHeartbeats 800000

theorem Matrix.lift_cRank_submatrix_le.extracted_1_1.{uR, un₀, un, um₀, um} {m : Type um} {m₀ : Type um₀} {n : Type un} {n₀ : Type un₀} {R : Type uR} [inst : Semiring R] (A : Matrix m n R) (r : m₀ → m) (c : n₀ → n) (h : ((A.submatrix r id).submatrix id c).cRank ≤ (A.submatrix r id).cRank) : let f := LinearMap.funLeft R R r; span R ((fun x => f (Aᵀ x)) '' Set.univ) = span R (range (Aᵀ.submatrix id r)) := by
  aesop
