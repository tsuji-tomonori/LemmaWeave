namespace LemmaWeave.Problems.GSM8K.Sprint0921A17

def WeedPulling (tuesday wednesdayMultiplier wednesday thursdayDivisor thursday fridayFewer friday total : Nat) : Prop :=
  wednesday = tuesday * wednesdayMultiplier ∧ wednesday = thursday * thursdayDivisor ∧
  thursday = friday + fridayFewer ∧ total = tuesday + wednesday + thursday + friday

def TrafficWaste (traffic multiplier freeway total : Nat) : Prop :=
  freeway = traffic * multiplier ∧ total = traffic + freeway

def ShowerTiles (walls width height perWall total : Nat) : Prop :=
  perWall = width * height ∧ total = walls * perWall

def ReinaItems (kevinCounters counterMultiplier reinaCounters kevinMarbles marbleMultiplier reinaMarbles total : Nat) : Prop :=
  reinaCounters = counterMultiplier * kevinCounters ∧
  reinaMarbles = marbleMultiplier * kevinMarbles ∧ total = reinaCounters + reinaMarbles

def WeeklySpending (monday tuesdayMultiplier tuesday wednesdayMultiplier wednesday total : Nat) : Prop :=
  tuesday = monday * tuesdayMultiplier ∧
  wednesday = wednesdayMultiplier * (monday + tuesday) ∧ total = monday + tuesday + wednesday

def CommissionIncome
    (week1 week2Multiplier week2 week3Multiplier week3 customers commissionRate commission salary bonus total : Nat) : Prop :=
  week2 = week1 * week2Multiplier ∧ week3 = week1 * week3Multiplier ∧
  customers = week1 + week2 + week3 ∧ commission = customers * commissionRate ∧
  total = commission + salary + bonus

def BaseballBats (bats multiplier extra gloves : Nat) : Prop :=
  gloves = multiplier * bats + extra

def CandyBudget
    (budget gumCount gumPrice gumCost bars barPrice barCost canes canePrice caneCost spent remaining : Nat) : Prop :=
  gumCost = gumCount * gumPrice ∧ barCost = bars * barPrice ∧ caneCost = canes * canePrice ∧
  spent = gumCost + barCost + caneCost ∧ budget = spent + remaining

def AgeChain
    (futureAna yearsUntil ana billyDivisor billy markOlder mark sarahMultiplier sarahOffset sarah : Nat) : Prop :=
  futureAna = ana + yearsUntil ∧ ana = billy * billyDivisor ∧ mark = billy + markOlder ∧
  sarah + sarahOffset = sarahMultiplier * mark

def ShowWatching
    (dayHours mondayDivisor monday tuesday wednesdayDivisor wednesday firstThree
      thursdayDivisor thursday firstFour showLength friday : Nat) : Prop :=
  dayHours = monday * mondayDivisor ∧ dayHours = wednesday * wednesdayDivisor ∧
  firstThree = monday + tuesday + wednesday ∧ firstThree = thursday * thursdayDivisor ∧
  firstFour = firstThree + thursday ∧ showLength = firstFour + friday

def GoldfishWeeks (initial deathsPerWeek purchasesPerWeek weeks deaths purchases remaining : Nat) : Prop :=
  deaths = deathsPerWeek * weeks ∧ purchases = purchasesPerWeek * weeks ∧
  initial + purchases = deaths + remaining

def HomeworkTypes (trueFalse extraFree free multipleMultiplier multiple total : Nat) : Prop :=
  free = trueFalse + extraFree ∧ multiple = multipleMultiplier * free ∧
  total = trueFalse + free + multiple

def TelevisionTax (price percent tax total : Nat) : Prop :=
  price * percent = tax * 100 ∧ total = price + tax

def PrinterPrice (keyboardCount keyboardPrice keyboardCost printerCount printerPrice printerCost total : Nat) : Prop :=
  keyboardCost = keyboardCount * keyboardPrice ∧ total = keyboardCost + printerCost ∧
  printerCost = printerCount * printerPrice

def MazeAverage
    (previousMazes previousAverage previousTotal currentSpent mazeCount limit totalLimit used remaining : Nat) : Prop :=
  previousTotal = previousMazes * previousAverage ∧ totalLimit = mazeCount * limit ∧
  used = previousTotal + currentSpent ∧ totalLimit = used + remaining

end LemmaWeave.Problems.GSM8K.Sprint0921A17
