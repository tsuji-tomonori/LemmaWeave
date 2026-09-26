namespace LemmaWeave.Problems.GSM8K.Sprint0919A07

def FootballExpectation
    (referenceTotal likes playPercent players sample expected : Nat) : Prop :=
  referenceTotal = 60 ∧ likes = 24 ∧ playPercent = 50 ∧
  players * 100 = likes * playPercent ∧ sample = 250 ∧
  expected * referenceTotal = sample * players

def ShoePairs
    (brian multiplier edward jacob total : Nat) : Prop :=
  brian = 22 ∧ multiplier = 3 ∧ edward = brian * multiplier ∧
  jacob * 2 = edward ∧ total = brian + edward + jacob

def SalaryRaises
    (starting firstPercent firstSalary secondPercent currentSalary : Nat) : Prop :=
  starting = 80000 ∧ firstPercent = 140 ∧ firstSalary * 100 = starting * firstPercent ∧
  secondPercent = 120 ∧ currentSalary * 100 = firstSalary * secondPercent

def Tomatoes
    (plants perPlant total dried undried sauce left : Nat) : Prop :=
  plants = 18 ∧ perPlant = 7 ∧ total = plants * perPlant ∧
  dried * 2 = total ∧ undried + dried = total ∧ sauce * 3 = undried ∧
  left + sauce = undried

def ReturnableGiftCards
    (bestBuyTotal bestBuySent bestBuyRemaining bestBuyValue bestBuyRefund
      walmartTotal walmartSent walmartRemaining walmartValue walmartRefund totalRefund : Nat) : Prop :=
  bestBuyTotal = 6 ∧ bestBuySent = 1 ∧ bestBuyRemaining + bestBuySent = bestBuyTotal ∧
  bestBuyValue = 500 ∧ bestBuyRefund = bestBuyRemaining * bestBuyValue ∧
  walmartTotal = 9 ∧ walmartSent = 2 ∧ walmartRemaining + walmartSent = walmartTotal ∧
  walmartValue = 200 ∧ walmartRefund = walmartRemaining * walmartValue ∧
  totalRefund = bestBuyRefund + walmartRefund

end LemmaWeave.Problems.GSM8K.Sprint0919A07
