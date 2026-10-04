namespace LemmaWeave.Problems.GSM8K.Sprint0919A10

def GymWeights
    (blueCount blueEach blueTotal greenCount greenEach greenTotal bar total : Nat) : Prop :=
  blueCount = 4 ∧ blueEach = 2 ∧ blueTotal = blueCount * blueEach ∧
  greenCount = 5 ∧ greenEach = 3 ∧ greenTotal = greenCount * greenEach ∧
  bar = 2 ∧ total = blueTotal + greenTotal + bar

/-- Both the historical deposited amount and the amount remaining after removal are modeled. -/
def PondCoins
    (dimes dimeCents dimeTotal quarters quarterCents quarterTotal nickels nickelCents
      nickelTotal pennies pennyTotal deposited removed remaining : Nat) : Prop :=
  dimes = 5 ∧ dimeCents = 10 ∧ dimeTotal = dimes * dimeCents ∧
  quarters = 3 ∧ quarterCents = 25 ∧ quarterTotal = quarters * quarterCents ∧
  nickels = 8 ∧ nickelCents = 5 ∧ nickelTotal = nickels * nickelCents ∧
  pennies = 60 ∧ pennyTotal = pennies ∧
  deposited = dimeTotal + quarterTotal + nickelTotal + pennyTotal ∧
  removed = quarterCents ∧ remaining + removed = deposited

def AdoptedAnimals
    (anthonyTotal anthonyCats anthonyDogs leonelCats extraDogs leonelDogs total : Nat) : Prop :=
  anthonyTotal = 12 ∧ anthonyCats * 3 = anthonyTotal * 2 ∧
  anthonyDogs + anthonyCats = anthonyTotal ∧ leonelCats * 2 = anthonyCats ∧
  extraDogs = 7 ∧ leonelDogs = anthonyDogs + extraDogs ∧
  total = anthonyCats + anthonyDogs + leonelCats + leonelDogs

def BerryPicking
    (target dollarsPerPound mondayPounds tuesdayMultiplier tuesdayPounds wednesdayPounds
      earnedBeforeThursday dollarsNeeded thursdayPounds : Nat) : Prop :=
  target = 100 ∧ dollarsPerPound = 2 ∧ mondayPounds = 8 ∧ tuesdayMultiplier = 3 ∧
  tuesdayPounds = mondayPounds * tuesdayMultiplier ∧ wednesdayPounds = 0 ∧
  earnedBeforeThursday = (mondayPounds + tuesdayPounds + wednesdayPounds) * dollarsPerPound ∧
  dollarsNeeded + earnedBeforeThursday = target ∧ dollarsNeeded = thursdayPounds * dollarsPerPound

def ToySales (phones phonePrice bert guns gunPrice tory difference : Nat) : Prop :=
  phones = 8 ∧ phonePrice = 18 ∧ bert = phones * phonePrice ∧
  guns = 7 ∧ gunPrice = 20 ∧ tory = guns * gunPrice ∧ difference + tory = bert

end LemmaWeave.Problems.GSM8K.Sprint0919A10
