import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A19

structure WeeklyCalories where
  saturday weeklyConsumed weeklyBurned deficit : ℕ
  hSaturday : saturday = 2500 + 1000
  hConsumed : weeklyConsumed = 6 * 2500 + saturday
  hBurned : weeklyBurned = 7 * 3000
  hDeficit : weeklyConsumed + deficit = weeklyBurned
theorem calories_saturday (m : WeeklyCalories) : m.saturday = 3500 := by cases m <;> omega
theorem calories_consumed (m : WeeklyCalories) : m.weeklyConsumed = 18500 := by cases m <;> omega
theorem calories_burned (m : WeeklyCalories) : m.weeklyBurned = 21000 := by cases m <;> omega
theorem calories_solution (m : WeeklyCalories) : m.deficit = 2500 := by cases m <;> omega

structure FanEnergy where
  dailyWh monthlyWh monthlyKWh : ℕ
  hDaily : dailyWh = 75 * 8
  hMonthly : monthlyWh = 30 * dailyWh
  hKWh : monthlyWh = 1000 * monthlyKWh
theorem fan_daily (m : FanEnergy) : m.dailyWh = 600 := by cases m <;> omega
theorem fan_monthly_wh (m : FanEnergy) : m.monthlyWh = 18000 := by cases m <;> omega
theorem fan_solution (m : FanEnergy) : m.monthlyKWh = 18 := by cases m <;> omega

structure Magazines where
  sunday beforeDog now : ℕ
  hSunday : sunday = 4 * 8
  hBefore : beforeDog = 8 + 12 + sunday
  hNow : now + 4 = beforeDog
theorem magazines_sunday (m : Magazines) : m.sunday = 32 := by cases m <;> omega
theorem magazines_before (m : Magazines) : m.beforeDog = 52 := by cases m <;> omega
theorem magazines_solution (m : Magazines) : m.now = 48 := by cases m <;> omega

structure StateFair where
  attendees foodBuyers foodRevenue rideBuyers rideRevenue souvenirBuyers souvenirRevenue total : ℕ
  hTickets : 5 * attendees = 2520
  hFoodBuyers : 3 * foodBuyers = 2 * attendees
  hFoodRevenue : foodRevenue = 8 * foodBuyers
  hRideBuyers : 4 * rideBuyers = attendees
  hRideRevenue : rideRevenue = 4 * rideBuyers
  hSouvenirBuyers : 8 * souvenirBuyers = attendees
  hSouvenirRevenue : souvenirRevenue = 15 * souvenirBuyers
  hTotal : total = 2520 + foodRevenue + rideRevenue + souvenirRevenue
theorem fair_attendees (m : StateFair) : m.attendees = 504 := by cases m <;> omega
theorem fair_food (m : StateFair) : m.foodRevenue = 2688 := by cases m <;> omega
theorem fair_rides (m : StateFair) : m.rideRevenue = 504 := by cases m <;> omega
theorem fair_souvenirs (m : StateFair) : m.souvenirRevenue = 945 := by cases m <;> omega
theorem fair_solution (m : StateFair) : m.total = 6657 := by cases m <;> omega

structure CabinDeposit where
  days rent subtotal service total deposit : ℕ
  hDays : days = 2 * 7
  hRent : rent = 125 * days
  hSubtotal : subtotal = rent + 100
  hService : 5 * service = subtotal
  hTotal : total = subtotal + service
  hDeposit : 2 * deposit = total
theorem cabin_days (m : CabinDeposit) : m.days = 14 := by cases m <;> omega
theorem cabin_rent (m : CabinDeposit) : m.rent = 1750 := by cases m <;> omega
theorem cabin_service (m : CabinDeposit) : m.service = 370 := by cases m <;> omega
theorem cabin_total (m : CabinDeposit) : m.total = 2220 := by cases m <;> omega
theorem cabin_solution (m : CabinDeposit) : m.deposit = 1110 := by cases m <;> omega

structure FishingWeights where
  peter ali joey total : ℕ
  hAli : ali = 2 * peter
  hJoey : joey = peter + 1
  hTotal : total = peter + ali + joey
  hTwentyFive : total = 25
theorem weights_peter (m : FishingWeights) : m.peter = 6 := by cases m <;> omega
theorem weights_joey (m : FishingWeights) : m.joey = 7 := by cases m <;> omega
theorem weights_solution (m : FishingWeights) : m.ali = 12 := by cases m <;> omega

structure TreePlanting where
  monday tuesday total : ℕ
  hMonday : 30 + monday = 3 * 30
  hTuesday : 3 * tuesday = monday
  hTotal : total = monday + tuesday
