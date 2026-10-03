import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0908F

def BoatTransport
    (tripsPerDay capacity days perDay total : ℕ) : Prop :=
  tripsPerDay = 4 ∧ capacity = 12 ∧ days = 2 ∧
  perDay = tripsPerDay * capacity ∧ total = days * perDay

def GoatTotal (washington paddington total : ℕ) : Prop :=
  washington = 140 ∧ paddington = washington + 40 ∧
  total = washington + paddington

def UncommonCards (perPack total : ℕ) : Prop :=
  perPack = 20 / 4 ∧ total = 10 * perPack

def StreetTraffic
    (monday wednesday thursdayFriday weekend total : ℕ) : Prop :=
  monday = 25 - 25 * 20 / 100 ∧ wednesday = monday + 2 ∧
  thursdayFriday = 2 * 10 ∧ weekend = 2 * 5 ∧
  total = monday + 25 + wednesday + thursdayFriday + weekend

def PillCost
    (otherPills otherUnitCents dailyCents totalCents : ℕ) : Prop :=
  otherPills = 9 - 4 ∧ otherUnitCents = 150 + 550 ∧
  dailyCents = 4 * 150 + otherPills * otherUnitCents ∧
  totalCents = 14 * dailyCents

def NuggetShare (alyssa keely kendall total : ℕ) : Prop :=
  keely = 2 * alyssa ∧ kendall = 2 * alyssa ∧
  total = alyssa + keely + kendall ∧ total = 100

def CandyRevenue
    (tinaBars marvinRevenue tinaRevenue difference : ℕ) : Prop :=
  tinaBars = 3 * 35 ∧ marvinRevenue = 35 * 2 ∧
  tinaRevenue = tinaBars * 2 ∧ difference = tinaRevenue - marvinRevenue

def GroceryBalance (juice spent left : ℕ) : Prop :=
  juice = 2 * 2 ∧ spent = 2 + 3 + juice ∧ left = 15 - spent

def GalleryPhotos (firstDay secondDay tripPhotos total : ℕ) : Prop :=
  firstDay = 400 / 2 ∧ secondDay = firstDay + 120 ∧
  tripPhotos = firstDay + secondDay ∧ total = 400 + tripPhotos

def MarbleChange (lost afterLoss gift final : ℕ) : Prop :=
  lost = 25 * 20 / 100 ∧ afterLoss = 25 - lost ∧
  gift = 2 * afterLoss ∧ final = afterLoss + gift

end LemmaWeave.Problems.GSM8K.Daily0908F
