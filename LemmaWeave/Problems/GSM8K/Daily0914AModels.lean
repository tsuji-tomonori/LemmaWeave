import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0914A

def MarbleLoss
    (start streetLost afterStreet sewerLost left : ℕ) : Prop :=
  left = 20 ∧ 5 * streetLost = 3 * start ∧
  afterStreet + streetLost = start ∧ 2 * sewerLost = afterStreet ∧
  left + sewerLost = afterStreet

def TaxedEarnings
    (daily tax net days total : ℕ) : Prop :=
  daily = 40 ∧ 10 * tax = daily ∧ net + tax = daily ∧
  days = 30 ∧ total = net * days

def RoomPaint
    (commonWidth height commonWalls commonWallArea commonArea
     thirdWidth thirdArea finalWidth finalArea totalArea
     canCoverage cans : ℕ) : Prop :=
  commonWidth = 3 ∧ height = 2 ∧ commonWalls = 2 ∧
  commonWallArea = commonWidth * height ∧ commonArea = commonWalls * commonWallArea ∧
  thirdWidth = 5 ∧ thirdArea = thirdWidth * height ∧
  finalWidth = 4 ∧ finalArea = finalWidth * height ∧
  totalArea = commonArea + thirdArea + finalArea ∧
  canCoverage = 2 ∧ cans * canCoverage = totalArea

def SongCount (yesterday today total : ℕ) : Prop :=
  yesterday = 9 ∧ today = yesterday + 5 ∧ total = yesterday + today

def BreathPractice
    (initial weekOne weekTwo increase current : ℕ) : Prop :=
  initial = 10 ∧ weekOne = 2 * initial ∧ weekTwo = 2 * weekOne ∧
  2 * increase = weekTwo ∧ current = weekTwo + increase

def FarmAnimals (goats cows pigs total : ℕ) : Prop :=
  cows = goats + 4 ∧ pigs = 2 * cows ∧ total = goats + cows + pigs ∧ total = 56

def WrappingPaper
    (goal grandmother uncle neighbor sold remaining : ℕ) : Prop :=
  goal = 12 ∧ grandmother = 3 ∧ uncle = 4 ∧ neighbor = 3 ∧
  sold = grandmother + uncle + neighbor ∧ remaining + sold = goal

def SandwichYear
    (weeks daysPerWeek scheduled missedWednesday missedFriday missed eaten : ℕ) : Prop :=
  weeks = 36 ∧ daysPerWeek = 2 ∧ scheduled = weeks * daysPerWeek ∧
  missedWednesday = 1 ∧ missedFriday = 2 ∧
  missed = missedWednesday + missedFriday ∧ eaten + missed = scheduled

def BaseballPages
    (packs cardsPerPack totalCards pageCapacity pages : ℕ) : Prop :=
  packs = 60 ∧ cardsPerPack = 7 ∧ totalCards = packs * cardsPerPack ∧
  pageCapacity = 10 ∧ pages * pageCapacity = totalCards

def FurnitureRefund
    (paid pieces unitCost correctTotal refund : ℕ) : Prop :=
  paid = 20700 ∧ pieces = 150 ∧ unitCost = 134 ∧
  correctTotal = pieces * unitCost ∧ correctTotal + refund = paid

end LemmaWeave.Problems.GSM8K.Daily0914A
