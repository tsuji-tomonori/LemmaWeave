import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0911A

def AnniversaryGap
    (fourthYears monthsPerYear fourthMonth monthsUntilFourth currentMonth
     secondYears secondMonth monthsAgo : ℕ) : Prop :=
  fourthYears = 4 ∧ monthsPerYear = 12 ∧
  fourthMonth = fourthYears * monthsPerYear ∧ monthsUntilFourth = 6 ∧
  currentMonth + monthsUntilFourth = fourthMonth ∧ secondYears = 2 ∧
  secondMonth = secondYears * monthsPerYear ∧ currentMonth = secondMonth + monthsAgo

def ChurchMembers
    (total adultPercent percentBase adults children moreChildren : ℕ) : Prop :=
  total = 120 ∧ adultPercent = 40 ∧ percentBase = 100 ∧
  percentBase * adults = adultPercent * total ∧
  total = adults + children ∧ children = adults + moreChildren

/-- 2年目以降は、直前の年に入れた金額の2倍を入れる。 -/
def PiggyBank
    (year1 year2 year3 year4 total : ℕ) : Prop :=
  year2 = 2 * year1 ∧ year3 = 2 * year2 ∧ year4 = 2 * year3 ∧
  total = 450 ∧ total = year1 + year2 + year3 + year4

def FutureAges (maude emile anne : ℕ) : Prop :=
  maude = 8 ∧ emile = 6 * maude ∧ anne = 2 * emile

def CoinValue
    (nickels quarters dimes nickelCents quarterCents dimeCents
     nickelValue quarterValue dimeValue totalCents : ℕ) : Prop :=
  nickels = 6 ∧ quarters = nickels + 2 ∧ dimes = quarters + 4 ∧
  nickelCents = 5 ∧ quarterCents = 25 ∧ dimeCents = 10 ∧
  nickelValue = nickels * nickelCents ∧ quarterValue = quarters * quarterCents ∧
  dimeValue = dimes * dimeCents ∧
  totalCents = nickelValue + quarterValue + dimeValue

def HotdogPace
    (totalMinutes elapsedMinutes remainingMinutes record eaten needed rate : ℕ) : Prop :=
  totalMinutes = 10 ∧ 2 * elapsedMinutes = totalMinutes ∧
  remainingMinutes + elapsedMinutes = totalMinutes ∧ record = 75 ∧ eaten = 20 ∧
  record = eaten + needed ∧ needed = rate * remainingMinutes

/-- 400マイル当たり20ガロンという一定の燃費を、全行程にも比例適用する。 -/
def RoundTripGas
    (baseGallons baseMiles oneWay totalMiles requiredGallons inTank additional : ℕ) : Prop :=
  baseGallons = 20 ∧ baseMiles = 400 ∧ oneWay = 600 ∧
  totalMiles = 2 * oneWay ∧
  baseMiles * requiredGallons = baseGallons * totalMiles ∧
  inTank = 8 ∧ requiredGallons = inTank + additional

def JogDistance
    (milesPerHour hoursPerDay milesPerDay days totalMiles : ℕ) : Prop :=
  milesPerHour = 5 ∧ hoursPerDay = 2 ∧
  milesPerDay = milesPerHour * hoursPerDay ∧ days = 5 ∧
  totalMiles = milesPerDay * days

def ReadingPages
    (total read remaining days pagesPerDay : ℕ) : Prop :=
  total = 408 ∧ read = 113 ∧ total = read + remaining ∧ days = 5 ∧
  remaining = pagesPerDay * days

/-- 「two sandwiches for $3」を、2個合わせた価格が3ドルであると読むモデル。 -/
def SnackCosts
    (soda hamburgerCount hamburgerEach andyTotal sandwichBundle
     fruitDrink bobTotal : ℕ) : Prop :=
  soda = 1 ∧ hamburgerCount = 2 ∧ hamburgerEach = 2 ∧
  andyTotal = soda + hamburgerCount * hamburgerEach ∧ sandwichBundle = 3 ∧
  bobTotal = sandwichBundle + fruitDrink ∧ bobTotal = andyTotal

end LemmaWeave.Problems.GSM8K.Daily0911A
