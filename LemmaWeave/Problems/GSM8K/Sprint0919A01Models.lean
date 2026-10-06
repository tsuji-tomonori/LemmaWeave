namespace LemmaWeave.Problems.GSM8K.Sprint0919A01

def LibraryBooks (initial checkedOut returned afterMonday current : Nat) : Prop :=
  initial = 336 ∧ checkedOut = 124 ∧ afterMonday + checkedOut = initial ∧
  returned = 22 ∧ current = afterMonday + returned

/-- Money is represented in cents; fuel economy is in miles per gallon. -/
def ErrandFuel
    (toStore toSchool toPractice homeMultiplier homeLeg totalMiles mpg gallons
      centsPerGallon totalCents : Nat) : Prop :=
  toStore = 8 ∧ toSchool = 6 ∧ toPractice = 12 ∧ homeMultiplier = 2 ∧
  homeLeg = homeMultiplier * toPractice ∧
  totalMiles = toStore + toSchool + toPractice + homeLeg ∧
  mpg = 25 ∧ totalMiles = mpg * gallons ∧ centsPerGallon = 250 ∧
  totalCents = gallons * centsPerGallon

def JournalPages
    (mondayMinutes mondayMinutesPerPage mondayPages tuesdayMinutes
      tuesdayMinutesPerPage tuesdayPages wednesdayPages totalPages : Nat) : Prop :=
  mondayMinutes = 60 ∧ mondayMinutesPerPage = 30 ∧
  mondayMinutes = mondayMinutesPerPage * mondayPages ∧
  tuesdayMinutes = 45 ∧ tuesdayMinutesPerPage = 15 ∧
  tuesdayMinutes = tuesdayMinutesPerPage * tuesdayPages ∧
  wednesdayPages = 5 ∧ totalPages = mondayPages + tuesdayPages + wednesdayPages

def SaladCalories
    (lettuce cucumber croutonCount perCrouton croutonCalories totalCalories : Nat) : Prop :=
  lettuce = 30 ∧ cucumber = 80 ∧ croutonCount = 12 ∧ perCrouton = 20 ∧
  croutonCalories = croutonCount * perCrouton ∧
  totalCalories = lettuce + cucumber + croutonCalories

def VehiclePurchase
    (dirtCount dirtPrice dirtCost offroadCount offroadPrice offroadCost vehicleCount
      registrationEach registrationCost totalCost : Nat) : Prop :=
  dirtCount = 3 ∧ dirtPrice = 150 ∧ dirtCost = dirtCount * dirtPrice ∧
  offroadCount = 4 ∧ offroadPrice = 300 ∧ offroadCost = offroadCount * offroadPrice ∧
  vehicleCount = dirtCount + offroadCount ∧ registrationEach = 25 ∧
  registrationCost = vehicleCount * registrationEach ∧
  totalCost = dirtCost + offroadCost + registrationCost

end LemmaWeave.Problems.GSM8K.Sprint0919A01
