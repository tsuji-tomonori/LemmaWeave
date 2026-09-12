import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0908E

def BookWriting (totalPages days : ℕ) : Prop :=
  totalPages = 3 * 400 ∧ totalPages = days * 20

def NickelExchange
    (nickels iron regular ironValueCents regularValueCents totalCents : ℕ) : Prop :=
  nickels = 20 * 5 ∧ iron = nickels * 20 / 100 ∧
  regular = nickels - iron ∧ ironValueCents = iron * 300 ∧
  regularValueCents = regular * 5 ∧ totalCents = ironValueCents + regularValueCents

def RainSale (inches gallons revenueCents : ℕ) : Prop :=
  inches = 4 + 3 ∧ gallons = inches * 15 ∧ revenueCents = gallons * 120

def BookCart (top nonMystery mystery total : ℕ) : Prop :=
  top = 12 + 8 + 4 ∧ nonMystery = 5 + 6 ∧ mystery = nonMystery ∧
  total = top + mystery + nonMystery

def GumballPurchase (alisha bobby given total : ℕ) : Prop :=
  alisha = 2 * 4 ∧ bobby = 4 * alisha - 5 ∧
  given = 4 + alisha + bobby ∧ total = given + 6

def FishScenario
    (secondWater secondFish firstFish survivingFirst difference : ℕ) : Prop :=
  secondFish = secondWater / 2 ∧ firstFish = 48 / 3 ∧
  survivingFirst = firstFish - 1 ∧ difference = survivingFirst - secondFish

def SectionSales (fabric jewelry stationery : ℕ) : Prop :=
  fabric = 36 / 3 ∧ jewelry = 36 / 4 ∧ stationery = 36 - fabric - jewelry

def MakeupPeople (tubes people : ℕ) : Prop :=
  tubes = 6 * 2 ∧ people = tubes * 3

def BikeOil (wheelOil total : ℕ) : Prop :=
  wheelOil = 2 * 10 ∧ total = wheelOil + 5

def TypingStart (grossToday netToday starting : ℕ) : Prop :=
  grossToday = 6 * (20 + 15 + 18) ∧ netToday = grossToday - 40 ∧
  536 = starting + netToday

end LemmaWeave.Problems.GSM8K.Daily0908E
