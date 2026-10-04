namespace LemmaWeave.Problems.GSM8K.Sprint0921A16

def ShowerWater (weeks days interval showers minutesPerShower totalMinutes gallonsPerMinute totalGallons : Nat) : Prop :=
  days = weeks * 7 ∧ days = showers * interval ∧
  totalMinutes = showers * minutesPerShower ∧ totalGallons = totalMinutes * gallonsPerMinute

def BeachSurfers (santa multiplier malibu total : Nat) : Prop :=
  malibu = multiplier * santa ∧ total = santa + malibu

/-- Two of the five color counts are unstated; positive choices 1+1 and 2+2 give different totals. -/
def AquariumAmbiguity
    (yellow blue green known unseenA unseenB total alternativeA alternativeB alternativeTotal : Nat) : Prop :=
  yellow = blue * 2 ∧ green = yellow * 2 ∧ known = yellow + blue + green ∧
  total = known + unseenA + unseenB ∧ unseenA = 1 ∧ unseenB = 1 ∧
  alternativeTotal = known + alternativeA + alternativeB ∧ alternativeA = 2 ∧ alternativeB = 2 ∧
  total ≠ alternativeTotal

def WalkingSpeeds (hand handFactor tracy tracyFactor susan backwardFactor backward : Nat) : Prop :=
  tracy = hand * handFactor ∧ tracy = susan * tracyFactor ∧ backward = susan * backwardFactor

def ChoreHours (vacuum multiplier other total : Nat) : Prop :=
  other = vacuum * multiplier ∧ total = vacuum + other

def GoldCost (garyGrams garyRate garyCost annaGrams annaRate annaCost total : Nat) : Prop :=
  garyCost = garyGrams * garyRate ∧ annaCost = annaGrams * annaRate ∧ total = garyCost + annaCost

def PaintRatio (bluePart greenPart whitePart green blue white total : Nat) : Prop :=
  blue * greenPart = green * bluePart ∧ white * greenPart = green * whitePart ∧
  total = blue + green + white

def ClassGrades (kindergarten first total second : Nat) : Prop :=
  total = kindergarten + first + second

def Fireworks
    (yearDigits perDigit yearFireworks letters perLetter letterFireworks boxes perBox boxFireworks total : Nat) : Prop :=
  yearFireworks = yearDigits * perDigit ∧ letterFireworks = letters * perLetter ∧
  boxFireworks = boxes * perBox ∧ total = yearFireworks + letterFireworks + boxFireworks

/-- The statement does not say that either shopper is a senior; discounted and full prices differ. -/
def SeniorDiscountAmbiguity
    (shorts shortPrice shortCost shirts shirtPrice shirtCost subtotal percent discount discounted full : Nat) : Prop :=
  shortCost = shorts * shortPrice ∧ shirtCost = shirts * shirtPrice ∧
  subtotal = shortCost + shirtCost ∧ subtotal * percent = discount * 100 ∧
  discounted = subtotal - discount ∧ full = subtotal ∧ discounted ≠ full

/-- A boat trip of at most two hours yields a ten-hour upper bound, not an exact duration. -/
def VirgoTripAmbiguity
    (factor boatMax planeAtMax totalMax boatAlternative planeAlternative totalAlternative : Nat) : Prop :=
  planeAtMax = factor * boatMax ∧ totalMax = boatMax + planeAtMax ∧
  boatAlternative ≤ boatMax ∧ planeAlternative = factor * boatAlternative ∧
  totalAlternative = boatAlternative + planeAlternative ∧ totalAlternative ≠ totalMax

def PeachEarnings
    (friendCount friendCents friendRevenue relativeCount relativeCents relativeRevenue sold totalCents : Nat) : Prop :=
  friendRevenue = friendCount * friendCents ∧ relativeRevenue = relativeCount * relativeCents ∧
  sold = friendCount + relativeCount ∧ totalCents = friendRevenue + relativeRevenue

def CarpetTotal (house1 house2 house3 multiplier house4 total : Nat) : Prop :=
  house4 = multiplier * house3 ∧ total = house1 + house2 + house3 + house4

def PuppyParrotStudents (students puppyPercent puppies parrotPercent both : Nat) : Prop :=
  students * puppyPercent = puppies * 100 ∧ puppies * parrotPercent = both * 100

def HoverTime
    (mountain1 central1 eastern1 day1 extraEach zones extraTotal day2 total : Nat) : Prop :=
  day1 = mountain1 + central1 + eastern1 ∧ zones = 3 ∧
  extraTotal = extraEach * zones ∧ day2 = day1 + extraTotal ∧ total = day1 + day2

end LemmaWeave.Problems.GSM8K.Sprint0921A16
