namespace LemmaWeave.Problems.GSM8K.Sprint0919A08

def MonthlyBudget
    (house food combined phone total : Nat) : Prop :=
  food * 100 = house * 60 ∧ house + food = combined ∧ combined = 240 ∧
  phone * 100 = food * 10 ∧ total = combined + phone

/-- Monetary values are represented in cents until the final whole-dollar conversion. -/
def EraserRevenue
    (boxes perBox erasers centsPerEraser revenueCents revenueDollars : Nat) : Prop :=
  boxes = 48 ∧ perBox = 24 ∧ erasers = boxes * perBox ∧ centsPerEraser = 75 ∧
  revenueCents = erasers * centsPerEraser ∧ revenueCents = revenueDollars * 100

def FamilyAges
    (betty retainedPercent daughter granddaughter : Nat) : Prop :=
  betty = 60 ∧ retainedPercent = 60 ∧ daughter * 100 = betty * retainedPercent ∧
  granddaughter * 3 = daughter

/-- Food amounts are counted in half-cups so every intermediate quantity is natural. -/
def FosterDogFood
    (momHalfCupsPerMeal momMealsPerDay days momTotalHalfCups
      puppyHalfCupsPerMeal puppyMealsPerDay puppies puppyTotalHalfCups
      totalHalfCups totalCups : Nat) : Prop :=
  momHalfCupsPerMeal = 3 ∧ momMealsPerDay = 3 ∧ days = 6 ∧
  momTotalHalfCups = momHalfCupsPerMeal * momMealsPerDay * days ∧
  puppyHalfCupsPerMeal = 1 ∧ puppyMealsPerDay = 2 ∧ puppies = 5 ∧
  puppyTotalHalfCups = puppyHalfCupsPerMeal * puppyMealsPerDay * puppies * days ∧
  totalHalfCups = momTotalHalfCups + puppyTotalHalfCups ∧ totalHalfCups = totalCups * 2

def CoasterRuns
    (people cars seatsPerCar capacity runs : Nat) : Prop :=
  people = 84 ∧ cars = 7 ∧ seatsPerCar = 2 ∧ capacity = cars * seatsPerCar ∧
  people = runs * capacity

end LemmaWeave.Problems.GSM8K.Sprint0919A08
