import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0908D

def HotelRooms (total unavailable available : ℕ) : Prop :=
  total = 10 * 10 ∧ unavailable = 1 * 10 ∧ available = total - unavailable

def AgeDifference (jolynOverAivo leonOverAivo difference : ℕ) : Prop :=
  jolynOverAivo = 2 + 5 ∧ leonOverAivo = 2 ∧
  difference = jolynOverAivo - leonOverAivo

def SodaPurchase (spentCents ounces : ℕ) : Prop :=
  spentCents = 200 - 50 ∧ spentCents = ounces * 25

def CowValue (newWeight gained valueIncrease : ℕ) : Prop :=
  newWeight = 400 * 3 / 2 ∧ gained = newWeight - 400 ∧
  valueIncrease = gained * 3

def GeckoSales (previousYear total : ℕ) : Prop :=
  previousYear = 2 * 86 ∧ total = 86 + previousYear

def LibraryBaselineWeek (friday total : ℕ) : Prop :=
  friday = 40 + 40 * 40 / 100 ∧ total = 4 * 40 + friday

def LibraryOverallAverage (friday total : ℕ) : Prop :=
  friday = 40 + 40 * 40 / 100 ∧ total = 5 * 40

def BirdFood (februaryDays totalDays : ℕ) (dailyCups totalCups : ℚ) : Prop :=
  (februaryDays = 28 ∨ februaryDays = 29) ∧
  totalDays = 31 + 31 + februaryDays ∧
  dailyCups = (1 / 2 : ℚ) + 1 / 2 ∧ totalCups = totalDays * dailyCups

def BonusHourlyPay (totalHours totalPay hourlyPay : ℕ) : Prop :=
  totalHours = 8 + 2 ∧ totalPay = 80 + 20 ∧ hourlyPay = totalPay / totalHours

def AnnualSavings (days sallyDaily bobDaily total : ℕ) : Prop :=
  (days = 365 ∨ days = 366) ∧ sallyDaily = 6 / 2 ∧ bobDaily = 4 / 2 ∧
  total = (sallyDaily + bobDaily) * days

def RestaurantOrder (beefCost chickenPounds chickenCost total : ℕ) : Prop :=
  beefCost = 1000 * 8 ∧ chickenPounds = 2 * 1000 ∧
  chickenCost = chickenPounds * 3 ∧ total = beefCost + chickenCost

end LemmaWeave.Problems.GSM8K.Daily0908D
