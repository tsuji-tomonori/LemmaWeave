namespace LemmaWeave.Problems.GSM8K.Sprint0921A10

def RopePieces
    (total pieceCount small knotLoss shortened tied combined : Nat) : Prop :=
  total = small * pieceCount ∧ small = shortened + knotLoss ∧ combined = shortened * tied

def LibraryBooks (before lastYear multiplier thisYear current : Nat) : Prop :=
  thisYear = lastYear * multiplier ∧ current = before + lastYear + thisYear

/-- “four times older” is kept as both 4x as old and 4x older (5x as old). -/
def WineAgeAmbiguity
    (carlo franzia referenceTwin additiveTwin referenceTotal additiveTotal : Nat) : Prop :=
  franzia = carlo * 3 ∧ referenceTwin * 4 = carlo ∧ additiveTwin * 5 = carlo ∧
  referenceTotal = franzia + carlo + referenceTwin ∧
  additiveTotal = franzia + carlo + additiveTwin ∧ referenceTotal ≠ additiveTotal

def BraceletBeads (friends perBracelet needed have more : Nat) : Prop :=
  needed = friends * perBracelet ∧ needed = have + more

def WalletRemainder (initial numerator denominator spent remaining : Nat) : Prop :=
  spent * denominator = initial * numerator ∧ initial = spent + remaining

def BookshelfCapacity (room reserved usable each shelves : Nat) : Prop :=
  room = reserved + usable ∧ usable = shelves * each

def LivingRoomCleaning
    (pickup vacuum windows dust weekly weeks total : Nat) : Prop :=
  weekly = pickup + vacuum + windows + dust ∧ total = weeks * weekly

def NutPurchase (ageSum doug betty priceMultiplier packPrice packs total : Nat) : Prop :=
  ageSum = doug + betty ∧ packPrice = betty * priceMultiplier ∧ total = packs * packPrice

/-- Monetary values are cents. The difference is an exact whole-dollar amount. -/
def ApartmentCosts
    (rent1 utilities1 miles1 rent2 utilities2 miles2 days centsPerMile
      drive1 total1 drive2 total2 differenceCents differenceDollars : Nat) : Prop :=
  drive1 = miles1 * days * centsPerMile ∧ total1 = rent1 + utilities1 + drive1 ∧
  drive2 = miles2 * days * centsPerMile ∧ total2 = rent2 + utilities2 + drive2 ∧
  total1 = total2 + differenceCents ∧ differenceCents = differenceDollars * 100

/-- Monetary values are cents. -/
def InitialMoney (firstSpend secondSpend spent left initial : Nat) : Prop :=
  spent = firstSpend + secondSpend ∧ initial = spent + left

/--
The wording about “8 more solar systems for every planet” is non-unique.
The reference reading uses 1 + 8 systems per planet; a global comparative
reading uses 8 more systems than planets.
-/
def SolarSystemAmbiguity
    (planets extra referencePerPlanet referenceSystems referenceTotal
      globalSystems globalTotal : Nat) : Prop :=
  referencePerPlanet = 1 + extra ∧ referenceSystems = planets * referencePerPlanet ∧
  referenceTotal = referenceSystems + planets ∧ globalSystems = planets + extra ∧
  globalTotal = globalSystems + planets ∧ referenceTotal ≠ globalTotal

def GraveyardBones
    (skeletons women remaining men children womanBones manExtra manBones childBones
      womenTotal menTotal childrenTotal total : Nat) : Prop :=
  skeletons = women * 2 ∧ skeletons = women + remaining ∧ remaining = men + children ∧
  men = children ∧ manBones = womanBones + manExtra ∧ womanBones = childBones * 2 ∧
  womenTotal = women * womanBones ∧ menTotal = men * manBones ∧
  childrenTotal = children * childBones ∧ total = womenTotal + menTotal + childrenTotal

def JumpRope
    (perMinute minutes perSession sessionsPerDay days sessions total : Nat) : Prop :=
  perSession = perMinute * minutes ∧ sessions = sessionsPerDay * days ∧
  total = perSession * sessions

def Seashells (day1 day2 firstTwo multiplier day3 total : Nat) : Prop :=
  firstTwo = day1 + day2 ∧ day3 = firstTwo * multiplier ∧ total = firstTwo + day3

def BabyAges
    (lioness hyena lionBaby hyenaBaby years lionFuture hyenaFuture totalFuture : Nat) : Prop :=
  lioness = hyena * 2 ∧ lioness = lionBaby * 2 ∧ hyena = hyenaBaby * 2 ∧
  lionFuture = lionBaby + years ∧ hyenaFuture = hyenaBaby + years ∧
  totalFuture = lionFuture + hyenaFuture

end LemmaWeave.Problems.GSM8K.Sprint0921A10
