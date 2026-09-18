import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0908A

def WalletLoss (milkshake afterMilkshake wallet lost : ℚ) : Prop :=
  milkshake = 28 / 7 ∧ afterMilkshake = 28 - milkshake ∧
  wallet = afterMilkshake / 2 ∧ lost = wallet - 1

def FlowerPercentage (total nonRoses percentage : ℚ) : Prop :=
  total = 25 + 40 + 35 ∧ nonRoses = 40 + 35 ∧
  percentage = nonRoses / total * 100

def AssignmentTime (second firstTwo total third : ℕ) : Prop :=
  second = 2 * 25 ∧ firstTwo = 25 + second ∧ total = 2 * 60 ∧
  third = total - firstTwo

def ButterUse (chocolate peanut afterFirstTwo sugar remaining : ℚ) : Prop :=
  chocolate = 10 / 2 ∧ peanut = 10 / 5 ∧
  afterFirstTwo = 10 - chocolate - peanut ∧ sugar = afterFirstTwo / 3 ∧
  remaining = afterFirstTwo - sugar

def AllowanceTotal (sixDollar fourDollar sixAmount fourAmount total : ℚ) : Prop :=
  sixDollar = 60 * (2 / 3) ∧ fourDollar = 60 - sixDollar ∧
  sixAmount = sixDollar * 6 ∧ fourAmount = fourDollar * 4 ∧
  total = sixAmount + fourAmount

/-- 「次の2時間に各時35枚」と読む追加条件付きモデル。 -/
def CoinsEachHour (second third beforeGift afterGift : ℕ) : Prop :=
  second = 35 ∧ third = 35 ∧ beforeGift = 15 + second + third + 50 ∧
  afterGift = beforeGift - 15

/-- 「次の2時間を合わせて35枚」と読むモデル。 -/
def CoinsNextTwoCombined (combined beforeGift afterGift : ℕ) : Prop :=
  combined = 35 ∧ beforeGift = 15 + combined + 50 ∧ afterGift = beforeGift - 15

/-- 2人分の試合・練習を重複なく数えた延べ観戦時間。 -/
def DaughterHours (games practice total : ℕ) : Prop :=
  games = 2 * 8 * 2 ∧ practice = 2 * 8 * 4 ∧ total = games + practice

/-- 1人分48時間どうしの重複を差し引いた実経過時間の抽象モデル。 -/
def FieldElapsed (overlap total : ℕ) : Prop :=
  overlap ≤ 48 ∧ total = 96 - overlap

/-- 明記された3種類の増加量。小動物分はこの条件だけでは拘束されない。 -/
def BearSources (berries acorns remaining salmon smallAnimals : ℚ) : Prop :=
  berries = (1 / 5) * 1000 ∧ acorns = 2 * berries ∧
  remaining = 1000 - berries - acorns ∧ salmon = remaining / 2

/-- 4種類だけで目標1000ポンドをちょうど達成した追加条件。 -/
def BearGoalAchieved (berries acorns remaining salmon smallAnimals : ℚ) : Prop :=
  BearSources berries acorns remaining salmon smallAnimals ∧
  berries + acorns + salmon + smallAnimals = 1000

def OilCans (knownOil remainingOil remainingCans each : ℕ) : Prop :=
  knownOil = 10 * 8 ∧ remainingOil = 290 - knownOil ∧
  remainingCans = 24 - 10 ∧ each = remainingOil / remainingCans

def SitupMakeup (mondayShort tuesdayShort wednesday : ℕ) : Prop :=
  mondayShort = 30 - 12 ∧ tuesdayShort = 30 - 19 ∧
  wednesday = 30 + mondayShort + tuesdayShort

end LemmaWeave.Problems.GSM8K.Daily0908A
