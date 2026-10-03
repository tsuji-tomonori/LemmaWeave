namespace LemmaWeave.Problems.GSM8K.Sprint0920A02

/-- The healing time is only lower-bounded by the wording “at least”. -/
def InjuryRecovery (healed lifting : Nat) : Prop :=
  15 ≤ healed ∧ lifting = healed + 3 + 3 * 7

def TriangleHouses (oneArea houses totalArea : Nat) : Prop :=
  oneArea = 40 * 20 / 2 ∧ houses = 3 ∧ totalArea = houses * oneArea

def BusWindows (total dutch dutchAmerican windows : Nat) : Prop :=
  dutch * 5 = total * 3 ∧ dutchAmerican * 2 = dutch ∧
  windows * 3 = dutchAmerican

def BuildingFloors (leeward chrysler : Nat) : Prop :=
  chrysler = leeward + 11 ∧ leeward + chrysler = 35

def RectangleArea (width height perimeter area : Nat) : Prop :=
  width = 4 ∧ perimeter = 2 * (width + height) ∧ area = width * height

def PinataCandies (red yellow blue remaining : Nat) : Prop :=
  red = 40 ∧ yellow + 20 = 3 * red ∧ blue * 2 = yellow ∧
  remaining = red + blue

/--
Only Tuesday breakfast is specified.  The model compares Monday with the
known Tuesday intake through breakfast, not an unknown full Tuesday total.
-/
def SandwichKnownIntake
    (lunch dinner monday tuesdayBreakfast difference : Nat) : Prop :=
  lunch = 3 ∧ dinner = 2 * lunch ∧ monday = lunch + dinner ∧
  tuesdayBreakfast = 1 ∧ difference + tuesdayBreakfast = monday

/-- Sequential and fully parallel schedules are both retained. -/
def CookingSchedules
    (steaks steakMinutes waffleMinutes steakTotal sequential parallel : Nat) : Prop :=
  steaks = 3 ∧ steakMinutes = 6 ∧ waffleMinutes = 10 ∧
  steakTotal = steaks * steakMinutes ∧
  sequential = steakTotal + waffleMinutes ∧ parallel = steakTotal

/-- Amounts are represented in half-cups. -/
def DogFoodHalfCups (first second third total : Nat) : Prop :=
  first = 3 ∧ second = 2 * first ∧ third = second + 5 ∧
  total = first + second + third

def AppetizerDozens
    (guests perGuest needed madeDozens made missing missingDozens : Nat) : Prop :=
  guests = 30 ∧ perGuest = 6 ∧ needed = guests * perGuest ∧
  madeDozens = 3 + 2 + 2 ∧ made = madeDozens * 12 ∧
  missing + made = needed ∧ missing = missingDozens * 12

def FurnitureLegs
    (fourLegPieces fourLegs threeLegs oneLeg rocking total : Nat) : Prop :=
  fourLegPieces = 4 + 1 + 2 ∧ fourLegs = fourLegPieces * 4 ∧
  threeLegs = 3 * 3 ∧ oneLeg = 1 ∧ rocking = 2 ∧
  total = fourLegs + threeLegs + oneLeg + rocking

/-- Monetary amounts are represented in cents. -/
def DrinkChange
    (cappuccino tea latte espresso spent paid change : Nat) : Prop :=
  cappuccino = 3 * 200 ∧ tea = 2 * 300 ∧ latte = 2 * 150 ∧
  espresso = 2 * 100 ∧ spent = cappuccino + tea + latte + espresso ∧
  paid = 2000 ∧ change + spent = paid

def WeeklyIncome
    (income tax water tithe expenses left : Nat) : Prop :=
  income = 500 ∧ tax * 10 = income ∧ water = 55 ∧ tithe * 10 = income ∧
  expenses = tax + water + tithe ∧ left + expenses = income

/-- Seed is counted in half-cups, so two cups are four units. -/
def BirdFeederHalfCups
    (capacity stolen available birdsPerCup birds : Nat) : Prop :=
  capacity = 4 ∧ stolen = 1 ∧ available + stolen = capacity ∧
  birdsPerCup = 14 ∧ birds * 2 = available * birdsPerCup

def GoodieBagMinimum : Prop :=
  2 * 5 + 1 = 11 ∧ 2 * 3 + 1 = 7 ∧
  14 ≤ 3 * 5 ∧ 3 * 3 = 9 ∧
  (∀ packs singles : Nat, 11 ≤ 5 * packs + singles → 7 ≤ 3 * packs + singles) ∧
  (∀ packs singles : Nat, 14 ≤ 5 * packs + singles → 9 ≤ 3 * packs + singles) ∧
  7 + 9 = 16

end LemmaWeave.Problems.GSM8K.Sprint0920A02
