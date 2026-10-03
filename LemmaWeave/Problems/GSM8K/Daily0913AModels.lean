import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0913A

def ReadingGoal
    (daily days weekly sunday monday tuesday wednesday thursday friday
     beforeSaturday saturday : ℕ) : Prop :=
  daily = 50 ∧ days = 7 ∧ weekly = daily * days ∧
  sunday = 43 ∧ monday = 65 ∧ tuesday = 28 ∧ wednesday = 0 ∧
  thursday = 70 ∧ friday = 56 ∧
  beforeSaturday = sunday + monday + tuesday + wednesday + thursday + friday ∧
  weekly = beforeSaturday + saturday

def CastleProvisions
    (initialPeople initialDays elapsed departed remainingPeople
     remainingPersonDays moreDays : ℕ) : Prop :=
  initialPeople = 300 ∧ initialDays = 90 ∧ elapsed = 30 ∧ departed = 100 ∧
  remainingPeople + departed = initialPeople ∧
  remainingPersonDays + initialPeople * elapsed = initialPeople * initialDays ∧
  remainingPersonDays = remainingPeople * moreDays

def BicyclePrice
    (old percent increase newPrice : ℕ) : Prop :=
  old = 220 ∧ percent = 15 ∧ 100 * increase = percent * old ∧
  newPrice = old + increase

def WeeklyTime
    (days hoursPerDay totalHours homeworkPerDay homework classHours
     sleepPerDay sleep workHours busy leftover : ℕ) : Prop :=
  days = 7 ∧ hoursPerDay = 24 ∧ totalHours = days * hoursPerDay ∧
  homeworkPerDay = 4 ∧ homework = days * homeworkPerDay ∧ classHours = 18 ∧
  sleepPerDay = 8 ∧ sleep = days * sleepPerDay ∧ workHours = 20 ∧
  busy = homework + classHours + sleep + workHours ∧ totalHours = busy + leftover

def BookGifts
    (rebecca multiplier mara given remaining initial : ℕ) : Prop :=
  rebecca = 40 ∧ multiplier = 3 ∧ mara = multiplier * rebecca ∧
  given = rebecca + mara ∧ remaining = 60 ∧ initial = given + remaining

def DiaryCount
    (initial bought beforeLoss quarterDenominator lost remaining : ℕ) : Prop :=
  initial = 8 ∧ bought = 2 * initial ∧ beforeLoss = initial + bought ∧
  quarterDenominator = 4 ∧ quarterDenominator * lost = beforeLoss ∧
  beforeLoss = lost + remaining

def RobotPurchase
    (friends priceCents goodsCents taxCents spentCents changeCents startCents : ℕ) : Prop :=
  friends = 7 ∧ priceCents = 875 ∧ goodsCents = friends * priceCents ∧
  taxCents = 722 ∧ spentCents = goodsCents + taxCents ∧
  changeCents = 1153 ∧ startCents = spentCents + changeCents

def SalaryLiteralMore
    (fred extraMultiple oldSalary percent increase currentSalary : ℕ) : Prop :=
  fred = 1000 ∧ extraMultiple = 10 ∧
  oldSalary = fred + extraMultiple * fred ∧ percent = 40 ∧
  100 * increase = percent * oldSalary ∧ currentSalary = oldSalary + increase

def SalaryTimesAsMuch
    (fred multiple oldSalary percent increase currentSalary : ℕ) : Prop :=
  fred = 1000 ∧ multiple = 10 ∧ oldSalary = multiple * fred ∧ percent = 40 ∧
  100 * increase = percent * oldSalary ∧ currentSalary = oldSalary + increase

def RestaurantBill
    (steak wine subtotal taxPercent tax beforeGratuity finalBill gratuity : ℕ) : Prop :=
  steak = 80 ∧ wine = 10 ∧ subtotal = steak + wine ∧ taxPercent = 10 ∧
  100 * tax = taxPercent * subtotal ∧ beforeGratuity = subtotal + tax ∧
  finalBill = 140 ∧ finalBill = beforeGratuity + gratuity

def PartyFlags
    (jayGuests gloriaGuests guests hosts totalFlags flagsPerDollar cost : ℕ) : Prop :=
  jayGuests = 22 ∧ gloriaGuests = 36 ∧ guests = jayGuests + gloriaGuests ∧
  hosts = 2 ∧ totalFlags = guests + hosts ∧ flagsPerDollar = 5 ∧
  totalFlags = flagsPerDollar * cost

end LemmaWeave.Problems.GSM8K.Daily0913A
