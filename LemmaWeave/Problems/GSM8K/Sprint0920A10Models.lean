namespace LemmaWeave.Problems.GSM8K.Sprint0920A10

def AnimalCompound
    (frogs frogsPerDog dogs catPercent cats total : Nat) : Prop :=
  dogs * frogsPerDog = frogs ∧ cats * 100 = dogs * (100 - catPercent) ∧
  total = cats + dogs + frogs

def ColdBrew
    (gallonOunces jugDenominator jugOunces days dailyOunces ouncesPerCup cups : Nat) : Prop :=
  jugOunces * jugDenominator = gallonOunces ∧ jugOunces = days * dailyOunces ∧
  dailyOunces = ouncesPerCup * cups

def AlligatorHours
    (outbound extra returnHours companions returnGroup returnAnimalHours combined : Nat) : Prop :=
  returnHours = outbound + extra ∧ returnGroup = companions + 1 ∧
  returnAnimalHours = returnGroup * returnHours ∧ combined = outbound + returnAnimalHours

def StrawberryJam
    (betty extra matthew natalie total berriesPerJar jars dollarsPerJar revenue : Nat) : Prop :=
  matthew = betty + extra ∧ matthew = 2 * natalie ∧
  total = betty + matthew + natalie ∧ total = jars * berriesPerJar ∧
  revenue = jars * dollarsPerJar

def ShipmentFund
    (profit divisor half donation available goal surplus : Nat) : Prop :=
  half * divisor = profit ∧ available = half + donation ∧ available = goal + surplus

def RemainingBirds
    (grey whiteExtra white freedDivisor greyRemaining total : Nat) : Prop :=
  white = grey + whiteExtra ∧ greyRemaining * freedDivisor = grey ∧
  total = white + greyRemaining

def BulbBill
    (dailyPerBulb bulbs dailyTotal days monthlyUnits centsPerUnit billCents billDollars : Nat) : Prop :=
  dailyTotal = bulbs * dailyPerBulb ∧ monthlyUnits = days * dailyTotal ∧
  billCents = monthlyUnits * centsPerUnit ∧ billCents = billDollars * 100

def PencilAges
    (ageSum asafAge alexanderAge ageDifference asafPencils extra alexanderPencils total : Nat) : Prop :=
  ageSum = asafAge + alexanderAge ∧ alexanderAge = asafAge + ageDifference ∧
  asafPencils = 2 * ageDifference ∧ alexanderPencils = asafPencils + extra ∧
  total = asafPencils + alexanderPencils

def ClimbingDifference
    (mattRate jasonRate minutes mattHeight jasonHeight difference : Nat) : Prop :=
  mattHeight = mattRate * minutes ∧ jasonHeight = jasonRate * minutes ∧
  jasonHeight = mattHeight + difference

def RoofArea
    (houseLengthTenths houseWidth houseArea porchLength porchWidthTenths porchArea total : Nat) : Prop :=
  houseArea * 10 = houseLengthTenths * houseWidth ∧
  porchArea * 10 = porchLength * porchWidthTenths ∧ total = houseArea + porchArea

def PlayerSongs
    (initial second afterTwo multiplier added beforeRemoval removed final : Nat) : Prop :=
  afterTwo = initial + second ∧ added = multiplier * afterTwo ∧
  beforeRemoval = afterTwo + added ∧ beforeRemoval = final + removed

def PartyCost
    (drinkCost drinks drinkTotal cakeCost cakes cakeTotal iceCost ices iceTotal total : Nat) : Prop :=
  drinkTotal = drinkCost * drinks ∧ cakeTotal = cakeCost * cakes ∧
  iceTotal = iceCost * ices ∧ total = drinkTotal + cakeTotal + iceTotal

def RecycledContainers
    (guests sodaDivisor soda sparklingDivisor sparkling juiceStock juiceNumerator
      juiceDenominator juice total : Nat) : Prop :=
  soda * sodaDivisor = guests ∧ sparkling * sparklingDivisor = guests ∧
  juice * juiceDenominator = juiceStock * juiceNumerator ∧
  total = soda + sparkling + juice

def EmploymentEarnings
    (years monthsPerYear oldMonths oldMonthly oldTotal extraMonths newMonths percent increase
      newMonthly newTotal combined : Nat) : Prop :=
  oldMonths = years * monthsPerYear ∧ oldTotal = oldMonths * oldMonthly ∧
  newMonths = oldMonths + extraMonths ∧ increase * 100 = oldMonthly * percent ∧
  newMonthly = oldMonthly + increase ∧ newTotal = newMonths * newMonthly ∧
  combined = oldTotal + newTotal

def QuiltCost
    (length width area dollarsPerSquareFoot cost : Nat) : Prop :=
  area = length * width ∧ cost = area * dollarsPerSquareFoot

end LemmaWeave.Problems.GSM8K.Sprint0920A10
