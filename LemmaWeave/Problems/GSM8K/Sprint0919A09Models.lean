namespace LemmaWeave.Problems.GSM8K.Sprint0919A09

def MoneyComparison (jessica ian extra rodney difference : Nat) : Prop :=
  jessica = 100 ∧ ian * 2 = jessica ∧ extra = 35 ∧ rodney = ian + extra ∧
  difference + rodney = jessica

def RoadTrip (total kati multiplier michelle extra tracy : Nat) : Prop :=
  total = 1000 ∧ multiplier = 3 ∧ michelle = kati * multiplier ∧ extra = 20 ∧
  tracy = michelle * 2 + extra ∧ total = kati + michelle + tracy

def CarSpeeds (blue greenFactor green redFactor red : Nat) : Prop :=
  blue = 80 ∧ greenFactor = 8 ∧ green = blue * greenFactor ∧ redFactor = 2 ∧
  red = green * redFactor

/-- Monetary amounts are in cents, except `shortfallDollars`. -/
def BottleShortfall
    (dozens perDozen bottles originalCents reducedCents giftCents proceedsCents
      shortfallCents shortfallDollars : Nat) : Prop :=
  dozens = 5 ∧ perDozen = 12 ∧ bottles = dozens * perDozen ∧
  originalCents = 200 ∧ reducedCents = 185 ∧ giftCents = bottles * originalCents ∧
  proceedsCents = bottles * reducedCents ∧ shortfallCents + proceedsCents = giftCents ∧
  shortfallCents = shortfallDollars * 100

def ChildCosts
    (firstYears firstRate firstCost nextYears nextRate nextCost tuition total johnPays : Nat) : Prop :=
  firstYears = 8 ∧ firstRate = 10000 ∧ firstCost = firstYears * firstRate ∧
  nextYears + firstYears = 18 ∧ nextRate = firstRate * 2 ∧
  nextCost = nextYears * nextRate ∧ tuition = 250000 ∧
  total = firstCost + nextCost + tuition ∧ johnPays * 2 = total

end LemmaWeave.Problems.GSM8K.Sprint0919A09
