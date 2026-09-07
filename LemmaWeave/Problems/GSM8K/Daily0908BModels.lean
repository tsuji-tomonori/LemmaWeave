import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0908B

def WeeklyEarnings (reduction secondRate secondHours mainPay secondPay total : ℚ) : Prop :=
  reduction = 20 * (20 / 100) ∧ secondRate = 20 - reduction ∧
  secondHours = 30 / 2 ∧ mainPay = 20 * 30 ∧
  secondPay = secondRate * secondHours ∧ total = mainPay + secondPay

def LawnEarnings (base tips total : ℕ) : Prop :=
  base = 33 * 16 ∧ tips = 3 * 10 ∧ total = base + tips

def LaptopBalance (requiredDown actualDown fourPayments balance : ℚ) : Prop :=
  requiredDown = 1000 * (20 / 100) ∧ actualDown = requiredDown + 20 ∧
  fourPayments = 65 * 4 ∧ balance = 1000 - actualDown - fourPayments

def RaceAverage (jesseFirstThree jesseRemaining jesseDaily miaFirstFour miaRemaining miaDaily average : ℚ) : Prop :=
  jesseFirstThree = 3 * (2 / 3) ∧ jesseRemaining = 30 - jesseFirstThree - 10 ∧
  jesseDaily = jesseRemaining / 3 ∧ miaFirstFour = 4 * 3 ∧
  miaRemaining = 30 - miaFirstFour ∧ miaDaily = miaRemaining / 3 ∧
  average = (jesseDaily + miaDaily) / 2

def CoinRatio (ratioTotal amalie spent remaining : ℚ) : Prop :=
  ratioTotal = 10 + 45 ∧ amalie = (45 / ratioTotal) * 440 ∧
  spent = (3 / 4) * amalie ∧ remaining = amalie - spent

def StarfishArms (starfishArms total : ℕ) : Prop :=
  starfishArms = 7 * 5 ∧ total = starfishArms + 14

def AppleCounts (tim harry : ℕ) : Prop :=
  tim = 68 - 30 ∧ harry = tim / 2

def CraftCash (sales withTip left : ℕ) : Prop :=
  sales = 3 * 12 ∧ withTip = sales + 7 ∧ left = withTip - 18

def AquariumWater (capacity afterSpill afterTriple : ℚ) : Prop :=
  capacity = 4 * 6 * 3 ∧ afterSpill = capacity * (1 / 2) * (1 / 2) ∧
  afterTriple = 3 * afterSpill

def TrailMix (people packs : ℕ) : Prop :=
  people = 13 + 3 + 2 ∧ packs = people / 6

end LemmaWeave.Problems.GSM8K.Daily0908B
