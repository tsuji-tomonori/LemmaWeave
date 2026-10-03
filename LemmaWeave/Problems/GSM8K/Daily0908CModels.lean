import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0908C

def WeightLoss (second remaining each : ℕ) : Prop :=
  second = 27 - 7 ∧ remaining = 103 - 27 - second ∧ each = remaining / 2

def BreakfastCost (daleToast andrewToast daleEggs andrewEggs total : ℕ) : Prop :=
  daleToast = 2 * 1 ∧ andrewToast = 1 * 1 ∧ daleEggs = 2 * 3 ∧
  andrewEggs = 2 * 3 ∧ total = daleToast + andrewToast + daleEggs + andrewEggs

def VegetableCount (cucumbers peppers total : ℕ) : Prop :=
  cucumbers = 237 - 60 ∧ peppers = 2 * cucumbers ∧
  total = 237 + cucumbers + peppers

def BoxerWeight (loss finalWeight : ℕ) : Prop :=
  loss = 3 * 4 ∧ finalWeight = 97 - loss

def CookieSlices (total people left : ℕ) : Prop :=
  total = 3 * 10 ∧ people = 24 + 1 + 1 ∧ left = total - people

def TeachingExperience (partner combined : ℕ) : Prop :=
  partner = 40 - 10 ∧ combined = 40 + partner

def MilkPurchase (groups additional total : ℕ) : Prop :=
  groups = 50 / 5 ∧ additional = groups * 6 ∧ total = 40 + additional

def SkippingAverage (round1 round2 round3 round4 total average : ℕ) : Prop :=
  round1 = 16 - 1 ∧ round2 = 16 - 3 ∧ round3 = 16 + 4 ∧
  round4 = 16 / 2 ∧ total = round1 + round2 + round3 + round4 ∧
  average = total / 4

def OvertimeIncome (hours overtimePay total : ℕ) : Prop :=
  hours = 50 - 40 ∧ overtimePay = hours * 20 ∧ total = 500 + overtimePay

def HatSharing (paitynTotal zolaRed zolaBlue zolaTotal combined each : ℕ) : Prop :=
  paitynTotal = 20 + 24 ∧ zolaRed = 20 * 4 / 5 ∧ zolaBlue = 2 * 24 ∧
  zolaTotal = zolaRed + zolaBlue ∧ combined = paitynTotal + zolaTotal ∧
  each = combined / 2

end LemmaWeave.Problems.GSM8K.Daily0908C
