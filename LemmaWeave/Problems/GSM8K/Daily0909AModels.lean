import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0909A

def PetTotal (dogs cats nonFish fish total : ℕ) : Prop :=
  dogs = 2 ∧ cats = 3 ∧ nonFish = dogs + cats ∧
  fish = 2 * nonFish ∧ total = nonFish + fish

def JellyBeans (coconut red total : ℕ) : Prop :=
  coconut = 750 ∧ red = 4 * coconut ∧ 4 * red = 3 * total

def StampCount
    (cards bills rebates applications pieces stamps : ℕ) : Prop :=
  cards = 3 ∧ bills = 2 ∧ rebates = bills + 3 ∧
  applications = 2 * rebates ∧
  pieces = cards + bills + rebates + applications ∧ stamps = pieces + 1

def Aquarium
    (total clown blow blowDisplay clownJoined returned remaining : ℕ) : Prop :=
  total = 100 ∧ clown = blow ∧ total = clown + blow ∧
  blowDisplay = blow - 26 ∧ clownJoined = blowDisplay ∧
  3 * returned = clownJoined ∧ remaining = clownJoined - returned

def JugglingScenario
    (improvements start increment final : ℕ) : Prop :=
  start = 3 ∧ increment = 2 ∧ final = start + improvements * increment

def CupcakeCount
    (classes perClass fourthGrade physicalEducation total : ℕ) : Prop :=
  classes = 3 ∧ perClass = 30 ∧ fourthGrade = classes * perClass ∧
  physicalEducation = 50 ∧ total = fourthGrade + physicalEducation

def BikeSavings
    (weeks hourly hours weekly monthly bike left : ℕ) : Prop :=
  hourly = 8 ∧ hours = 35 ∧ weekly = hourly * hours ∧
  monthly = weeks * weekly ∧ bike = 400 ∧ left = monthly - bike

def TruckFill
    (firstRate firstFilled remaining totalPeople secondRate secondHours totalHours : ℕ) : Prop :=
  firstRate = 2 * 250 ∧ firstFilled = 4 * firstRate ∧
  remaining = 6000 - firstFilled ∧ totalPeople = 2 + 6 ∧
  secondRate = totalPeople * 250 ∧ remaining = secondHours * secondRate ∧
  totalHours = 4 + secondHours

def ConferenceAttendance
    (chairs seats empty occupied attended : ℕ) : Prop :=
  chairs = 40 ∧ seats = 2 ∧ 5 * empty = 2 * chairs ∧
  occupied = chairs - empty ∧ attended = occupied * seats

def CanPrice (bulkUnit groceryUnit difference : ℕ) : Prop :=
  48 * bulkUnit = 1200 ∧ 12 * groceryUnit = 600 ∧
  difference = groceryUnit - bulkUnit

end LemmaWeave.Problems.GSM8K.Daily0909A