theorem trees_monday (m : TreePlanting) : m.monday = 60 := by cases m <;> omega
theorem trees_tuesday (m : TreePlanting) : m.tuesday = 20 := by cases m <;> omega
theorem trees_solution (m : TreePlanting) : m.total = 80 := by cases m <;> omega

structure Pens where
  blue black red total : ℕ
  hBlue : blue = 2
  hBlack : black = 2 * blue
  hRed : red + 2 = 2 * black
  hTotal : total = blue + black + red
theorem pens_black (m : Pens) : m.black = 4 := by cases m <;> omega
theorem pens_red (m : Pens) : m.red = 6 := by cases m <;> omega
theorem pens_solution (m : Pens) : m.total = 12 := by cases m <;> omega

structure TeachingYears where
  calculus algebra statistics total : ℕ
  hCalculus : calculus = 4
  hAlgebra : algebra = 2 * calculus
  hStatistics : statistics = 5 * algebra
  hTotal : total = calculus + algebra + statistics
theorem years_algebra (m : TeachingYears) : m.algebra = 8 := by cases m <;> omega
theorem years_statistics (m : TeachingYears) : m.statistics = 40 := by cases m <;> omega
theorem years_solution (m : TeachingYears) : m.total = 52 := by cases m <;> omega

structure SamuelApples where
  bought eaten pie left : ℕ
  hBought : bought = 8 + 20
  hEaten : 2 * eaten = bought
  hPie : 7 * pie = bought
  hLeft : left + eaten + pie = bought
theorem samuel_bought (m : SamuelApples) : m.bought = 28 := by cases m <;> omega
theorem samuel_eaten (m : SamuelApples) : m.eaten = 14 := by cases m <;> omega
theorem samuel_pie (m : SamuelApples) : m.pie = 4 := by cases m <;> omega
theorem samuel_solution (m : SamuelApples) : m.left = 10 := by cases m <;> omega

structure SharedFish where
  carla kyle tasha total : ℕ
  hCarla : carla = 8
  hEqual : kyle = tasha
  hTotal : total = carla + kyle + tasha
  hThirtySix : total = 36
theorem shared_pair (m : SharedFish) : m.kyle + m.tasha = 28 := by cases m <;> omega
theorem shared_solution (m : SharedFish) : m.kyle = 14 := by cases m <;> omega

structure QuizAverage where
  firstFour targetTotal fifth : ℕ
  hFirst : firstFour = 90 + 98 + 92 + 94
  hTarget : targetTotal = 94 * 5
  hFifth : firstFour + fifth = targetTotal
theorem quiz_first_four (m : QuizAverage) : m.firstFour = 374 := by cases m <;> omega
theorem quiz_target (m : QuizAverage) : m.targetTotal = 470 := by cases m <;> omega
theorem quiz_solution (m : QuizAverage) : m.fifth = 96 := by cases m <;> omega

structure TaxBill where
  taxable lowerBand higherBand lowerTax higherTax totalTax : ℕ
  hTaxable : taxable + 30000 = 100000
  hLowerBand : lowerBand = 20000
  hHigherBand : lowerBand + higherBand = taxable
  hLowerTax : 10 * lowerTax = lowerBand
  hHigherTax : 5 * higherTax = higherBand
  hTotalTax : totalTax = lowerTax + higherTax
theorem tax_taxable (m : TaxBill) : m.taxable = 70000 := by cases m <;> omega
theorem tax_lower (m : TaxBill) : m.lowerTax = 2000 := by cases m <;> omega
theorem tax_higher (m : TaxBill) : m.higherTax = 10000 := by cases m <;> omega
theorem tax_solution (m : TaxBill) : m.totalTax = 12000 := by cases m <;> omega

structure Cookies where
  millie mike frank : ℕ
  hMillie : millie = 4
  hMike : mike = 3 * millie
  hFrank : 2 * (frank + 3) = mike
theorem cookies_mike (m : Cookies) : m.mike = 12 := by cases m <;> omega
theorem cookies_solution (m : Cookies) : m.frank = 3 := by cases m <;> omega

structure DogTime where
  dryMinutes walkMinutes totalMinutes : ℕ
  hDry : 2 * dryMinutes = 20
  hWalk : 6 * walkMinutes = 3 * 60
  hTotal : totalMinutes = 20 + dryMinutes + walkMinutes
theorem dog_dry (m : DogTime) : m.dryMinutes = 10 := by cases m <;> omega
theorem dog_walk (m : DogTime) : m.walkMinutes = 30 := by cases m <;> omega
theorem dog_solution (m : DogTime) : m.totalMinutes = 60 := by cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0927A19
