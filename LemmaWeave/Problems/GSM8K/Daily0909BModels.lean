import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0909B

def YarnBalls (first second third : ℕ) : Prop :=
  3 * first = third ∧ second = 2 * first ∧ third = 27

def AnnualGrowth (rate years current gained final : ℕ) : Prop :=
  rate = 3 ∧ years = 10 ∧ current = 20 ∧
  gained = rate * years ∧ final = current + gained

def Roommates (bob doubled john : ℕ) : Prop :=
  bob = 10 ∧ doubled = 2 * bob ∧ john = doubled + 5

def CatMeows
    (first second third perMinute minutes total : ℕ) : Prop :=
  first = 3 ∧ second = 2 * first ∧ 3 * third = second ∧
  perMinute = first + second + third ∧ minutes = 5 ∧
  total = minutes * perMinute

def HotelRooms
    (students beds perBed couch roomCapacity rooms : ℕ) : Prop :=
  students = 30 ∧ beds = 2 ∧ perBed = 2 ∧ couch = 1 ∧
  roomCapacity = beds * perBed + couch ∧ rooms * roomCapacity = students

def IceCreamCustomers
    (customers paid free price revenue : ℕ) : Prop :=
  price = 2 ∧ revenue = 100 ∧ free = customers / 6 ∧
  paid = customers - free ∧ paid * price = revenue

def Seashells
    (start afterFriends afterBrothers sold left : ℕ) : Prop :=
  start = 180 ∧ afterFriends = start - 40 ∧
  afterBrothers = afterFriends - 30 ∧ 2 * sold = afterBrothers ∧
  left = afterBrothers - sold

def PagesRead
    (chaptersBefore pagesPerChapter before partialPages laterChapters later total : ℕ) : Prop :=
  chaptersBefore = 10 ∧ pagesPerChapter = 40 ∧
  before = chaptersBefore * pagesPerChapter ∧ partialPages = 20 ∧
  laterChapters = 2 ∧ later = laterChapters * pagesPerChapter ∧
  total = before + partialPages + later

def BeefPurchase
    (packs poundsPerPack pounds centsPerPound totalCents totalDollars : ℕ) : Prop :=
  packs = 5 ∧ poundsPerPack = 4 ∧ pounds = packs * poundsPerPack ∧
  centsPerPound = 550 ∧ totalCents = pounds * centsPerPound ∧
  totalCents = 100 * totalDollars

def StudentLocations
    (students absent present classroom canteen : ℕ) : Prop :=
  students = 40 ∧ 10 * absent = students ∧ present = students - absent ∧
  4 * classroom = 3 * present ∧ canteen = present - classroom

end LemmaWeave.Problems.GSM8K.Daily0909B
