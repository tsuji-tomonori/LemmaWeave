namespace LemmaWeave.Problems.GSM8K.Sprint0919A20

def DogWalking (threeDays dogsPerRepeatedDay tuesday thursday dogsTotal rate earnings : Nat) : Prop :=
  threeDays = 3 ∧ dogsPerRepeatedDay = 7 ∧ tuesday = 12 ∧ thursday = 9 ∧
  dogsTotal = threeDays * dogsPerRepeatedDay + tuesday + thursday ∧
  rate = 5 ∧ earnings = rate * dogsTotal

def ParkRabbits (inCage added afterAdded fractionDenominator park : Nat) : Prop :=
  inCage = 13 ∧ added = 7 ∧ afterAdded = inCage + added ∧
  fractionDenominator = 3 ∧ park = fractionDenominator * afterAdded

def Seagulls (initial scaredDivisor scared afterScared movedDivisor moved remaining : Nat) : Prop :=
  initial = 36 ∧ scaredDivisor = 4 ∧ scared * scaredDivisor = initial ∧
  afterScared + scared = initial ∧ movedDivisor = 3 ∧ moved * movedDivisor = afterScared ∧
  remaining + moved = afterScared

/-- Reference reading: “two times heavier” means twice as heavy. -/
def CatsTwice (female multiplier male total : Nat) : Prop :=
  female = 2 ∧ multiplier = 2 ∧ male = multiplier * female ∧ total = female + male

/-- Literal additive reading: “two times heavier” means the original plus two extra originals. -/
def CatsLiteralMore (female multiplier male total : Nat) : Prop :=
  female = 2 ∧ multiplier = 3 ∧ male = multiplier * female ∧ total = female + male

/-- Volumes are measured in quarter-cups. -/
def LemonadePitcher
    (teaPerDrink lemonadePerDrink drinkVolume pitcherVolume drinks lemonadeTotal : Nat) : Prop :=
  teaPerDrink = 1 ∧ lemonadePerDrink = 5 ∧ drinkVolume = teaPerDrink + lemonadePerDrink ∧
  pitcherVolume = 72 ∧ drinks * drinkVolume = pitcherVolume ∧
  lemonadeTotal = drinks * lemonadePerDrink

end LemmaWeave.Problems.GSM8K.Sprint0919A20
