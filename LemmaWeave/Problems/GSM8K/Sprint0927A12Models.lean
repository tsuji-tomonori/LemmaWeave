import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A12

structure FarmEntrance where
  students : ℕ
  adults : ℕ
  studentPrice : ℕ
  adultPrice : ℕ
  studentCost : ℕ
  adultCost : ℕ
  total : ℕ
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
  litter : ℕ
  given : ℕ
  remaining : ℕ
  kept : ℕ
  sold : ℕ
  price : ℕ
  revenue : ℕ
  studFee : ℕ
  profit : ℕ
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
  perSandwich : ℕ
  sandwiches : ℕ
  required : ℕ
  onHand : ℕ
  needed : ℕ
  hPer : perSandwich = 3
  hSandwiches : sandwiches = 50
  hRequired : required = perSandwich * sandwiches
  hOnHand : onHand = 31
  hNeeded : required = onHand + needed
theorem ham_required (m : HamSlices) : m.required = 150 := by cases m; omega
theorem ham_solution (m : HamSlices) : m.needed = 119 := by cases m; omega

structure Bracelets where
  nancyMetal : ℕ
  nancyPearl : ℕ
  nancyTotal : ℕ
  roseCrystal : ℕ
  roseStone : ℕ
  roseTotal : ℕ
  total : ℕ
  beadsPer : ℕ
  bracelets : ℕ
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
  chickens : ℕ
  eggsEach : ℕ
  weeklyEggs : ℕ
  eggsPerDozen : ℕ
  weeklyDozens : ℕ
  dollarsPerDozen : ℕ
  weeks : ℕ
  total : ℕ
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

structure BrotherAge where
  trevorNow : ℕ
  brotherNow : ℕ
  ageGap : ℕ
  targetBrother : ℕ
  trevorThen : ℕ
  hTrevor : trevorNow = 11
  hBrother : brotherNow = 20
  hGap : brotherNow = trevorNow + ageGap
  hTarget : targetBrother = 3 * trevorNow
  hThen : targetBrother = trevorThen + ageGap
theorem age_target_brother (m : BrotherAge) : m.targetBrother = 33 := by cases m; omega
theorem age_solution (m : BrotherAge) : m.trevorThen = 24 := by cases m; omega

structure CatLitter where
  days : ℕ
  daysPerWeek : ℕ
  changes : ℕ
  poundsPerChange : ℕ
  poundsNeeded : ℕ
  poundsPerContainer : ℕ
  containers : ℕ
  dollarsPerContainer : ℕ
  totalCost : ℕ
  hDays : days = 210
  hWeek : daysPerWeek = 7
  hChanges : days = changes * daysPerWeek
  hPoundsChange : poundsPerChange = 15
  hPoundsNeeded : poundsNeeded = changes * poundsPerChange
  hContainer : poundsPerContainer = 45
  hContainers : poundsNeeded = containers * poundsPerContainer
  hPrice : dollarsPerContainer = 21
  hCost : totalCost = containers * dollarsPerContainer
theorem litter_changes (m : CatLitter) : m.changes = 30 := by cases m; omega
theorem litter_pounds (m : CatLitter) : m.poundsNeeded = 450 := by cases m; omega
theorem litter_containers (m : CatLitter) : m.containers = 10 := by cases m; omega
theorem litter_solution (m : CatLitter) : m.totalCost = 210 := by cases m; omega

structure CheesePurchase where
  initial : ℕ
  remaining : ℕ
  spent : ℕ
  beefPounds : ℕ
  beefPrice : ℕ
  beefCost : ℕ
  cheesePrice : ℕ
  cheeseCost : ℕ
  cheesePounds : ℕ
  hInitial : initial = 87
  hRemaining : remaining = 61
  hSpent : initial = remaining + spent
  hBeefPounds : beefPounds = 1
  hBeefPrice : beefPrice = 5
  hBeefCost : beefCost = beefPounds * beefPrice
  hCheesePrice : cheesePrice = 7
  hCheeseCost : spent = beefCost + cheeseCost
  hCheesePounds : cheeseCost = cheesePounds * cheesePrice
theorem cheese_spent (m : CheesePurchase) : m.spent = 26 := by cases m; omega
theorem cheese_cost (m : CheesePurchase) : m.cheeseCost = 21 := by cases m; omega
theorem cheese_solution (m : CheesePurchase) : m.cheesePounds = 3 := by cases m; omega

structure EggMeals where
  dozens : ℕ
  eggsPerDozen : ℕ
  initial : ℕ
  omelet : ℕ
  cake : ℕ
  afterCooking : ℕ
  given : ℕ
  remaining : ℕ
  meals : ℕ
  perMeal : ℕ
  hDozens : dozens = 2
  hPerDozen : eggsPerDozen = 12
  hInitial : initial = dozens * eggsPerDozen
  hOmelet : omelet = 2
  hCake : cake = 4
  hAfter : initial = omelet + cake + afterCooking
  hHalf : afterCooking = 2 * given
  hRemaining : remaining + given = afterCooking
  hMeals : meals = 3
  hPerMeal : remaining = meals * perMeal
