namespace LemmaWeave.Problems.GSM8K.Sprint0921A13

/-- Monetary values are cents. -/
def FloorReplacement
    (length width area removalCost pricePerSquareFoot floorCost total : Nat) : Prop :=
  area = length * width ∧ floorCost = area * pricePerSquareFoot ∧
  total = removalCost + floorCost

/-- Monetary values are cents. -/
def HeliumBalloon
    (budget sheet rope equipment spent remaining heliumPrice ounces feetPerOunce height : Nat) : Prop :=
  spent = sheet + rope + equipment ∧ budget = spent + remaining ∧
  remaining = ounces * heliumPrice ∧ height = ounces * feetPerOunce

def MarblePrism
    (baseSide height volume density mass : Nat) : Prop :=
  volume = baseSide * baseSide * height ∧ mass = volume * density

/-- Weight values are half-pound units, so 600 means 300 pounds. -/
def DietLoss
    (initial final month1 month2 month3 month4 firstFour totalLoss month5 : Nat) : Prop :=
  month1 = month2 * 2 ∧ month2 = month3 * 2 ∧ month3 = month4 * 2 ∧
  firstFour = month1 + month2 + month3 + month4 ∧ initial = final + totalLoss ∧
  totalLoss = firstFour + month5

def JetDistance
    (sampleMiles sampleHours milesPerHour targetHours targetMiles : Nat) : Prop :=
  sampleMiles = sampleHours * milesPerHour ∧ targetMiles = targetHours * milesPerHour

def SongWork
    (songs hoursPerDay daysPerSong hoursPerSong totalHours : Nat) : Prop :=
  hoursPerSong = hoursPerDay * daysPerSong ∧ totalHours = songs * hoursPerSong

def Watermelons
    (dozens perDozen total firstPercent firstSold afterFirst fractionDenominator
      secondSold remaining : Nat) : Prop :=
  total = dozens * perDozen ∧ firstSold * 100 = total * firstPercent ∧
  total = firstSold + afterFirst ∧ afterFirst = secondSold * fractionDenominator ∧
  afterFirst = secondSold + remaining

def SpaceshipBreaks
    (firstTravel firstBreak secondTravel secondBreak firstDayTravel firstDayBreak
      firstDayHours journeyDays totalHours remainingHours cycleTravel cycleBreak
      cycleHours laterBreaks totalBreaks : Nat) : Prop :=
  firstDayTravel = firstTravel + secondTravel ∧ firstDayBreak = firstBreak + secondBreak ∧
  firstDayHours = firstDayTravel + firstDayBreak ∧ totalHours = journeyDays * 24 ∧
  totalHours = firstDayHours + remainingHours ∧ cycleHours = cycleTravel + cycleBreak ∧
  remainingHours = laterBreaks * cycleHours ∧ totalBreaks = firstDayBreak + laterBreaks

def CardRatio
    (total ellisRatio orionRatio ratioTotal unit ellis orion difference : Nat) : Prop :=
  ratioTotal = ellisRatio + orionRatio ∧ total = unit * ratioTotal ∧
  ellis = unit * ellisRatio ∧ orion = unit * orionRatio ∧ ellis = orion + difference

def ClassSize (finley half extra johnson : Nat) : Prop :=
  finley = half * 2 ∧ johnson = half + extra

/-- The 135-minute answer requires proportional charging; the source does not state that assumption. -/
def PhoneCharge
    (chargedMinutes chargePercent fullPercent proportionalTotal proportionalRemaining
      alternativeTotal alternativeRemaining : Nat) : Prop :=
  proportionalTotal * chargePercent = chargedMinutes * fullPercent ∧
  proportionalTotal = chargedMinutes + proportionalRemaining ∧
  alternativeTotal = chargedMinutes + alternativeRemaining ∧
  chargedMinutes < alternativeTotal ∧ proportionalTotal ≠ alternativeTotal

def DanceClasses
    (hipHopCount hipHopPrice hipHopCost balletCount balletPrice balletCost
      jazzCount jazzPrice jazzCost total : Nat) : Prop :=
  hipHopCost = hipHopCount * hipHopPrice ∧ balletCost = balletCount * balletPrice ∧
  jazzCost = jazzCount * jazzPrice ∧ total = hipHopCost + balletCost + jazzCost

def Shopping
    (films filmPrice filmCost books bookPrice bookCost cds cdPrice cdCost total : Nat) : Prop :=
  filmCost = films * filmPrice ∧ bookCost = books * bookPrice ∧
  cdCost = cds * cdPrice ∧ total = filmCost + bookCost + cdCost

def BeadBracelets
    (smallBags smallBagSize smallBeads largeBags largeBagSize largeBeads
      total beadsPerBracelet bracelets : Nat) : Prop :=
  smallBeads = smallBags * smallBagSize ∧ largeBeads = largeBags * largeBagSize ∧
  total = smallBeads + largeBeads ∧ total = bracelets * beadsPerBracelet

def HalloweenDecorations
    (skulls broomsticks webs pumpkinMultiplier pumpkins cauldron alreadyUp
      toBuy leftToPut additional finalTotal withoutBuyingTotal : Nat) : Prop :=
  pumpkins = webs * pumpkinMultiplier ∧
  alreadyUp = skulls + broomsticks + webs + pumpkins + cauldron ∧
  additional = toBuy + leftToPut ∧ finalTotal = alreadyUp + additional ∧
  withoutBuyingTotal = alreadyUp + leftToPut ∧ finalTotal ≠ withoutBuyingTotal

end LemmaWeave.Problems.GSM8K.Sprint0921A13
