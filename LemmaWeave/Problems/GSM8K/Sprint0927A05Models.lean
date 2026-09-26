import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A05
structure HVAC where
  cost : ℕ
  zones : ℕ
  ventsPerZone : ℕ
  vents : ℕ
  costPerVent : ℕ
  hCost : cost = 20000
  hZones : zones = 2
  hVentsPerZone : ventsPerZone = 5
  hVents : vents = zones * ventsPerZone
  hUnitCost : cost = vents * costPerVent
theorem hvac_vents (m : HVAC) : m.vents = 10 := by cases m; omega
theorem hvac_solution (m : HVAC) : m.costPerVent = 2000 := by cases m; omega
structure SoupCans where
  firstWeek : ℕ
  secondWeek : ℕ
  collected : ℕ
  goal : ℕ
  needed : ℕ
  hFirst : firstWeek = 158
  hSecond : secondWeek = 259
  hCollected : collected = firstWeek + secondWeek
  hGoal : goal = 500
  hNeeded : collected + needed = goal
theorem soup_collected (m : SoupCans) : m.collected = 417 := by cases m; omega
theorem soup_solution (m : SoupCans) : m.needed = 83 := by cases m; omega
structure LakeTents where
  matt : ℕ
  parents : ℕ
  brotherCouple : ℕ
  brotherKids : ℕ
  uncleCouple : ℕ
  uncleKids : ℕ
  people : ℕ
  houseCapacity : ℕ
  outside : ℕ
  perTent : ℕ
  tents : ℕ
  hMatt : matt = 1
  hParents : parents = 2
  hBrotherCouple : brotherCouple = 2
  hBrotherKids : brotherKids = 4
  hUncleCouple : uncleCouple = 2
  hUncleKids : uncleKids = 3
  hPeople : people = matt + parents + brotherCouple + brotherKids + uncleCouple + uncleKids
  hHouse : houseCapacity = 4
  hOutside : outside + houseCapacity = people
  hPerTent : perTent = 2
  hTents : outside = perTent * tents
theorem tents_people (m : LakeTents) : m.people = 14 := by cases m; omega
theorem tents_outside (m : LakeTents) : m.outside = 10 := by cases m; omega
theorem tents_solution (m : LakeTents) : m.tents = 5 := by cases m; omega
structure PieSlices where
  pies : ℕ
  slicesPerPie : ℕ
  initial : ℕ
  firstEaten : ℕ
  afterRebecca : ℕ
  familyEaten : ℕ
  afterFamily : ℕ
  sundayEaten : ℕ
  remaining : ℕ
  hPies : pies = 2
  hSlices : slicesPerPie = 8
  hInitial : initial = pies * slicesPerPie
  hFirst : firstEaten = pies
  hAfterRebecca : afterRebecca + firstEaten = initial
  hHalf : 2 * familyEaten = afterRebecca
  hAfterFamily : afterFamily + familyEaten = afterRebecca
  hSunday : sundayEaten = 2
  hRemaining : remaining + sundayEaten = afterFamily
theorem pies_initial (m : PieSlices) : m.initial = 16 := by cases m; omega
theorem pies_after_rebecca (m : PieSlices) : m.afterRebecca = 14 := by cases m; omega
theorem pies_after_family (m : PieSlices) : m.afterFamily = 7 := by cases m; omega
theorem pies_solution (m : PieSlices) : m.remaining = 5 := by cases m; omega
structure Flyers where
  hourlyPay : ℕ
  daysPerWeek : ℕ
  hoursPerDay : ℕ
  hoursPerWeek : ℕ
  weeks : ℕ
  hours : ℕ
  earned : ℕ
  hPay : hourlyPay = 10
  hDays : daysPerWeek = 2
  hHoursPerDay : hoursPerDay = 3
  hWeekly : hoursPerWeek = daysPerWeek * hoursPerDay
  hWeeks : weeks = 6
  hHours : hours = hoursPerWeek * weeks
  hEarned : earned = hours * hourlyPay
