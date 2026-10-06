namespace LemmaWeave.Problems.GSM8K.Sprint0921A09

def BaseballCards (jessDoubles multiplier robDoubles fractionDenominator total : Nat) : Prop :=
  jessDoubles = robDoubles * multiplier ∧ total = robDoubles * fractionDenominator

def ReunionMeals (people servedPerCombo combos pricePerCombo totalCost : Nat) : Prop :=
  people = combos * servedPerCombo ∧ totalCost = combos * pricePerCombo

def WellPay (day1 day2 day3 hours rate workers eachPay totalPay : Nat) : Prop :=
  hours = day1 + day2 + day3 ∧ eachPay = hours * rate ∧ totalPay = eachPay * workers

def PetFood
    (catBags catPounds catTotal dogExtra dogEach dogBags dogTotal pounds ouncesPerPound ounces : Nat) : Prop :=
  catTotal = catBags * catPounds ∧ dogEach = catPounds + dogExtra ∧
  dogTotal = dogBags * dogEach ∧ pounds = catTotal + dogTotal ∧ ounces = pounds * ouncesPerPound

def ZooCubs
    (initial sent hippos rhinos beforeBirth final cubs meerkats : Nat) : Prop :=
  beforeBirth + sent = initial + hippos + rhinos ∧ meerkats = cubs * 2 ∧
  final = beforeBirth + cubs + meerkats

def LettuceSeeds
    (largeBeds largeRows largePerRow largeTotal mediumBeds mediumRows mediumPerRow mediumTotal total : Nat) : Prop :=
  largeTotal = largeBeds * largeRows * largePerRow ∧
  mediumTotal = mediumBeds * mediumRows * mediumPerRow ∧ total = largeTotal + mediumTotal

def KetchupTomatoes
    (givenLiters givenKg kgPerLiter wantedLiters wantedKg : Nat) : Prop :=
  givenKg = givenLiters * kgPerLiter ∧ wantedKg = wantedLiters * kgPerLiter

def RampCost
    (permit hourly days hoursPerDay hours contractor inspectorPercent inspector total : Nat) : Prop :=
  hours = days * hoursPerDay ∧ contractor = hourly * hours ∧
  inspector * 100 = contractor * inspectorPercent ∧ total = permit + contractor + inspector

def AppleBudget
    (money kiwi banana outbound inbound transport committed remaining bagPrice bags applesPerBag apples : Nat) : Prop :=
  banana * 2 = kiwi ∧ transport = outbound + inbound ∧
  committed = kiwi + banana + transport ∧ money = committed + remaining ∧
  bags * bagPrice ≤ remaining ∧ remaining < (bags + 1) * bagPrice ∧ apples = bags * applesPerBag

def SandwichOrder
    (count eachPrice sandwiches delivery subtotal tipPercent tip total : Nat) : Prop :=
  sandwiches = count * eachPrice ∧ subtotal = sandwiches + delivery ∧
  tip * 100 = subtotal * tipPercent ∧ total = subtotal + tip

def SeasonScoring
    (seasonPoints games pointsPerGame freeThrows twoBaskets nonThree threePoints threeBaskets : Nat) : Prop :=
  seasonPoints = games * pointsPerGame ∧ nonThree = freeThrows + twoBaskets * 2 ∧
  pointsPerGame = nonThree + threePoints ∧ threePoints = threeBaskets * 3

/-- “3 times older” may mean 3x as old or 3x older (4x as old). The latter gives 33.5 years. -/
def AgeAmbiguity
    (kiarra bea referenceJob referenceFigaro referenceHarry additiveJob additiveFigaro additiveHarryTwice : Nat) : Prop :=
  kiarra = bea * 2 ∧ referenceJob = bea * 3 ∧ referenceFigaro = referenceJob + 7 ∧
  referenceFigaro = referenceHarry * 2 ∧ additiveJob = bea + bea * 3 ∧
  additiveFigaro = additiveJob + 7 ∧ additiveHarryTwice = additiveFigaro ∧
  referenceHarry * 2 ≠ additiveHarryTwice

def BearPurchase
    (firstPrice discount laterPrice laterBears laterCost total : Nat) : Prop :=
  firstPrice = laterPrice + discount ∧ laterCost = laterBears * laterPrice ∧
  total = firstPrice + laterCost

def PartyChildren (all men women adults children : Nat) : Prop :=
  men * 3 = all ∧ women * 2 = all ∧ adults = men + women ∧ all = adults + children

def MarketPurchase
    (oranges orangeEach orangeCost juices juiceEach juiceCost honey honeyEach honeyCost
      plants pairPlants pairCost plantCost total : Nat) : Prop :=
  orangeCost = oranges * orangeEach ∧ juiceCost = juices * juiceEach ∧
  honeyCost = honey * honeyEach ∧ plants * pairCost = plantCost * pairPlants ∧
  total = orangeCost + juiceCost + honeyCost + plantCost

end LemmaWeave.Problems.GSM8K.Sprint0921A09
