namespace LemmaWeave.Problems.GSM8K.Sprint0920A07

def CoffeeWeek
    (hourly hours weekdayDaily weekdays weekdayTotal weekend total : Nat) : Prop :=
  weekdayDaily = hourly * hours ∧ weekdayTotal = weekdayDaily * weekdays ∧
  total = weekdayTotal + weekend

def ChocolateSquares (mike multiplier thrice extra jenny : Nat) : Prop :=
  thrice = multiplier * mike ∧ jenny = thrice + extra

def BoardNotes
    (rows redPerRow red bluePerRed blueUnder blueBottom blue total : Nat) : Prop :=
  red = rows * redPerRow ∧ blueUnder = bluePerRed * red ∧
  blue = blueUnder + blueBottom ∧ total = red + blue

def RunnerCatch
    (bobMph jimMph minutesPerHour minutes bobMiles jimMiles headStart : Nat) : Prop :=
  bobMiles * minutesPerHour = bobMph * minutes ∧
  jimMiles * minutesPerHour = jimMph * minutes ∧
  jimMiles = headStart + bobMiles

def BrokenFlagpole (total tipHeight lower upper : Nat) : Prop :=
  total = lower + upper ∧ lower = upper + tipHeight

def StickerRemainders
    (space friends spaceEach spaceLeft cats catEach catLeft totalLeft : Nat) : Prop :=
  space = friends * spaceEach + spaceLeft ∧ cats = friends * catEach + catLeft ∧
  totalLeft = spaceLeft + catLeft

/-- All durations are represented first in half-hours. -/
def CoffeeCake
    (assemble usualBake bakeMultiplier failedBake decorate totalHalf totalHours : Nat) : Prop :=
  failedBake = bakeMultiplier * usualBake ∧
  totalHalf = assemble + failedBake + decorate ∧ totalHalf = totalHours * 2

/--
Without a date inside 2021, the year of birth is not unique: 1979 applies after
Julia's birthday, while 1978 applies before her birthday.
-/
def BirthYearAmbiguous
    (currentYear wayneAge peterExtra peterAge juliaExtra juliaAge
      afterBirthday beforeBirthday : Nat) : Prop :=
  peterAge = wayneAge + peterExtra ∧ juliaAge = peterAge + juliaExtra ∧
  currentYear = afterBirthday + juliaAge ∧
  currentYear = beforeBirthday + juliaAge + 1 ∧ afterBirthday ≠ beforeBirthday

def SalePins
    (count regular subtotal discountPercent discount paid : Nat) : Prop :=
  subtotal = count * regular ∧ discount * 100 = subtotal * discountPercent ∧
  subtotal = discount + paid

def OrchardFruit
    (appleTrees appleEach apples peachTrees peachEach peaches total : Nat) : Prop :=
  apples = appleTrees * appleEach ∧ peaches = peachTrees * peachEach ∧
  total = apples + peaches

def QuarterMoney
    (quarters centsPerQuarter initial spent remaining : Nat) : Prop :=
  initial = quarters * centsPerQuarter ∧ initial = spent + remaining

def PrinterCartridges
    (colorCount colorEach colorCost blackEach total : Nat) : Prop :=
  colorCost = colorCount * colorEach ∧ total = colorCost + blackEach

def ChoirVerses
    (singers first firstRemaining secondDivisor secondJoined finalJoined : Nat) : Prop :=
  first * 2 = singers ∧ first + firstRemaining = singers ∧
  secondJoined * secondDivisor = firstRemaining ∧
  first + secondJoined + finalJoined = singers

def StrawberryShare
    (baskets perBasket brother multiplier kim parentsLess parentsCombined
      total people each : Nat) : Prop :=
  brother = baskets * perBasket ∧ kim = multiplier * brother ∧
  kim = parentsCombined + parentsLess ∧ total = brother + kim + parentsCombined ∧
  total = people * each

def TreeFruit
    (papayaTrees papayaEach papayas mangoTrees mangoEach mangos total : Nat) : Prop :=
  papayas = papayaTrees * papayaEach ∧ mangos = mangoTrees * mangoEach ∧
  total = papayas + mangos

end LemmaWeave.Problems.GSM8K.Sprint0920A07