theorem flyers_weekly_hours (m : Flyers) : m.hoursPerWeek = 6 := by cases m; omega
theorem flyers_total_hours (m : Flyers) : m.hours = 36 := by cases m; omega
theorem flyers_solution (m : Flyers) : m.earned = 360 := by cases m; omega
structure Postcards where
  perDay : ℕ
  days : ℕ
  cards : ℕ
  dollarsPerCard : ℕ
  earned : ℕ
  hPerDay : perDay = 30
  hDays : days = 6
  hCards : cards = perDay * days
  hDollars : dollarsPerCard = 5
  hEarned : earned = cards * dollarsPerCard
theorem postcards_count (m : Postcards) : m.cards = 180 := by cases m; omega
theorem postcards_solution (m : Postcards) : m.earned = 900 := by cases m; omega
structure HotSauce where
  quartHalfOunces : ℕ
  shortfallHalfOunces : ℕ
  jarHalfOunces : ℕ
  halfOuncesPerServing : ℕ
  servingsPerDay : ℕ
  dailyHalfOunces : ℕ
  days : ℕ
  hQuart : quartHalfOunces = 64
  hShortfall : shortfallHalfOunces = 4
  hJar : jarHalfOunces + shortfallHalfOunces = quartHalfOunces
  hServing : halfOuncesPerServing = 1
  hServings : servingsPerDay = 3
  hDaily : dailyHalfOunces = servingsPerDay * halfOuncesPerServing
  hDays : jarHalfOunces = dailyHalfOunces * days
theorem sauce_jar (m : HotSauce) : m.jarHalfOunces = 60 := by cases m; omega
theorem sauce_daily (m : HotSauce) : m.dailyHalfOunces = 3 := by cases m; omega
theorem sauce_solution (m : HotSauce) : m.days = 20 := by cases m; omega
structure Nickels where
  centsPerNickel : ℕ
  peterCents : ℕ
  randiCents : ℕ
  peterNickels : ℕ
  randiNickels : ℕ
  difference : ℕ
  hCentsPerNickel : centsPerNickel = 5
  hPeterCents : peterCents = 30
  hRandiCents : randiCents = 2 * peterCents
  hPeterNickels : peterCents = centsPerNickel * peterNickels
  hRandiNickels : randiCents = centsPerNickel * randiNickels
  hDifference : randiNickels = peterNickels + difference
theorem nickels_peter (m : Nickels) : m.peterNickels = 6 := by cases m; omega
theorem nickels_randi (m : Nickels) : m.randiNickels = 12 := by cases m; omega
theorem nickels_solution (m : Nickels) : m.difference = 6 := by cases m; omega
structure OrangeSavings where
  passengers : ℕ
  centsPerOrange : ℕ
  savedCents : ℕ
  plannedCents : ℕ
  percent : ℕ
  hPassengers : passengers = 4
  hCentsPerOrange : centsPerOrange = 150
  hSaved : savedCents = passengers * centsPerOrange
  hPlanned : plannedCents = 1500
  hPercent : savedCents * 100 = percent * plannedCents
theorem oranges_saved (m : OrangeSavings) : m.savedCents = 600 := by cases m; omega
theorem oranges_solution (m : OrangeSavings) : m.percent = 40 := by cases m; omega
structure ArtValue where
  purchasePrice : ℕ
  futureMultiplier : ℕ
  futureValue : ℕ
  increase : ℕ
  hPurchase : purchasePrice = 4000
  hMultiplier : futureMultiplier = 3
  hFuture : futureValue = futureMultiplier * purchasePrice
  hIncrease : futureValue = purchasePrice + increase
theorem art_future_value (m : ArtValue) : m.futureValue = 12000 := by cases m; omega
theorem art_solution (m : ArtValue) : m.increase = 8000 := by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0927A05
