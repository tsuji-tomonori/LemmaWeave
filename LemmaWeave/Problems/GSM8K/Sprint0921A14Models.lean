namespace LemmaWeave.Problems.GSM8K.Sprint0921A14

def BerryCartons (needed strawberries blueberries existing toBuy : Nat) : Prop :=
  existing = strawberries + blueberries ∧ needed = existing + toBuy

def FairTickets (fair extra baseball : Nat) : Prop :=
  fair = 2 * baseball + extra

def WeeklyVegetables
    (eggplants carrots potatoes workdays weeklyEggplants weeklyCarrots weeklyPotatoes total : Nat) : Prop :=
  weeklyEggplants = eggplants * workdays ∧ weeklyCarrots = carrots * workdays ∧
  weeklyPotatoes = potatoes * workdays ∧
  total = weeklyEggplants + weeklyCarrots + weeklyPotatoes

/-- “Five times more” can mean either five times total or five times profit plus principal. -/
def InvestmentAmbiguity
    (principal aliceMultiplier aliceTotal bobTotalMultiplier bobFivefoldTotal
      bobProfitMultiplier bobProfit bobProfitReadingTotal fivefoldDifference profitDifference : Nat) : Prop :=
  aliceTotal = principal * aliceMultiplier ∧ bobFivefoldTotal = principal * bobTotalMultiplier ∧
  bobProfit = principal * bobProfitMultiplier ∧ bobProfitReadingTotal = principal + bobProfit ∧
  bobFivefoldTotal = aliceTotal + fivefoldDifference ∧
  bobProfitReadingTotal = aliceTotal + profitDifference ∧
  fivefoldDifference ≠ profitDifference

def WaldoTime
    (books puzzlesPerBook puzzles minutesPerPuzzle totalMinutes : Nat) : Prop :=
  puzzles = books * puzzlesPerBook ∧ totalMinutes = puzzles * minutesPerPuzzle

def Ages (hezekiah olderBy ryanne total : Nat) : Prop :=
  ryanne = hezekiah + olderBy ∧ total = ryanne + hezekiah

def Entertainment
    (game tickets ticketPrice ticketCost total : Nat) : Prop :=
  ticketCost = tickets * ticketPrice ∧ total = game + ticketCost

def FallenCakes
    (cakes fallen recovered destroyed : Nat) : Prop :=
  cakes = fallen * 2 ∧ fallen = recovered + destroyed ∧ recovered = destroyed

def CoffeeThermoses
    (halfGallons pintsPerGallon totalPints thermoses pintsPerThermos drankThermoses drankPints : Nat) : Prop :=
  totalPints * 2 = halfGallons * pintsPerGallon ∧ totalPints = thermoses * pintsPerThermos ∧
  drankPints = drankThermoses * pintsPerThermos

def CoinCollection
    (initial doubled monthly months monthlyAdded intervalMonths intervalAdded beforeLoss
      lossDivisor lost remaining : Nat) : Prop :=
  doubled = initial * 2 ∧ monthlyAdded = monthly * months ∧
  months = intervalAdded * intervalMonths ∧
  beforeLoss = doubled + monthlyAdded + intervalAdded ∧
  beforeLoss = lost * lossDivisor ∧ beforeLoss = lost + remaining

def MonitorPixels
    (widthInches heightInches dotsPerInch widthPixels heightPixels totalPixels : Nat) : Prop :=
  widthPixels = widthInches * dotsPerInch ∧
  heightPixels = heightInches * dotsPerInch ∧ totalPixels = widthPixels * heightPixels

def BillAverage
    (firstMonths firstAverage firstTotal lastMonths lastAverage lastTotal
      months total average : Nat) : Prop :=
  firstTotal = firstMonths * firstAverage ∧ lastTotal = lastMonths * lastAverage ∧
  months = firstMonths + lastMonths ∧ total = firstTotal + lastTotal ∧ total = months * average

def DollCounts
    (vera multiplier sophie aida total : Nat) : Prop :=
  sophie = vera * multiplier ∧ aida = sophie * multiplier ∧ total = vera + sophie + aida

def CheckingAccount
    (initial rent afterRent paycheck afterPaycheck electricity internet fridayBills
      afterFriday phone final : Nat) : Prop :=
  initial = rent + afterRent ∧ afterPaycheck = afterRent + paycheck ∧
  fridayBills = electricity + internet ∧ afterPaycheck = fridayBills + afterFriday ∧
  afterFriday = phone + final

def Toothpaste
    (total dad mom anne brother perBrushing brushingsPerDay perDay days : Nat) : Prop :=
  perBrushing = dad + mom + anne + brother ∧
  perDay = perBrushing * brushingsPerDay ∧ total = days * perDay

end LemmaWeave.Problems.GSM8K.Sprint0921A14
