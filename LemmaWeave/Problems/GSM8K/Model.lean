import Mathlib.Data.Rat.Basic

/-! 固定GSM8K trainの先頭5問。全量・部分量は有理数、個数は非負整数との対応を台帳に残す。
第5問の一年の週数は原文にないため、52を無条件には固定しない。 -/
namespace LemmaWeave.Problems.GSM8K

def Clips (may total : ℚ) : Prop := may * 2 = 48 ∧ total = 48 + may

/-- 一時間60分、時間に比例して支払われ、途中の通貨丸めをしないモデル。 -/
def Earnings (pay : ℚ) : Prop := pay = (12 / 60) * 50

def Wallet (saved grandparents missing : ℚ) : Prop :=
  saved * 2 = 100 ∧ grandparents = 2 * 15 ∧
    saved + 15 + grandparents + missing = 100 ∧ 0 ≤ missing

def Reading (today remaining tomorrow : ℚ) : Prop :=
  today = 2 * 12 ∧ (12 + today) + remaining = 120 ∧ tomorrow * 2 = remaining

/-- weeksは期間の週数。一年=52週は別の明示的な条件。 -/
def Letters (weeks total : ℚ) : Prop := total = (3 * 2 * 2) * weeks

end LemmaWeave.Problems.GSM8K