theorem meals_initial (m : EggMeals) : m.initial = 24 := by cases m; omega
theorem meals_after_cooking (m : EggMeals) : m.afterCooking = 18 := by cases m; omega
theorem meals_remaining (m : EggMeals) : m.remaining = 9 := by cases m; omega
theorem meals_solution (m : EggMeals) : m.perMeal = 3 := by cases m; omega

structure WaterPrice where
  bottles : ℕ
  litersPerBottle : ℕ
  totalLiters : ℕ
  totalCost : ℕ
  pricePerLiter : ℕ
  hBottles : bottles = 6
  hLitersEach : litersPerBottle = 2
  hLiters : totalLiters = bottles * litersPerBottle
  hCost : totalCost = 12
  hUnitPrice : totalCost = totalLiters * pricePerLiter
theorem water_liters (m : WaterPrice) : m.totalLiters = 12 := by cases m; omega
theorem water_solution (m : WaterPrice) : m.pricePerLiter = 1 := by cases m; omega

structure BottleShops where
  capacity : ℕ
  shopA : ℕ
  shopB : ℕ
  shopC : ℕ
  hCapacity : capacity = 550
  hA : shopA = 150
  hB : shopB = 180
  hAll : capacity = shopA + shopB + shopC
theorem shops_first_two (m : BottleShops) : m.shopA + m.shopB = 330 := by cases m; omega
theorem shops_solution (m : BottleShops) : m.shopC = 220 := by cases m; omega

structure ApartmentRooms where
  length : ℕ
  width : ℕ
  totalArea : ℕ
  normalRooms : ℕ
  livingMultiplier : ℕ
  normalArea : ℕ
  livingArea : ℕ
  hLength : length = 16
  hWidth : width = 10
  hArea : totalArea = length * width
  hNormalRooms : normalRooms = 5
  hMultiplier : livingMultiplier = 3
  hLiving : livingArea = livingMultiplier * normalArea
  hPartition : totalArea = normalRooms * normalArea + livingArea
theorem apartment_area (m : ApartmentRooms) : m.totalArea = 160 := by cases m; omega
theorem apartment_normal (m : ApartmentRooms) : m.normalArea = 20 := by cases m; omega
theorem apartment_solution (m : ApartmentRooms) : m.livingArea = 60 := by cases m; omega

structure Sandwiches where
  initial : ℕ
  firstCoworker : ℕ
  selfMultiplier : ℕ
  selfKept : ℕ
  others : ℕ
  hInitial : initial = 20
  hFirst : firstCoworker = 4
  hMultiplier : selfMultiplier = 2
  hSelf : selfKept = selfMultiplier * firstCoworker
  hOthers : initial = firstCoworker + selfKept + others
theorem sandwiches_self (m : Sandwiches) : m.selfKept = 8 := by cases m; omega
theorem sandwiches_solution (m : Sandwiches) : m.others = 8 := by cases m; omega

structure AttendanceAverage where
  monday : ℕ
  tuesday : ℕ
  wed : ℕ
  thu : ℕ
  fri : ℕ
  total : ℕ
  days : ℕ
  average : ℕ
  hMonday : monday = 10
  hTuesday : tuesday = 15
  hWed : wed = 10
  hThu : thu = 10
  hFri : fri = 10
  hTotal : total = monday + tuesday + wed + thu + fri
  hDays : days = 5
  hAverage : total = days * average
theorem attendance_total (m : AttendanceAverage) : m.total = 55 := by cases m; omega
theorem attendance_solution (m : AttendanceAverage) : m.average = 11 := by cases m; omega

structure ArcadeTokens where
  initial : ℕ
  pacman : ℕ
  candy : ℕ
  ski : ℕ
  spent : ℕ
  left : ℕ
  parentMultiplier : ℕ
  bought : ℕ
  final : ℕ
  hInitial : initial = 36
  hPacman : initial = 3 * pacman
  hCandy : initial = 4 * candy
  hSki : ski = 7
  hSpent : spent = pacman + candy + ski
  hLeft : initial = spent + left
  hMultiplier : parentMultiplier = 7
  hBought : bought = parentMultiplier * ski
  hFinal : final = left + bought
theorem arcade_pacman (m : ArcadeTokens) : m.pacman = 12 := by cases m; omega
theorem arcade_candy (m : ArcadeTokens) : m.candy = 9 := by cases m; omega
theorem arcade_spent (m : ArcadeTokens) : m.spent = 28 := by cases m; omega
theorem arcade_bought (m : ArcadeTokens) : m.bought = 49 := by cases m; omega
theorem arcade_solution (m : ArcadeTokens) : m.final = 57 := by cases m; omega
theorem arcade_reference_22_false (m : ArcadeTokens) : m.final ≠ 22 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A12
