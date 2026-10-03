import LemmaWeave.Problems.GSM8K.Model
import Mathlib.Data.Finset.Card
import Mathlib.Data.Fintype.Prod
import Mathlib.Algebra.BigOperators.Ring.Finset

namespace LemmaWeave.Problems.GSM8K.Daily0907

/-- 48人が各1個以上買ったときの4月の総数。1人1個とは固定しない。 -/
def ClipsGeneral (april may total : ℕ) : Prop :=
  48 ≤ april ∧ may * 2 = april ∧ total = april + may

/-- 完全な週のほか、期間端の追加執筆回数を区別する。1回に2人へ各3頁。 -/
def LetterOccurrences (weeks extra total : ℕ) : Prop :=
  extra ≤ 2 ∧ total = (3 * 2 * 2) * weeks + (3 * 2) * extra

/-- 3回の襲撃、各回の人数が直前の2倍。 -/
def Ships (first second third : ℕ) : Prop :=
  second = 2 * first ∧ third = 2 * second ∧ first + second + third = 847

/-- 列挙された収入を全額貯蓄し、靴代と残金へ分割する。 -/
def Shoes (allowance mowing shoveling drives : ℕ) : Prop :=
  allowance = 3 * 5 ∧ mowing = 4 * 15 ∧ shoveling = 7 * drives ∧
  allowance + mowing + shoveling = 95 + 15

/-- ココナツ以外の未知の木を仮定しない、列挙2種類の合計。 -/
def Trees (half coconut total : ℕ) : Prop :=
  2 * half = 60 ∧ coconut + 5 = half ∧ total = 60 + coconut

/-- $10はチェダー2ポンド全体の代金、倍率の基準もその代金。 -/
def Cheese (cream cold total : ℚ) : Prop :=
  2 * cream = 10 ∧ cold = 2 * 10 ∧ total = 10 + cream + cold

/-- スート0,1を赤、2,3を黒とする。rank.val+1でA=1からK=13。ジョーカーなし。 -/
abbrev Card := Fin 4 × Fin 13
def deck : Finset Card := Finset.univ.filter (fun c => c.2.val + 1 ≤ 10 ∧ c.2.val + 1 ≠ 8)
def favorable : Finset Card := deck.filter (fun c => c.1.val < 2 ∧ (c.2.val + 1) % 3 = 0)

end LemmaWeave.Problems.GSM8K.Daily0907
