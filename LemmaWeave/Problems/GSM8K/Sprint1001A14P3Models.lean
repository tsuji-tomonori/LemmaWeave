import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A14P3

structure ObstacleModel where
  firstMinutes : ℕ
  firstExtra : ℕ
  firstSeconds : ℕ
  doorSeconds : ℕ
  throughDoor : ℕ
  returnMinutes : ℕ
  returnExtra : ℕ
  returnSeconds : ℕ
  total : ℕ
  hFirstMinutes : firstMinutes = 7
  hFirstExtra : firstExtra = 23
  hFirst : firstSeconds = 60 * firstMinutes + firstExtra
  hDoor : doorSeconds = 73
  hThroughDoor : throughDoor = firstSeconds + doorSeconds
  hReturnMinutes : returnMinutes = 5
  hReturnExtra : returnExtra = 58
  hReturn : returnSeconds = 60 * returnMinutes + returnExtra
  hTotal : total = throughDoor + returnSeconds

theorem first_course_seconds (m : ObstacleModel) : m.firstSeconds = 443 := by
  cases m <;> simp_all at * <;> omega

theorem door_elapsed_seconds (m : ObstacleModel) : m.throughDoor = 516 := by
  have h := first_course_seconds m
  cases m <;> simp_all at * <;> omega

theorem return_course_seconds (m : ObstacleModel) : m.returnSeconds = 358 := by
  cases m <;> simp_all at * <;> omega

theorem obstacle_seconds (m : ObstacleModel) : m.total = 874 := by
  have h1 := door_elapsed_seconds m
  have h2 := return_course_seconds m
  cases m <;> simp_all at * <;> omega

structure ChocolateMilkModel where
  milkHalfOunces : ℕ
  milkPerGlass : ℕ
  milkGlasses : ℕ
  syrupHalfOunces : ℕ
  syrupPerGlass : ℕ
  syrupGlasses : ℕ
  glasses : ℕ
  ouncesPerGlass : ℕ
  totalOunces : ℕ
  hMilk : milkHalfOunces = 260
  hMilkPer : milkPerGlass = 13
  hMilkGlasses : milkPerGlass * milkGlasses = milkHalfOunces
  hSyrup : syrupHalfOunces = 120
  hSyrupPer : syrupPerGlass = 3
  hSyrupGlasses : syrupPerGlass * syrupGlasses = syrupHalfOunces
  hLimit : glasses = milkGlasses
  hEnoughSyrup : glasses ≤ syrupGlasses
  hOunces : ouncesPerGlass = 8
  hTotal : totalOunces = glasses * ouncesPerGlass

theorem milk_glasses (m : ChocolateMilkModel) : m.milkGlasses = 20 := by
  cases m <;> simp_all at * <;> omega

theorem syrup_glasses (m : ChocolateMilkModel) : m.syrupGlasses = 40 := by
  cases m <;> simp_all at * <;> omega

theorem limited_glasses (m : ChocolateMilkModel) : m.glasses = 20 := by
  have h1 := milk_glasses m
  have h2 := syrup_glasses m
  cases m <;> simp_all at * <;> omega

theorem chocolate_milk (m : ChocolateMilkModel) : m.totalOunces = 160 := by
  have h := limited_glasses m
  cases m <;> simp_all at * <;> omega

structure SeedModel where
  left : ℕ
  rightMultiplier : ℕ
  right : ℕ
  firstGroups : ℕ
  newcomers : ℕ
  remaining : ℕ
  start : ℕ
  hLeft : left = 20
  hMultiplier : rightMultiplier = 2
  hRight : right = rightMultiplier * left
  hFirstGroups : firstGroups = left + right
  hNewcomers : newcomers = 30
  hRemaining : remaining = 30
  hStart : start = firstGroups + newcomers + remaining

theorem right_group_seeds (m : SeedModel) : m.right = 40 := by
  cases m <;> simp_all at * <;> omega

theorem initial_groups_seeds (m : SeedModel) : m.firstGroups = 60 := by
  have h := right_group_seeds m
  cases m <;> simp_all at * <;> omega

theorem starting_seeds (m : SeedModel) : m.start = 120 := by
  have h := initial_groups_seeds m
  cases m <;> simp_all at * <;> omega

structure CrabModel where
  baskets : ℕ
  crabsPerBasket : ℕ
  perCollection : ℕ
  collectionsPerWeek : ℕ
  weekly : ℕ
  pricePerCrab : ℕ
  revenue : ℕ
  hBaskets : baskets = 3
  hCrabsPerBasket : crabsPerBasket = 4
  hPerCollection : perCollection = baskets * crabsPerBasket
  hCollections : collectionsPerWeek = 2
  hWeekly : weekly = perCollection * collectionsPerWeek
  hPrice : pricePerCrab = 3
  hRevenue : revenue = weekly * pricePerCrab

theorem crabs_per_collection (m : CrabModel) : m.perCollection = 12 := by
  cases m <;> simp_all at * <;> omega

theorem weekly_crabs (m : CrabModel) : m.weekly = 24 := by
  have h := crabs_per_collection m
  cases m <;> simp_all at * <;> omega

theorem crab_revenue (m : CrabModel) : m.revenue = 72 := by
  have h := weekly_crabs m
  cases m <;> simp_all at * <;> omega

structure PoolModel where
  kids : ℕ
  kidPrice : ℕ
  kidsDaily : ℕ
  adultPriceMultiplier : ℕ
  adultPrice : ℕ
  adults : ℕ
  adultsDaily : ℕ
  daily : ℕ
  days : ℕ
  weekly : ℕ
  hKids : kids = 8
  hKidPrice : kidPrice = 3
  hKidsDaily : kidsDaily = kids * kidPrice
  hMultiplier : adultPriceMultiplier = 2
  hAdultPrice : adultPrice = adultPriceMultiplier * kidPrice
  hAdults : adults = 10
  hAdultsDaily : adultsDaily = adults * adultPrice
  hDaily : daily = kidsDaily + adultsDaily
  hDays : days = 7
  hWeekly : weekly = daily * days

theorem kids_daily_revenue (m : PoolModel) : m.kidsDaily = 24 := by
  cases m <;> simp_all at * <;> omega

theorem adult_price (m : PoolModel) : m.adultPrice = 6 := by
  cases m <;> simp_all at * <;> omega

theorem adults_daily_revenue (m : PoolModel) : m.adultsDaily = 60 := by
  have h := adult_price m
  cases m <;> simp_all at * <;> omega

theorem pool_daily_revenue (m : PoolModel) : m.daily = 84 := by
  have h1 := kids_daily_revenue m
  have h2 := adults_daily_revenue m
  cases m <;> simp_all at * <;> omega

theorem pool_revenue (m : PoolModel) : m.weekly = 588 := by
  have h := pool_daily_revenue m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A14P3
