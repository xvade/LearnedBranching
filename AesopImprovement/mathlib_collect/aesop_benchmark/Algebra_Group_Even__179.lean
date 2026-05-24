-- Benchmark: Mathlib/Algebra/Group/Even.lean:179
-- Original call: aesop
-- Theorem name: _example.extracted_1.{u_4}
import Mathlib
import Mathlib.Tactic

open MulOpposite

set_option maxHeartbeats 800000

theorem _example.extracted_1.{u_4} {G : Type u_4} [inst : AddCommGroup G] {a b c d e : G} (ha : Even a) {n : ℕ} {k : ℤ} (hk : Even k) : Even (a + (b + b) - 2 • c + k • d + (n + n) • e) := by
  aesop
