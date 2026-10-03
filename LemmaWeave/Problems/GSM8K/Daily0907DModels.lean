import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0907D

def SharedMoney (tony total : ℚ) : Prop :=
  tony = 2 * 1750 ∧ total = 1750 + tony

def GradeResults (belowB bOrAbove : ℚ) : Prop :=
  belowB = (40 / 100) * 60 ∧ bOrAbove = 60 - belowB

def CarWashEarnings (lisa tommy difference : ℚ) : Prop :=
  lisa = 60 / 2 ∧ tommy = lisa / 2 ∧ difference = lisa - tommy

def FastFoodBill (burgers fries soda total each : ℚ) : Prop :=
  burgers = 5 * 3 ∧ fries = 4 * (6 / 5) ∧ soda = 5 * (1 / 2) ∧
  total = burgers + fries + soda + (27 / 10) ∧ each = total / 5

def PartyTea (partyDrink batches tea : ℚ) : Prop :=
  partyDrink = 12 * 6 ∧ batches = partyDrink / 8 ∧ tea = batches * 1

def CandyDifference (anna billy difference : ℕ) : Prop :=
  anna = 14 * 60 ∧ billy = 11 * 75 ∧ difference = anna - billy

def TicketBill
    (discounted discountEach discountedCost fullCost total : ℚ) : Prop :=
  discounted = 12 - 10 ∧ discountEach = (5 / 100) * 40 ∧
  discountedCost = discounted * (40 - discountEach) ∧
  fullCost = 10 * 40 ∧ total = discountedCost + fullCost

def RachelBudget (shoes dress saraTotal rachelTotal : ℚ) : Prop :=
  shoes = 50 ∧ dress = 200 ∧ saraTotal = shoes + dress ∧
  rachelTotal = 2 * saraTotal

def MonkeyBananas
    (remainingPiles firstBananas remainingBananas total each : ℕ) : Prop :=
  remainingPiles = 10 - 6 ∧ firstBananas = 6 * 9 * 14 ∧
  remainingBananas = remainingPiles * 12 * 9 ∧
  total = firstBananas + remainingBananas ∧ each = total / 12

/-- 各予測が実現し、各地震で別の建物が倒壊する追加条件下のモデル。 -/
def PredictedEarthquakes (second third fourth total : ℕ) : Prop :=
  second = 2 * 4 ∧ third = 2 * second ∧ fourth = 2 * third ∧
  total = 4 + second + third + fourth

/-- 予測の実現を仮定しない、実際の後続3回と累計の関係。 -/
def ActualCollapseTotal (second third fourth total : ℕ) : Prop :=
  total = 4 + second + third + fourth

end LemmaWeave.Problems.GSM8K.Daily0907D
