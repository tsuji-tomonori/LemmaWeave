import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A12

structure FarmEntrance where
  students adults studentPrice adultPrice studentCost adultCost total : ℕ
  hStudents : students = 35
  hAdults : adults = 4
  hStudentPrice : studentPrice = 5
  hAdultPrice : adultPrice = 6
  hStudentCost : studentCost = students * studentPrice
  hAdultCost : adultCost = adults * adultPrice
  hTotal : total = studentCost + adultCost
theorem entrance_students (m : FarmEntrance) : m.studentCost = 175 := by cases m; omega
theorem entrance_adults (m : FarmEntrance) : m.adultCost = 24 := by cases m; omega
theorem entrance_solution (m : FarmEntrance) : m.total = 199 := by cases m; omega

structure PuppyProfit where
  litter given remaining kept sold price revenue studFee profit : ℕ
  hLitter : litter = 8
  hGivenHalf : litter = 2 * given
  hRemaining : remaining + given = litter
  hKept : kept = 1
  hSold : sold + kept = remaining
  hPrice : price = 600
  hRevenue : revenue = sold * price
  hStudFee : studFee = 300
  hProfit : revenue = profit + studFee
theorem puppies_remaining (m : PuppyProfit) : m.remaining = 4 := by cases m; omega
theorem puppies_sold (m : PuppyProfit) : m.sold = 3 := by cases m; omega
theorem puppies_revenue (m : PuppyProfit) : m.revenue = 1800 := by cases m; omega
theorem puppies_solution (m : PuppyProfit) : m.profit = 1500 := by cases m; omega

structure HamSlices where
  perSandwich sandwiches required onHand needed : ℕ
  hPer : perSandwich = 3
  hSandwiches : sandwiches = 50
  hRequired : required = perSandwich * sandwiches
  hOnHand : onHand = 31
  hNeeded : required = onHand + needed
theorem ham_required (m : HamSlices) : m.required = 150 := by cases m; omega
theorem ham_solution (m : HamSlices) : m.needed = 119 := by cases m; omega

structure Bracelets where
  nancyMetal nancyPearl nancyTotal roseCrystal roseStone roseTotal total beadsPer bracelets : ℕ
  hNancyMetal : nancyMetal = 40
  hNancyPearl : nancyPearl = nancyMetal + 20
  hNancyTotal : nancyTotal = nancyMetal + nancyPearl
  hRoseCrystal : roseCrystal = 20
  hRoseStone : roseStone = 2 * roseCrystal
  hRoseTotal : roseTotal = roseCrystal + roseStone
  hTotal : total = nancyTotal + roseTotal
  hPer : beadsPer = 8
  hBracelets : total = bracelets * beadsPer
theorem bracelets_nancy (m : Bracelets) : m.nancyTotal = 100 := by cases m; omega
theorem bracelets_rose (m : Bracelets) : m.roseTotal = 60 := by cases m; omega
theorem bracelets_total (m : Bracelets) : m.total = 160 := by cases m; omega
theorem bracelets_solution (m : Bracelets) : m.bracelets = 20 := by cases m; omega

structure EggSales where
  chickens eggsEach weeklyEggs eggsPerDozen weeklyDozens dollarsPerDozen weeks total : ℕ
  hChickens : chickens = 46
  hEach : eggsEach = 6
  hWeekly : weeklyEggs = chickens * eggsEach
  hPerDozen : eggsPerDozen = 12
  hDozens : weeklyEggs = weeklyDozens * eggsPerDozen
  hPrice : dollarsPerDozen = 3
  hWeeks : weeks = 8
  hTotal : total = weeklyDozens * dollarsPerDozen * weeks
theorem eggs_weekly (m : EggSales) : m.weeklyEggs = 276 := by cases m; omega
theorem eggs_dozens (m : EggSales) : m.weeklyDozens = 23 := by cases m; omega
theorem eggs_solution (m : EggSales) : m.total = 552 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A12
