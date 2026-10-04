import LemmaWeave.Problems.DNC2026M2BC.CubicDerivativeModel
import Mathlib.Tactic

namespace LemmaWeave.Problems.DNC2026M2BC.CubicExtrema

open LemmaWeave.Problems.DNC2026M2BC.CubicDerivative

/--
令和8年度共通テスト数学II・B・C第3問(1)の解答欄イ・ウ・エ・オ。
停留点を漏れなく求め、`1` の近傍 `[0,2]` で極大、`3` の近傍 `[2,4]`
で極小になることと、それぞれの値を同時に要求する。
-/
def LocalExtremaGoal : Prop :=
  ∀ k : ℝ,
    (∀ x : ℝ, cubicDerivative x = 0 ↔ x = 1 ∨ x = 3) ∧
    cubic k 1 = k + 4 / 3 ∧
    (∀ x : ℝ, x ∈ Set.Icc (0 : ℝ) 2 → cubic k x ≤ cubic k 1) ∧
    cubic k 3 = k ∧
    (∀ x : ℝ, x ∈ Set.Icc (2 : ℝ) 4 → cubic k 3 ≤ cubic k x)

end LemmaWeave.Problems.DNC2026M2BC.CubicExtrema
