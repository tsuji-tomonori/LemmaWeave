namespace LemmaWeave.Problems.GSM8K.Sprint0920A12

def BallGames
    (students basketball volleyball both union neither : Nat) : Prop :=
  basketball * 2 = students ∧ volleyball * 5 = students * 2 ∧
  both * 10 = students ∧ union + both = basketball + volleyball ∧
  students = union + neither

def PokemonCards
    (michael difference mark multiplier lloyd current goal needed : Nat) : Prop :=
  michael = mark + difference ∧ mark = multiplier * lloyd ∧
  current = michael + mark + lloyd ∧ goal = current + needed

def GrandchildGifts
    (grandchildren cardsPerYear dollarsPerCard perChild total : Nat) : Prop :=
  perChild = cardsPerYear * dollarsPerCard ∧ total = grandchildren * perChild

def TreadmillMiles
    (averageHalfHours minutesPerHour minutesPerMovie movies totalMinutes minutesPerMile miles : Nat) : Prop :=
  minutesPerMovie * 2 = averageHalfHours * minutesPerHour ∧
  totalMinutes = movies * minutesPerMovie ∧ totalMinutes = miles * minutesPerMile

def DonutFundraiser
    (donutsPerDozen costPerDozenCents salePriceCents revenuePerDozenCents profitPerDozenCents
      goalCents dozens : Nat) : Prop :=
  revenuePerDozenCents = donutsPerDozen * salePriceCents ∧
  revenuePerDozenCents = costPerDozenCents + profitPerDozenCents ∧
  goalCents = dozens * profitPerDozenCents

def DaisyCount
    (initial gift afterGift divisor remaining : Nat) : Prop :=
  afterGift = initial + gift ∧ remaining * divisor = afterGift

def AprilCoffee
    (coffeesPerDay pricePerCoffee dailyCost days total : Nat) : Prop :=
  dailyCost = coffeesPerDay * pricePerCoffee ∧ total = days * dailyCost

def DanceLessons
    (packClasses packCostCents averageCents extraNumerator extraDenominator extraPriceCents
      totalClasses extraClasses extraCostCents totalCostCents : Nat) : Prop :=
  averageCents * packClasses = packCostCents ∧
  extraPriceCents * extraDenominator = averageCents * extraNumerator ∧
  totalClasses = packClasses + extraClasses ∧ extraCostCents = extraClasses * extraPriceCents ∧
  totalCostCents = packCostCents + extraCostCents

def GuitarPractice
    (elapsedDays oldDays agoDays oldMultiplier targetMultiplier targetDays additionalDays : Nat) : Prop :=
  elapsedDays = oldDays + agoDays ∧ elapsedDays = oldMultiplier * oldDays ∧
  targetDays = targetMultiplier * elapsedDays ∧ targetDays = elapsedDays + additionalDays

def LibraryVisits
    (williamPerWeek multiplier weeks fourfoldPerWeek fourfoldTotal additivePerWeek additiveTotal : Nat) : Prop :=
  fourfoldPerWeek = multiplier * williamPerWeek ∧ fourfoldTotal = weeks * fourfoldPerWeek ∧
  additivePerWeek = williamPerWeek + multiplier * williamPerWeek ∧
  additiveTotal = weeks * additivePerWeek ∧ fourfoldTotal ≠ additiveTotal

end LemmaWeave.Problems.GSM8K.Sprint0920A12
