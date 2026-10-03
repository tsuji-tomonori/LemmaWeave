import Mathlib.Algebra.Order.Field.Rat

namespace LemmaWeave.Problems.GSM8K.Daily0915D

def RiceLiteral
    (start morning remaining eveningFraction evening left gramsPerKg grams : ℚ) : Prop :=
  start = 10 ∧ morning = 9 / 10 ∧ remaining = start - morning ∧
  eveningFraction = 1 / 4 ∧ evening = remaining * eveningFraction ∧
  left = remaining - evening ∧ gramsPerKg = 1000 ∧ grams = left * gramsPerKg

def RiceWholeFraction
    (start morningFraction remaining eveningFraction left gramsPerKg grams : ℚ) : Prop :=
  start = 10 ∧ morningFraction = 9 / 10 ∧
  remaining = start * (1 - morningFraction) ∧ eveningFraction = 1 / 4 ∧
  left = remaining * (1 - eveningFraction) ∧ gramsPerKg = 1000 ∧
  grams = left * gramsPerKg

def PoolTie (calvin paisleeNumerator denominator paislee needed : Nat) : Prop :=
  calvin = 500 ∧ paisleeNumerator = 3 ∧ denominator = 4 ∧
  denominator * paislee = paisleeNumerator * calvin ∧ paislee + needed = calvin

def SchoolStudents (middle multiplier offset elementary total : Nat) : Prop :=
  middle = 50 ∧ multiplier = 4 ∧ offset = 3 ∧
  elementary + offset = multiplier * middle ∧ total = elementary + middle

def PiggyBank
    (saved family current years monthsPerYear months monthly future total : Nat) : Prop :=
  saved = 3000 ∧ family = 7000 ∧ current = saved + family ∧ years = 4 ∧
  monthsPerYear = 12 ∧ months = years * monthsPerYear ∧ monthly = 276 ∧
  future = monthly * months ∧ total = current + future

def FrogEggs (dayOne dayTwo extra dayThree firstThree dayFour total : Nat) : Prop :=
  dayOne = 50 ∧ dayTwo = 2 * dayOne ∧ extra = 20 ∧
  dayThree = dayTwo + extra ∧ firstThree = dayOne + dayTwo + dayThree ∧
  dayFour = 2 * firstThree ∧ total = firstThree + dayFour

def LibraryBooks
    (all englishPercent percentBase english domesticPercent domestic outside : Nat) : Prop :=
  all = 2300 ∧ englishPercent = 80 ∧ percentBase = 100 ∧
  percentBase * english = englishPercent * all ∧ domesticPercent = 60 ∧
  percentBase * domestic = domesticPercent * english ∧ domestic + outside = english

def FruitBag
    (pears apples pineapples plums known total remaining : Nat) : Prop :=
  pears = 6 ∧ apples = 4 ∧ pineapples = 2 ∧
  known = pears + apples + pineapples ∧ total = known + plums ∧
  remaining = 9 ∧ total = 2 * remaining

def HouseholdLegs
    (javier wife children humans humanLegs dogs cats pets petLegs total : Nat) : Prop :=
  javier = 1 ∧ wife = 1 ∧ children = 3 ∧ humans = javier + wife + children ∧
  humanLegs = 2 * humans ∧ dogs = 2 ∧ cats = 1 ∧ pets = dogs + cats ∧
  petLegs = 4 * pets ∧ total = humanLegs + petLegs

def BookProfit
    (price cost profitPerBook totalProfit books booksPerCustomer customers : Nat) : Prop :=
  price = 20 ∧ cost = 5 ∧ profitPerBook + cost = price ∧ totalProfit = 120 ∧
  profitPerBook * books = totalProfit ∧ booksPerCustomer = 2 ∧
  books = booksPerCustomer * customers

def PaintingRevenue
    (largePrice smallPrice largeCount smallCount largeRevenue smallRevenue total : Nat) : Prop :=
  largePrice = 100 ∧ smallPrice = 80 ∧ largeCount = 5 ∧ smallCount = 8 ∧
  largeRevenue = largeCount * largePrice ∧ smallRevenue = smallCount * smallPrice ∧
  total = largeRevenue + smallRevenue

end LemmaWeave.Problems.GSM8K.Daily0915D
