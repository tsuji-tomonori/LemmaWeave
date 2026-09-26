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
end LemmaWeave.Problems.GSM8K.Sprint0927A05
