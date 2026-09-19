import Mathlib.Data.Rat.Defs

namespace LemmaWeave.Problems.GSM8K.Sprint0919A29

def WebsiteRevenue (monthly days daily centsPerVisit dailyCents : Nat) : Prop :=
  monthly = 30000 ∧ days = 30 ∧ monthly = days * daily ∧
  centsPerVisit = 1 ∧ dailyCents = daily * centsPerVisit

def Bracelets
    (string beads unitCost price unitProfit count totalProfit : Nat) : Prop :=
  string = 1 ∧ beads = 3 ∧ unitCost = string + beads ∧ price = 6 ∧
  price = unitCost + unitProfit ∧ count = 25 ∧ totalProfit = count * unitProfit

def CoinTotal (lance margaret guy bill total : Nat) : Prop :=
  lance = 70 ∧ margaret = 75 ∧ guy = 2 * 25 + 10 ∧
  bill = 6 * 10 ∧ total = lance + margaret + guy + bill

def VodkaSplit
    (shots people jakeShots ouncesPerShot vodkaOunces alcoholFraction pureOunces : ℚ) : Prop :=
  shots = 8 ∧ people = 2 ∧ shots = people * jakeShots ∧
  ouncesPerShot = 3 / 2 ∧ vodkaOunces = jakeShots * ouncesPerShot ∧
  alcoholFraction = 1 / 2 ∧ pureOunces = vodkaOunces * alcoholFraction

/-- The coherent reading identifies the question's “Jenny” with the hunting partner Penny. -/
def SnakeCorrected (jake partner difference combined : Nat) : Prop :=
  difference = 12 ∧ combined = 70 ∧ jake = partner + difference ∧ combined = jake + partner

def LibraryWeek
    (monday tuesday remainingDays dailyAverage remaining total : Nat) : Prop :=
  monday = 50 ∧ tuesday = 2 * monday ∧ remainingDays = 5 ∧ dailyAverage = 20 ∧
  remaining = remainingDays * dailyAverage ∧ total = monday + tuesday + remaining

/-- Conditional model: the word “hat” is corrected to “wooden toy”. -/
def CraftsLoss
    (paintings paintingPrice paintingLossPct paintingUnitLoss paintingLoss
      toys toyPrice toyLossPct toyUnitLoss toyLoss totalLoss : Nat) : Prop :=
  paintings = 10 ∧ paintingPrice = 40 ∧ paintingLossPct = 10 ∧
  paintingUnitLoss * 100 = paintingPrice * paintingLossPct ∧
  paintingLoss = paintings * paintingUnitLoss ∧ toys = 8 ∧ toyPrice = 20 ∧
  toyLossPct = 15 ∧ toyUnitLoss * 100 = toyPrice * toyLossPct ∧
  toyLoss = toys * toyUnitLoss ∧ totalLoss = paintingLoss + toyLoss

def Electronics (phone pcExtra pc tablet total : Nat) : Prop :=
  phone = 300 ∧ pcExtra = 500 ∧ pc = phone + pcExtra ∧
  tablet = phone + pc ∧ total = phone + pc + tablet

def BookReading
    (pages first remainingAfterFirst secondPct second remainingAfterSecond : Nat) : Prop :=
  pages = 600 ∧ pages = 2 * first ∧ remainingAfterFirst = pages - first ∧
  secondPct = 30 ∧ second * 100 = remainingAfterFirst * secondPct ∧
  remainingAfterSecond = remainingAfterFirst - second

def ChipBags (dinner multiplier after total : Nat) : Prop :=
  dinner = 1 ∧ multiplier = 2 ∧ after = multiplier * dinner ∧ total = dinner + after

def OriginalMoney (spentNumerator denominator left original half : Nat) : Prop :=
  spentNumerator = 3 ∧ denominator = 7 ∧ left = 24 ∧
  left * denominator = original * (denominator - spentNumerator) ∧ original = 2 * half

def Toads (tim extra jim multiplier sarah : Nat) : Prop :=
  tim = 30 ∧ extra = 20 ∧ jim = tim + extra ∧ multiplier = 2 ∧ sarah = multiplier * jim

def Ages (yearsLater futureJed presentJed gap matt sum : Nat) : Prop :=
  yearsLater = 10 ∧ futureJed = 25 ∧ futureJed = presentJed + yearsLater ∧
  gap = 10 ∧ presentJed = matt + gap ∧ sum = presentJed + matt

def Shells (initial perDay days firstPart fourth vacation total : Nat) : Prop :=
  initial = 20 ∧ perDay = 5 ∧ days = 3 ∧ firstPart = perDay * days ∧
  fourth = 6 ∧ vacation = firstPart + fourth ∧ total = initial + vacation

def BookFair
    (bills billValue available posters posterEach posterCost notebooks notebookEach notebookCost
      bookmarks bookmarkEach bookmarkCost spent left : Nat) : Prop :=
  bills = 2 ∧ billValue = 20 ∧ available = bills * billValue ∧
  posters = 2 ∧ posterEach = 5 ∧ posterCost = posters * posterEach ∧
  notebooks = 3 ∧ notebookEach = 4 ∧ notebookCost = notebooks * notebookEach ∧
  bookmarks = 2 ∧ bookmarkEach = 2 ∧ bookmarkCost = bookmarks * bookmarkEach ∧
  spent = posterCost + notebookCost + bookmarkCost ∧ available = spent + left

end LemmaWeave.Problems.GSM8K.Sprint0919A29
