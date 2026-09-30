import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A20P1

structure WheelsModel where
  racers : ℕ
  bicycleRiders : ℕ
  tricycleRiders : ℕ
  bicycleWheels : ℕ
  tricycleWheels : ℕ
  totalWheels : ℕ
  hRacers : racers = 40
  hBicycleFraction : 5 * bicycleRiders = 3 * racers
  hSplit : bicycleRiders + tricycleRiders = racers
  hBicycleWheels : bicycleWheels = 2 * bicycleRiders
  hTricycleWheels : tricycleWheels = 3 * tricycleRiders
  hTotal : totalWheels = bicycleWheels + tricycleWheels

theorem wheels_bicycle_riders (m : WheelsModel) : m.bicycleRiders = 24 := by
  cases m <;> omega

theorem wheels_tricycle_riders (m : WheelsModel) : m.tricycleRiders = 16 := by
  have h := wheels_bicycle_riders m
  cases m <;> omega

theorem wheels_bicycle_count (m : WheelsModel) : m.bicycleWheels = 48 := by
  have h := wheels_bicycle_riders m
  cases m <;> omega

theorem wheels_tricycle_count (m : WheelsModel) : m.tricycleWheels = 48 := by
  have h := wheels_tricycle_riders m
  cases m <;> omega

theorem wheels_total (m : WheelsModel) : m.totalWheels = 96 := by
  have h1 := wheels_bicycle_count m
  have h2 := wheels_tricycle_count m
  cases m <;> omega

structure MonthlyApplesModel where
  chandlerWeekly : ℕ
  lucyWeekly : ℕ
  combinedWeekly : ℕ
  monthWeeks : ℕ
  monthlyOrder : ℕ
  hChandler : chandlerWeekly = 23
  hLucy : lucyWeekly = 19
  hCombined : combinedWeekly = chandlerWeekly + lucyWeekly
  hWeeks : monthWeeks = 4
  hMonthly : monthlyOrder = 4 * combinedWeekly

theorem apples_combined_weekly (m : MonthlyApplesModel) : m.combinedWeekly = 42 := by
  cases m <;> omega

theorem apples_monthly_order (m : MonthlyApplesModel) : m.monthlyOrder = 168 := by
  have h := apples_combined_weekly m
  cases m <;> omega

structure TowelsModel where
  owned : ℕ
  towelsPerDay : ℕ
  weeklyUse : ℕ
  twoWeekNeed : ℕ
  shortage : ℕ
  noCleanDays : ℕ
  hOwned : owned = 18
  hPerDay : towelsPerDay = 2
  hWeekly : weeklyUse = 7 * towelsPerDay
  hTwoWeeks : twoWeekNeed = 2 * weeklyUse
  hShortage : owned + shortage = twoWeekNeed
  hNoCleanDays : shortage = towelsPerDay * noCleanDays

theorem towels_weekly_use (m : TowelsModel) : m.weeklyUse = 14 := by
  cases m <;> omega

theorem towels_two_week_need (m : TowelsModel) : m.twoWeekNeed = 28 := by
  have h := towels_weekly_use m
  cases m <;> omega

theorem towels_shortage (m : TowelsModel) : m.shortage = 10 := by
  have h := towels_two_week_need m
  cases m <;> omega

theorem towels_no_clean_days (m : TowelsModel) : m.noCleanDays = 5 := by
  have h := towels_shortage m
  cases m <;> omega

structure TreeApplesModel where
  basketsPerTree : ℕ
  applesPerBasket : ℕ
  applesPerTree : ℕ
  trees : ℕ
  totalApples : ℕ
  hBaskets : basketsPerTree = 20
  hApplesPerBasket : applesPerBasket = 15
  hPerTree : applesPerTree = 20 * applesPerBasket
  hTrees : trees = 10
  hTotal : totalApples = 10 * applesPerTree

theorem tree_apples_per_tree (m : TreeApplesModel) : m.applesPerTree = 300 := by
  cases m <;> omega

theorem tree_apples_total (m : TreeApplesModel) : m.totalApples = 3000 := by
  have h := tree_apples_per_tree m
  cases m <;> omega

structure GardeningModel where
  mowLines : ℕ
  minutesPerLine : ℕ
  mowMinutes : ℕ
  flowerRows : ℕ
  flowersPerRow : ℕ
  totalFlowers : ℕ
  plantingMinutes : ℕ
  totalMinutes : ℕ
  hLines : mowLines = 40
  hMinutesPerLine : minutesPerLine = 2
  hMow : mowMinutes = 2 * mowLines
  hRows : flowerRows = 8
  hFlowersPerRow : flowersPerRow = 7
  hFlowers : totalFlowers = 7 * flowerRows
  hPlantingHalfMinute : totalFlowers = 2 * plantingMinutes
  hTotal : totalMinutes = mowMinutes + plantingMinutes

theorem gardening_mow_minutes (m : GardeningModel) : m.mowMinutes = 80 := by
  cases m <;> omega

theorem gardening_total_flowers (m : GardeningModel) : m.totalFlowers = 56 := by
  cases m <;> omega

theorem gardening_planting_minutes (m : GardeningModel) : m.plantingMinutes = 28 := by
  have h := gardening_total_flowers m
  cases m <;> omega

theorem gardening_total_minutes (m : GardeningModel) : m.totalMinutes = 108 := by
  have h1 := gardening_mow_minutes m
  have h2 := gardening_planting_minutes m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A20P1
