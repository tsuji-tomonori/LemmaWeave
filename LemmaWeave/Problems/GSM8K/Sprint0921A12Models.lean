namespace LemmaWeave.Problems.GSM8K.Sprint0921A12

def InvestmentPortfolio
    (initial firstPercent firstGain afterFirst added beforeSecond secondPercent secondGain final : Nat) : Prop :=
  firstGain * 100 = initial * firstPercent ∧ afterFirst = initial + firstGain ∧
  beforeSecond = afterFirst + added ∧ secondGain * 100 = beforeSecond * secondPercent ∧
  final = beforeSecond + secondGain

def BasketballAverage
    (currentAverage gamesPlayed pointsSoFar targetAverage seasonGames targetPoints
      remainingGames remainingPoints neededAverage : Nat) : Prop :=
  pointsSoFar = currentAverage * gamesPlayed ∧ targetPoints = targetAverage * seasonGames ∧
  seasonGames = gamesPlayed + remainingGames ∧ targetPoints = pointsSoFar + remainingPoints ∧
  remainingPoints = neededAverage * remainingGames

/-- The source says earrings are priced per pair but reports selling 20 earrings, not 20 pairs. -/
def JewelrySales
    (necklaces necklacePrice bracelets braceletPrice earrings earringPairPrice
      ensembles ensemblePrice necklaceSales braceletSales ensembleSales
      pairReadingEarringSales pairReadingTotal itemPairs itemReadingEarringSales itemReadingTotal : Nat) : Prop :=
  necklaceSales = necklaces * necklacePrice ∧ braceletSales = bracelets * braceletPrice ∧
  ensembleSales = ensembles * ensemblePrice ∧
  pairReadingEarringSales = earrings * earringPairPrice ∧
  pairReadingTotal = necklaceSales + braceletSales + pairReadingEarringSales + ensembleSales ∧
  earrings = itemPairs * 2 ∧ itemReadingEarringSales = itemPairs * earringPairPrice ∧
  itemReadingTotal = necklaceSales + braceletSales + itemReadingEarringSales + ensembleSales ∧
  pairReadingTotal ≠ itemReadingTotal

def CrayonBoxes
    (total francineLoose fullBoxes boxed crayonsPerBox friendLoose looseTotal neededBoxes : Nat) : Prop :=
  total = boxed + francineLoose ∧ boxed = fullBoxes * crayonsPerBox ∧
  looseTotal = francineLoose + friendLoose ∧ looseTotal = neededBoxes * crayonsPerBox

def PaintDrums
    (sampleDays sampleDrums dailyRate targetDrums neededDays : Nat) : Prop :=
  sampleDrums = sampleDays * dailyRate ∧ targetDrums = neededDays * dailyRate

def AverageHeights
    (zara brixton zoraShorter zora itzayanaTaller itzayana total people average : Nat) : Prop :=
  brixton = zara ∧ brixton = zora + zoraShorter ∧
  itzayana = zora + itzayanaTaller ∧ total = zara + brixton + zora + itzayana ∧
  total = people * average

def NailDecorating
    (coats applyMinutes dryMinutes minutesPerCoat totalMinutes : Nat) : Prop :=
  minutesPerCoat = applyMinutes + dryMinutes ∧ totalMinutes = coats * minutesPerCoat

def SpacecraftSpeeds
    (distance firstMinutes secondMinutes firstSpeed secondSpeed difference : Nat) : Prop :=
  firstSpeed * firstMinutes = distance * 60 ∧
  secondSpeed * secondMinutes = distance * 60 ∧ firstSpeed = secondSpeed + difference

/-- Monetary values are cents. -/
def TwoMonthWages
    (hoursPerDay centsPerHour dailyCents daysPerMonth monthlyCents months totalCents : Nat) : Prop :=
  dailyCents = hoursPerDay * centsPerHour ∧ monthlyCents = daysPerMonth * dailyCents ∧
  totalCents = months * monthlyCents

def RunningDistance
    (firstSpeed firstDistance secondSpeed secondDistance thirdSpeed thirdDistance total : Nat) : Prop :=
  firstSpeed = firstDistance * 2 ∧ secondSpeed = secondDistance * 2 ∧
  thirdSpeed = thirdDistance * 4 ∧ total = firstDistance + secondDistance + thirdDistance

def OpenPistachios
    (total shellPercent shelled openPercent opened : Nat) : Prop :=
  shelled * 100 = total * shellPercent ∧ opened * 100 = shelled * openPercent

def PennyMoney
    (initial sockPairs sockPrice sockCost hatPrice spent remaining : Nat) : Prop :=
  sockCost = sockPairs * sockPrice ∧ spent = sockCost + hatPrice ∧ initial = spent + remaining

def GreyCats
    (total white blackPercent black grey : Nat) : Prop :=
  black * 100 = total * blackPercent ∧ total = white + black + grey

def CarWash
    (total suvCount suvPrice suvRevenue truckCount truckPrice truckRevenue
      carPrice carRevenue cars : Nat) : Prop :=
  suvRevenue = suvCount * suvPrice ∧ truckRevenue = truckCount * truckPrice ∧
  total = suvRevenue + truckRevenue + carRevenue ∧ carRevenue = cars * carPrice

def CerealBoxes
    (first second third lessThanThird total : Nat) : Prop :=
  first = second * 2 ∧ third = second + lessThanThird ∧ total = first + second + third

end LemmaWeave.Problems.GSM8K.Sprint0921A12
