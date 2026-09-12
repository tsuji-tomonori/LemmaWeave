import Mathlib.Data.Nat.Basic

namespace LemmaWeave.Problems.GSM8K.Daily0910D

def GiftCost
    (shirts shirtPrice shirtCost necklaces necklacePrice necklaceCost game subtotal rebate total : ℕ) : Prop :=
  shirts = 3 ∧ shirtPrice = 26 ∧ shirtCost = shirts * shirtPrice ∧
  necklaces = 2 ∧ necklacePrice = 83 ∧ necklaceCost = necklaces * necklacePrice ∧
  game = 90 ∧ subtotal = shirtCost + necklaceCost + game ∧ rebate = 12 ∧
  total = subtotal - rebate

def PartyChange
    (drinkBoxes drinkPrice drinkCost pizzaBoxes pizzaPrice pizzaCost spent paid change : ℕ) : Prop :=
  drinkBoxes = 5 ∧ drinkPrice = 6 ∧ drinkCost = drinkBoxes * drinkPrice ∧
  pizzaBoxes = 10 ∧ pizzaPrice = 14 ∧ pizzaCost = pizzaBoxes * pizzaPrice ∧
  spent = drinkCost + pizzaCost ∧ paid = 200 ∧ change = paid - spent

def HerbertAge (krisNow youngerBy herbertNow yearsLater herbertLater : ℕ) : Prop :=
  krisNow = 24 ∧ youngerBy = 10 ∧ herbertNow = krisNow - youngerBy ∧
  yearsLater = 1 ∧ herbertLater = herbertNow + yearsLater

/-- ロール数の半分を整数のまま扱うため、各グループの消費数を2倍した式で表す。 -/
def DinnerRolls
    (people halfPeople available firstTwice firstEaten secondTwice secondEaten eaten left : ℕ) : Prop :=
  people = 16 ∧ 2 * halfPeople = people ∧ available = 40 ∧
  firstTwice = 3 * halfPeople ∧ 2 * firstEaten = firstTwice ∧
  secondTwice = halfPeople ∧ 2 * secondEaten = secondTwice ∧
  eaten = firstEaten + secondEaten ∧ left = available - eaten

/-- 時速と分の換算は `speed * minutes = miles * 60` で表す。 -/
def WeeklyRun
    (speed minutesPerHour monMinutes tueMinutes wedMinutes thuMinutes
     monMiles tueMiles wedMiles thuMiles milesSoFar goal milesNeeded friMinutes : ℕ) : Prop :=
  speed = 6 ∧ minutesPerHour = 60 ∧
  monMinutes = 60 ∧ speed * monMinutes = monMiles * minutesPerHour ∧
  tueMinutes = 30 ∧ speed * tueMinutes = tueMiles * minutesPerHour ∧
  wedMinutes = 60 ∧ speed * wedMinutes = wedMiles * minutesPerHour ∧
  thuMinutes = 20 ∧ speed * thuMinutes = thuMiles * minutesPerHour ∧
  milesSoFar = monMiles + tueMiles + wedMiles + thuMiles ∧
  goal = 20 ∧ milesNeeded = goal - milesSoFar ∧
  speed * friMinutes = milesNeeded * minutesPerHour

def CarRepayment
    (loan monthsPerYear fastYears fastMonths fastMonthly slowYears slowMonths slowMonthly extra : ℕ) : Prop :=
  loan = 6000 ∧ monthsPerYear = 12 ∧
  fastYears = 2 ∧ fastMonths = fastYears * monthsPerYear ∧
  fastMonthly * fastMonths = loan ∧
  slowYears = 5 ∧ slowMonths = slowYears * monthsPerYear ∧
  slowMonthly * slowMonths = loan ∧ extra = fastMonthly - slowMonthly

def PortraitEarnings
    (smallPrice largeMultiplier largePrice smallCount smallDaily largeCount largeDaily daily days total : ℕ) : Prop :=
  smallPrice = 5 ∧ largeMultiplier = 2 ∧ largePrice = largeMultiplier * smallPrice ∧
  smallCount = 3 ∧ smallDaily = smallCount * smallPrice ∧
  largeCount = 5 ∧ largeDaily = largeCount * largePrice ∧
  daily = smallDaily + largeDaily ∧ days = 3 ∧ total = days * daily

def AppleWeeklyAverage
    (daysPerWeek firstWeeks firstDays firstApples nextApples lastWeeks lastDays lastRate
     lastApples totalWeeks totalApples average : ℕ) : Prop :=
  daysPerWeek = 7 ∧ firstWeeks = 2 ∧ firstDays = firstWeeks * daysPerWeek ∧
  firstApples = firstDays ∧ nextApples = firstApples ∧
  lastWeeks = 2 ∧ lastDays = lastWeeks * daysPerWeek ∧ lastRate = 3 ∧
  lastApples = lastDays * lastRate ∧ totalWeeks = 7 ∧
  totalApples = firstApples + nextApples + lastApples ∧ average * totalWeeks = totalApples

def PiggyBank
    (initial percent percentBase increase total : ℕ) : Prop :=
  initial = 200 ∧ percent = 20 ∧ percentBase = 100 ∧
  percentBase * increase = percent * initial ∧ total = initial + increase

def CandyBarPrice
    (drinks drinkPrice drinkCost paid candyTotal candyBars candyPrice : ℕ) : Prop :=
  drinks = 2 ∧ drinkPrice = 4 ∧ drinkCost = drinks * drinkPrice ∧
  paid = 28 ∧ candyTotal = paid - drinkCost ∧ candyBars = 5 ∧
  candyPrice * candyBars = candyTotal

end LemmaWeave.Problems.GSM8K.Daily0910D
