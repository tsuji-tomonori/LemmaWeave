import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0909C

def FamilyTickets
    (regular discount children adults childPrice childCost adultCost total paid change : ℕ) : Prop :=
  regular = 109 ∧ discount = 5 ∧ children = 2 ∧ adults = 2 ∧
  childPrice = regular - discount ∧ childCost = children * childPrice ∧
  adultCost = adults * regular ∧ total = childCost + adultCost ∧
  paid = 500 ∧ change = paid - total

def HouseArea (benedict kennedy extra : ℕ) : Prop :=
  kennedy = 10000 ∧ extra = 600 ∧ kennedy = 4 * benedict + extra

def WaxSculptures
    (smallWax largeWax smallCount largeCount smallUsed largeUsed total : ℕ) : Prop :=
  smallWax = 2 ∧ largeWax = 4 ∧ smallUsed = 12 ∧
  smallUsed = smallCount * smallWax ∧ smallCount = 3 * largeCount ∧
  largeUsed = largeCount * largeWax ∧ total = smallUsed + largeUsed

def BeachTowels
    (families peoplePerFamily people days daily total capacity loads : ℕ) : Prop :=
  families = 3 ∧ peoplePerFamily = 4 ∧ people = families * peoplePerFamily ∧
  days = 7 ∧ daily = people ∧ total = daily * days ∧
  capacity = 14 ∧ total = loads * capacity

def ShoppingDiscounts
    (milkRegular milkSale milkSaving milkCount milkTotal
     cerealSaving cerealCount cerealTotal total : ℕ) : Prop :=
  milkRegular = 3 ∧ milkSale = 2 ∧ milkSaving = milkRegular - milkSale ∧
  milkCount = 3 ∧ milkTotal = milkSaving * milkCount ∧
  cerealSaving = 1 ∧ cerealCount = 5 ∧ cerealTotal = cerealSaving * cerealCount ∧
  total = milkTotal + cerealTotal

def StairFlights (perTrip upTrips downTrips up down total : ℕ) : Prop :=
  perTrip = 3 ∧ upTrips = 5 ∧ downTrips = 3 ∧
  up = perTrip * upTrips ∧ down = perTrip * downTrips ∧ total = up + down

def MovieAdmissions
    (riverside west mount rejectedR rejectedW rejectedM total rejected admitted : ℕ) : Prop :=
  riverside = 120 ∧ west = 90 ∧ mount = 50 ∧
  100 * rejectedR = 20 * riverside ∧ 100 * rejectedW = 70 * west ∧
  2 * rejectedM = mount ∧ total = riverside + west + mount ∧
  rejected = rejectedR + rejectedW + rejectedM ∧ admitted = total - rejected

def DogCare (walkMinutes walkSessions walkTotal feedMinutes total : ℕ) : Prop :=
  walkMinutes = 30 ∧ walkSessions = 2 ∧ walkTotal = walkMinutes * walkSessions ∧
  5 * feedMinutes = 60 ∧ total = walkTotal + feedMinutes

/-- `overlap = 5` means five percentage points of the original germ population. -/
def SanitizerPointOverlap
    (first second overlap killed left : ℚ) : Prop :=
  first = 50 ∧ second = 25 ∧ overlap = 5 ∧
  killed = first + second - overlap ∧ left = 100 - killed

/-- Alternative reading: five percent of the second spray's killed set overlaps. -/
def SanitizerRelativeOverlap
    (first second overlap killed left : ℚ) : Prop :=
  first = 50 ∧ second = 25 ∧ overlap = (5 / 100) * second ∧
  killed = first + second - overlap ∧ left = 100 - killed

def Goldfish (surface total below : ℕ) : Prop :=
  surface = 15 ∧ 4 * surface = total ∧ below = total - surface

end LemmaWeave.Problems.GSM8K.Daily0909C
