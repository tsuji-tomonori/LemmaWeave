import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A18

structure AppleAverage where
  jim : ℕ
  total : ℕ
  average : ℕ
  fits : ℕ
  hJim : jim = 20
  hTotal : total = 20 + 60 + 40
  hAverage : total = 3 * average
  hFits : average = jim * fits
theorem apple_total (m : AppleAverage) : m.total = 120 := by
  have h := m.hTotal
  omega
theorem apple_average (m : AppleAverage) : m.average = 40 := by
  have h1 := m.hTotal
  have h2 := m.hAverage
  omega
theorem apple_solution (m : AppleAverage) : m.fits = 2 := by
  have h1 := m.hJim
  have h2 := m.hTotal
  have h3 := m.hAverage
  have h4 := m.hFits
  rw [h1] at h4
  omega

structure GameSales where
  zachary : ℕ
  jasonExtra : ℕ
  jason : ℕ
  ryan : ℕ
  total : ℕ
  hZachary : zachary = 40 * 5
  hExtra : 10 * jasonExtra = 3 * zachary
  hJason : jason = zachary + jasonExtra
  hRyan : ryan = jason + 50
  hTotal : total = zachary + jason + ryan
theorem sales_zachary (m : GameSales) : m.zachary = 200 := by
  have h := m.hZachary
  omega
theorem sales_jason (m : GameSales) : m.jason = 260 := by
  have h1 := m.hZachary
  have h2 := m.hExtra
  have h3 := m.hJason
  omega
theorem sales_ryan (m : GameSales) : m.ryan = 310 := by
  have h1 := m.hZachary
  have h2 := m.hExtra
  have h3 := m.hJason
  have h4 := m.hRyan
  omega
theorem sales_solution (m : GameSales) : m.total = 770 := by
  have h1 := m.hZachary
  have h2 := m.hExtra
  have h3 := m.hJason
  have h4 := m.hRyan
  have h5 := m.hTotal
  omega

structure FarmAnimals where
  cows : ℕ
  goats : ℕ
  total : ℕ
  hCows : cows + 3 = 2 * 10
  hGoats : goats = cows + 6
  hTotal : total = 10 + cows + goats
theorem farm_cows (m : FarmAnimals) : m.cows = 17 := by
  have h := m.hCows
  omega
theorem farm_goats (m : FarmAnimals) : m.goats = 23 := by
  have h1 := m.hCows
  have h2 := m.hGoats
  omega
theorem farm_solution (m : FarmAnimals) : m.total = 50 := by
  have h1 := m.hCows
  have h2 := m.hGoats
  have h3 := m.hTotal
  omega

structure TelevisionSearch where
  onlineStore : ℕ
  auction : ℕ
  hOnline : onlineStore = 3 * 8
  hTotal : 8 + onlineStore + auction = 42
theorem televisions_online (m : TelevisionSearch) : m.onlineStore = 24 := by
  have h := m.hOnline
  omega
theorem televisions_solution (m : TelevisionSearch) : m.auction = 10 := by
  have h1 := m.hOnline
  have h2 := m.hTotal
  omega

structure PeopleCount where
  firstDay : ℕ
  total : ℕ
  hFirst : firstDay = 2 * 500
  hTotal : total = firstDay + 500
theorem people_first (m : PeopleCount) : m.firstDay = 1000 := by
  have h := m.hFirst
  omega
theorem people_solution (m : PeopleCount) : m.total = 1500 := by
  have h1 := m.hFirst
  have h2 := m.hTotal
  omega

structure StormRain where
  secondDay : ℕ
  thirdDay : ℕ
  hSecond : secondDay = 5 * 4
  hThird : thirdDay + 6 = 4 + secondDay
theorem rain_second (m : StormRain) : m.secondDay = 20 := by
  have h := m.hSecond
  omega
theorem rain_solution (m : StormRain) : m.thirdDay = 18 := by
  have h1 := m.hSecond
  have h2 := m.hThird
  omega

structure HousePizza where
  eaters : ℕ
  eaten : ℕ
  remaining : ℕ
  hEaters : 5 * eaters = 3 * 15
  hEaten : eaten = 4 * eaters
  hRemaining : eaten + remaining = 50
theorem house_eaters (m : HousePizza) : m.eaters = 9 := by
  have h := m.hEaters
  omega
theorem house_eaten (m : HousePizza) : m.eaten = 36 := by
  have h1 := m.hEaters
  have h2 := m.hEaten
  omega
theorem house_solution (m : HousePizza) : m.remaining = 14 := by
  have h1 := m.hEaters
  have h2 := m.hEaten
  have h3 := m.hRemaining
  omega

/-- The wording supports both a running-balance reading and increasing monthly deposits. -/
structure SavingsReadings where
  firstMonth : ℕ
  secondMonth : ℕ
  thirdMonth : ℕ
  balanceReading : ℕ
  depositTotal : ℕ
  hFirst : firstMonth = 10
  hSecond : secondMonth = firstMonth + 30
  hThird : thirdMonth = secondMonth + 30
  hBalance : balanceReading = firstMonth + 30 + 30
  hDeposits : depositTotal = firstMonth + secondMonth + thirdMonth
