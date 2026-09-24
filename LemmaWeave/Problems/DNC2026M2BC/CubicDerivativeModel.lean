import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.Tactic

namespace LemmaWeave.Problems.DNC2026M2BC.CubicDerivative

/-- 令和8年度共通テスト数学II・B・C第3問(1)の3次関数。 -/
def cubic (k x : ℝ) : ℝ := (1 / 3 : ℝ) * x ^ 3 - 2 * x ^ 2 + 3 * x + k

/-- 原題の解答欄アに対応する導関数。 -/
def cubicDerivative (x : ℝ) : ℝ := x ^ 2 - 4 * x + 3

/-- すべての実数パラメータと入力で、提示した多項式が実際の導関数である。 -/
def DerivativeGoal : Prop :=
  ∀ k x : ℝ, HasDerivAt (cubic k) (cubicDerivative x) x

end LemmaWeave.Problems.DNC2026M2BC.CubicDerivative
