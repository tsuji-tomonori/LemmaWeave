namespace LemmaWeave.Problems.GSM8K.Sprint0921A15

def TaxRevenue
    (federalCount federalPrice federalRevenue stateCount statePrice stateRevenue
      quarterlyCount quarterlyPrice quarterlyRevenue total : Nat) : Prop :=
  federalRevenue = federalCount * federalPrice ∧
  stateRevenue = stateCount * statePrice ∧
  quarterlyRevenue = quarterlyCount * quarterlyPrice ∧
  total = federalRevenue + stateRevenue + quarterlyRevenue

def MortgagePayment
    (purchase deposit balance years monthsPerYear months monthly : Nat) : Prop :=
  purchase = deposit + balance ∧ months = years * monthsPerYear ∧ balance = monthly * months

def MuseumTrip
    (regular discountPercent discount discounted children adults childCost adultCost
      tripCost initial remaining : Nat) : Prop :=
  regular * discountPercent = discount * 100 ∧ regular = discount + discounted ∧
  childCost = children * discounted ∧ adultCost = adults * regular ∧
  tripCost = childCost + adultCost ∧ initial = tripCost + remaining

def RaisedSalary (base percent raise newSalary : Nat) : Prop :=
  base * percent = raise * 100 ∧ newSalary = base + raise

/-- The number of sticks in a pack is not stated, so one- and two-stick packs give different totals. -/
def GumPackAmbiguity
    (packs bars candyPrice gumPrice alternativeSticks totalOne totalAlternative : Nat) : Prop :=
  candyPrice = gumPrice * 2 ∧
  totalOne = packs * gumPrice + bars * candyPrice ∧
  alternativeSticks = 2 ∧
  totalAlternative = packs * alternativeSticks * gumPrice + bars * candyPrice ∧
  totalOne ≠ totalAlternative

def PizzaNonEaters
    (teachers teacherEaters teacherNon staff staffEaters staffNon totalNon : Nat) : Prop :=
  teacherEaters * 3 = teachers * 2 ∧ teachers = teacherEaters + teacherNon ∧
  staffEaters * 5 = staff * 4 ∧ staff = staffEaters + staffNon ∧
  totalNon = teacherNon + staffNon

def StrawMats (red orange green perMat mats total : Nat) : Prop :=
  orange = green * 2 ∧ perMat = red + orange + green ∧ total = perMat * mats

def FamilyAges (freyja olderBy eli multiplier sarah youngerBy kaylin : Nat) : Prop :=
  eli = freyja + olderBy ∧ sarah = multiplier * eli ∧ sarah = kaylin + youngerBy

/-- Equal division gives 13 per basket, but an unequal four-basket distribution gives different remainders. -/
def AppleBasketAmbiguity
    (total baskets removed equalInitial equalAfter altA altB altC altD
      altAfterA altAfterB altAfterC altAfterD : Nat) : Prop :=
  total = baskets * equalInitial ∧ equalInitial = removed + equalAfter ∧
  total = altA + altB + altC + altD ∧
  altA = removed + altAfterA ∧ altB = removed + altAfterB ∧
  altC = removed + altAfterC ∧ altD = removed + altAfterD ∧
  altAfterA ≠ altAfterB

def YarnLength (green multiplier extra red total : Nat) : Prop :=
  red = multiplier * green + extra ∧ total = green + red

def HealthcareCost
    (hourly hoursPerWeek weekly weeksPerMonth monthly monthsPerYear annualIncome
      lower upper premium governmentPart billPart annualCost : Nat) : Prop :=
  weekly = hourly * hoursPerWeek ∧ monthly = weekly * weeksPerMonth ∧
  annualIncome = monthly * monthsPerYear ∧ lower ≤ annualIncome ∧ annualIncome ≤ upper ∧
  premium = governmentPart + billPart ∧ governmentPart = billPart ∧
  annualCost = billPart * monthsPerYear

def Savings (daily days earned spent saved : Nat) : Prop :=
  earned = daily * days ∧ earned = spent + saved

def GoldWorth (rows barsPerRow bars valuePerBar totalValue : Nat) : Prop :=
  bars = rows * barsPerRow ∧ totalValue = bars * valuePerBar

def CrayonChain (karen beatrice gilbert judah : Nat) : Prop :=
  karen = 2 * beatrice ∧ beatrice = 2 * gilbert ∧ gilbert = 4 * judah

/-- The higher per-task rate produces less hourly revenue because only five such tasks are completed. -/
def WorkComparison
    (lowTasks lowRate highTasks highRate lowRevenue highRevenue difference : Nat) : Prop :=
  lowRevenue = lowTasks * lowRate ∧ highRevenue = highTasks * highRate ∧
  lowRevenue = highRevenue + difference ∧ highRevenue < lowRevenue

end LemmaWeave.Problems.GSM8K.Sprint0921A15
