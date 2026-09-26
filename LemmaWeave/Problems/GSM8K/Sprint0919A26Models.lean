namespace LemmaWeave.Problems.GSM8K.Sprint0919A26

def BellaItems
    (marbles frisbees cards numerator denominator marbleAdded frisbeeAdded cardAdded
      finalMarbles finalFrisbees finalCards total : Nat) : Prop :=
  marbles = 60 ∧ marbles = 2 * frisbees ∧ frisbees = cards + 20 ∧
  numerator = 2 ∧ denominator = 5 ∧
  marbleAdded * denominator = marbles * numerator ∧
  frisbeeAdded * denominator = frisbees * numerator ∧
  cardAdded * denominator = cards * numerator ∧
  finalMarbles = marbles + marbleAdded ∧
  finalFrisbees = frisbees + frisbeeAdded ∧
  finalCards = cards + cardAdded ∧
  total = finalMarbles + finalFrisbees + finalCards

def Heights (griffin graysonIncrease grayson gracieDecrease gracie : Nat) : Prop :=
  griffin = 61 ∧ graysonIncrease = 2 ∧ grayson = griffin + graysonIncrease ∧
  gracieDecrease = 7 ∧ gracie + gracieDecrease = grayson

def Mangoes
    (total ripeNumerator ripeDenominator ripe eatenPercent eaten remaining : Nat) : Prop :=
  total = 400 ∧ ripeNumerator = 3 ∧ ripeDenominator = 5 ∧
  ripe * ripeDenominator = total * ripeNumerator ∧ eatenPercent = 60 ∧
  eaten * 100 = ripe * eatenPercent ∧ remaining + eaten = ripe

/-- The reference-answer convention treats a year as 365 days. -/
def CarrotYear
    (days carrotsPerDay totalCarrots carrotsPerBag bags dollarsPerBag cost : Nat) : Prop :=
  days = 365 ∧ carrotsPerDay = 1 ∧ totalCarrots = days * carrotsPerDay ∧
  carrotsPerBag = 5 ∧ totalCarrots = bags * carrotsPerBag ∧
  dollarsPerBag = 2 ∧ cost = bags * dollarsPerBag

def PingPong
    (eachCents count subtotalCents discountPercent discountCents paidCents : Nat) : Prop :=
  eachCents = 10 ∧ count = 10000 ∧ subtotalCents = eachCents * count ∧
  discountPercent = 30 ∧ discountCents * 100 = subtotalCents * discountPercent ∧
  paidCents + discountCents = subtotalCents

def ParkingGarage
    (levels perLevel capacity firstOpen secondExtra secondOpen thirdExtra thirdOpen
      fourthOpen totalOpen occupied : Nat) : Prop :=
  levels = 4 ∧ perLevel = 100 ∧ capacity = levels * perLevel ∧
  firstOpen = 58 ∧ secondExtra = 2 ∧ secondOpen = firstOpen + secondExtra ∧
  thirdExtra = 5 ∧ thirdOpen = secondOpen + thirdExtra ∧ fourthOpen = 31 ∧
  totalOpen = firstOpen + secondOpen + thirdOpen + fourthOpen ∧
  occupied + totalOpen = capacity

/-- Inclusion-exclusion model; no independence premise is needed for the requested difference. -/
def LawsuitDifference
    (firstWin secondWin total jointWin loseBoth difference : Nat) : Prop :=
  firstWin = 30 ∧ secondWin = 50 ∧ total = 100 ∧
  jointWin ≤ firstWin ∧ jointWin ≤ secondWin ∧
  loseBoth + firstWin + secondWin = total + jointWin ∧
  difference + jointWin = loseBoth

def Pills
    (pillsPerDay days pills eachCents grossCents coveredPercent coveredCents paidCents : Nat) : Prop :=
  pillsPerDay = 2 ∧ days = 30 ∧ pills = pillsPerDay * days ∧
  eachCents = 150 ∧ grossCents = pills * eachCents ∧ coveredPercent = 40 ∧
  coveredCents * 100 = grossCents * coveredPercent ∧
  paidCents + coveredCents = grossCents

def Roofing
    (required free remaining dollarsPerFoot cost : Nat) : Prop :=
  required = 300 ∧ free = 250 ∧ remaining + free = required ∧
  dollarsPerFoot = 8 ∧ cost = remaining * dollarsPerFoot

/-- The dog starts running when the ball is thrown; the ball then rests at 160 feet. -/
def BallCatch
    (ballSpeed flightSeconds distance dogSpeed dogDuringFlight remaining
      extraSeconds totalSeconds : Nat) : Prop :=
  ballSpeed = 20 ∧ flightSeconds = 8 ∧ distance = ballSpeed * flightSeconds ∧
  dogSpeed = 5 ∧ dogDuringFlight = dogSpeed * flightSeconds ∧
  remaining + dogDuringFlight = distance ∧ remaining = dogSpeed * extraSeconds ∧
  totalSeconds = flightSeconds + extraSeconds

def Notepads
    (budgetCents eachCents count pagesEach pages : Nat) : Prop :=
  budgetCents = 1000 ∧ eachCents = 125 ∧ count * eachCents = budgetCents ∧
  pagesEach = 60 ∧ pages = count * pagesEach

def ThreePeopleMoney
    (cecil twiceCecil catherineLess catherine carmelaMore carmela total : Nat) : Prop :=
  cecil = 600 ∧ twiceCecil = 2 * cecil ∧ catherineLess = 250 ∧
  catherine + catherineLess = twiceCecil ∧ carmelaMore = 50 ∧
  carmela = twiceCecil + carmelaMore ∧ total = cecil + catherine + carmela

def Audiobooks
    (books hoursEach totalHours hoursPerDay days : Nat) : Prop :=
  books = 6 ∧ hoursEach = 30 ∧ totalHours = books * hoursEach ∧
  hoursPerDay = 2 ∧ totalHours = days * hoursPerDay

def Savings
    (firstMonths firstMonthly firstTotal secondMonths secondMonthly secondTotal
      beforeDecember target december : Nat) : Prop :=
  firstMonths = 7 ∧ firstMonthly = 10 ∧ firstTotal = firstMonths * firstMonthly ∧
  secondMonths = 4 ∧ secondMonthly = 15 ∧ secondTotal = secondMonths * secondMonthly ∧
  beforeDecember = firstTotal + secondTotal ∧ target = 150 ∧
  beforeDecember + december = target

def JuliaMoney
    (initial gameDivisor gameCost afterGame purchaseDivisor purchaseCost left : Nat) : Prop :=
  initial = 40 ∧ gameDivisor = 2 ∧ gameCost * gameDivisor = initial ∧
  afterGame + gameCost = initial ∧ purchaseDivisor = 4 ∧
  purchaseCost * purchaseDivisor = afterGame ∧ left + purchaseCost = afterGame

end LemmaWeave.Problems.GSM8K.Sprint0919A26