theorem savings_second (m : SavingsReadings) : m.secondMonth = 40 := by
  have h1 := m.hFirst
  have h2 := m.hSecond
  omega
theorem savings_third (m : SavingsReadings) : m.thirdMonth = 70 := by
  have h1 := m.hFirst
  have h2 := m.hSecond
  have h3 := m.hThird
  omega
theorem savings_balance_solution (m : SavingsReadings) : m.balanceReading = 70 := by
  have h1 := m.hFirst
  have h2 := m.hBalance
  omega
theorem savings_deposit_solution (m : SavingsReadings) : m.depositTotal = 120 := by
  have h1 := m.hFirst
  have h2 := m.hSecond
  have h3 := m.hThird
  have h4 := m.hDeposits
  omega
theorem savings_ambiguous (m : SavingsReadings) : m.balanceReading ≠ m.depositTotal := by
  have h1 := savings_balance_solution m
  have h2 := savings_deposit_solution m
  omega

structure DogToys where
  total : ℕ
  hTotal : total = 5 + 3 + 5
theorem toys_solution (m : DogToys) : m.total = 13 := by
  have h := m.hTotal
  omega

structure CoinPayments where
  jason : ℕ
  total : ℕ
  hJason : jason = 300 + 60
  hTotal : total = 300 + jason
theorem coins_jason (m : CoinPayments) : m.jason = 360 := by
  have h := m.hJason
  omega
theorem coins_solution (m : CoinPayments) : m.total = 660 := by
  have h1 := m.hJason
  have h2 := m.hTotal
  omega

structure SweetShares where
  total : ℕ
  each : ℕ
  hTotal : total = 212 + 310 + 502
  hSplit : total = 4 * each
theorem sweets_total (m : SweetShares) : m.total = 1024 := by
  have h := m.hTotal
  omega
theorem sweets_solution (m : SweetShares) : m.each = 256 := by
  have h1 := m.hTotal
  have h2 := m.hSplit
  omega

structure TicketPrice where
  adultTotal : ℕ
  childTotal : ℕ
  childPrice : ℕ
  hAdults : adultTotal = 10 * 8
  hBill : adultTotal + childTotal = 124
  hChildren : childTotal = 11 * childPrice
theorem tickets_adults (m : TicketPrice) : m.adultTotal = 80 := by
  have h := m.hAdults
  omega
theorem tickets_children (m : TicketPrice) : m.childTotal = 44 := by
  have h1 := m.hAdults
  have h2 := m.hBill
  omega
theorem tickets_solution (m : TicketPrice) : m.childPrice = 4 := by
  have h1 := m.hAdults
  have h2 := m.hBill
  have h3 := m.hChildren
  omega

structure PizzaConsumption where
  pieces : ℕ
  pizzas : ℕ
  hPieces : pieces = 72 * 3
  hPizzas : pieces = 8 * pizzas
theorem consumption_pieces (m : PizzaConsumption) : m.pieces = 216 := by
  have h := m.hPieces
  omega
theorem consumption_solution (m : PizzaConsumption) : m.pizzas = 27 := by
  have h1 := m.hPieces
  have h2 := m.hPizzas
  omega

structure BowlingAverage where
  sum : ℕ
  average : ℕ
  hSum : sum = 120 + 113 + 85
  hAverage : sum = 3 * average
theorem bowling_sum (m : BowlingAverage) : m.sum = 318 := by
  have h := m.hSum
  omega
theorem bowling_solution (m : BowlingAverage) : m.average = 106 := by
  have h1 := m.hSum
  have h2 := m.hAverage
  omega

structure ArtifactSearch where
  firstMonths : ℕ
  secondMonths : ℕ
  totalMonths : ℕ
  years : ℕ
  hFirst : firstMonths = 6 + 24
  hSecond : secondMonths = 3 * firstMonths
  hTotal : totalMonths = firstMonths + secondMonths
  hYears : totalMonths = 12 * years
theorem artifacts_first (m : ArtifactSearch) : m.firstMonths = 30 := by
  have h := m.hFirst
  omega
theorem artifacts_second (m : ArtifactSearch) : m.secondMonths = 90 := by
  have h1 := m.hFirst
  have h2 := m.hSecond
  omega
theorem artifacts_months (m : ArtifactSearch) : m.totalMonths = 120 := by
  have h1 := m.hFirst
  have h2 := m.hSecond
  have h3 := m.hTotal
  omega
theorem artifacts_solution (m : ArtifactSearch) : m.years = 10 := by
  have h1 := m.hFirst
  have h2 := m.hSecond
  have h3 := m.hTotal
  have h4 := m.hYears
  omega

end LemmaWeave.Problems.GSM8K.Sprint0927A18
