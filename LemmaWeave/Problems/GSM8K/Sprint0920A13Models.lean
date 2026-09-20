namespace LemmaWeave.Problems.GSM8K.Sprint0920A13

def PamApples
    (geraldPerBag multiplier pamPerBag pamBags total : Nat) : Prop :=
  pamPerBag = geraldPerBag * multiplier ∧ total = pamBags * pamPerBag

def JuiceCups
    (gallons cupsPerGallon total left drunk : Nat) : Prop :=
  total = gallons * cupsPerGallon ∧ total = drunk + left

def StrawberryArea
    (garden fruitDivisor fruitArea strawberryDivisor strawberryArea : Nat) : Prop :=
  garden = fruitArea * fruitDivisor ∧ fruitArea = strawberryArea * strawberryDivisor

def GrillTime
    (bags coalsPerBag total coalsPerInterval intervals minutesPerInterval minutes : Nat) : Prop :=
  total = bags * coalsPerBag ∧ total = intervals * coalsPerInterval ∧
  minutes = intervals * minutesPerInterval

def SisterAge
    (djiboToday yearsAgo djiboPast pastSum sisterPast sisterToday : Nat) : Prop :=
  djiboToday = djiboPast + yearsAgo ∧ pastSum = djiboPast + sisterPast ∧
  sisterToday = sisterPast + yearsAgo

def SnowballPercent
    (janet brother total percent : Nat) : Prop :=
  total = janet + brother ∧ percent * total = janet * 100

def GregAge
    (cindy olderBy jan twice janAge marcia greg : Nat) : Prop :=
  janAge = cindy + olderBy ∧ marcia = twice * janAge ∧ greg = marcia + olderBy

def MovieProduction
    (lj percent extra johnny yearlyCombined years total : Nat) : Prop :=
  extra * 100 = lj * percent ∧ johnny = lj + extra ∧
  yearlyCombined = johnny + lj ∧ total = years * yearlyCombined

def SquareBiscuits
    (doughSide biscuitSide biscuitsPerSide total : Nat) : Prop :=
  doughSide = biscuitsPerSide * biscuitSide ∧ total = biscuitsPerSide * biscuitsPerSide

def EventChildren
    (guests men women adults originalChildren addedChildren finalChildren : Nat) : Prop :=
  men = 2 * women ∧ adults = men + women ∧ guests = adults + originalChildren ∧
  finalChildren = originalChildren + addedChildren

def HotWings
    (record minutes kevinRate alanRate targetRate extraNeeded : Nat) : Prop :=
  record = minutes * kevinRate ∧ targetRate = kevinRate + 1 ∧
  targetRate = alanRate + extraNeeded ∧
  (∀ r : Nat, alanRate + r > kevinRate → extraNeeded ≤ r)

def MealShare
    (price coupon discounted people share : Nat) : Prop :=
  price = discounted + coupon ∧ discounted = people * share

def PartySizes
    (multiplier taylor ryan total : Nat) : Prop :=
  ryan = multiplier * taylor ∧ total = taylor + ryan

def TemperatureDrop
    (current numerator denominator after decrease : Nat) : Prop :=
  current * numerator = after * denominator ∧ current = after + decrease

def ShirtCount
    (blue brown blueGiven brownGiven blueLeft brownLeft total : Nat) : Prop :=
  blue = 2 * blueGiven ∧ brown = 3 * brownGiven ∧
  blue = blueGiven + blueLeft ∧ brown = brownGiven + brownLeft ∧
  total = blueLeft + brownLeft

end LemmaWeave.Problems.GSM8K.Sprint0920A13
