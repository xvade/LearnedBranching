-- Benchmark: Mathlib/Algebra/Group/Even.lean:176
-- Original call: aesop
-- Theorem name: _example.extracted_1.{u_4}
import Mathlib
import Mathlib.Tactic

open MulOpposite

set_option maxHeartbeats 800000

theorem _example.extracted_1.{u_4} {G : Type u_4} [inst : CommGroup G] {a b c d e : G} (ha : IsSquare a) {n : ℕ} {k : ℤ} (hk : Even k) : IsSquare (a * (b * b) / c ^ 2 * d ^ k * e ^ (n + n)) := by
  aesop
