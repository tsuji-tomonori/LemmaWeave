import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint1001A00P1

structure AgesModel where
  rebecca : ℕ
  matthew : ℕ
  freddy : ℕ
  hTotal : rebecca + matthew + freddy = 35
  hMatthew : matthew = rebecca + 2
  hFreddy : freddy = matthew + 4

theorem ages_rebecca (m : AgesModel) : m.rebecca = 9 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem ages_matthew (m : AgesModel) : m.matthew = 11 := by
  have h := ages_rebecca m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem ages_freddy (m : AgesModel) : m.freddy = 15 := by
  have h := ages_matthew m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure LaundryModel where
  wednesday : ℕ
  thursday : ℕ
  friday : ℕ
  saturday : ℕ
  weeklyTotal : ℕ
  hWednesday : wednesday = 6
  hThursday : thursday = 2 * wednesday
  hFriday : 2 * friday = thursday
  hSaturday : 3 * saturday = wednesday
  hTotal : weeklyTotal = wednesday + thursday + friday + saturday

theorem laundry_thursday (m : LaundryModel) : m.thursday = 12 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem laundry_friday (m : LaundryModel) : m.friday = 6 := by
  have h := laundry_thursday m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem laundry_saturday (m : LaundryModel) : m.saturday = 2 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem laundry_total (m : LaundryModel) : m.weeklyTotal = 26 := by
  have h1 := laundry_thursday m
  have h2 := laundry_friday m
  have h3 := laundry_saturday m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure RunningModel where
  circuitMeters : ℕ
  morningLaps : ℕ
  afternoonLaps : ℕ
  morningMeters : ℕ
  afternoonMeters : ℕ
  dailyMeters : ℕ
  weeklyMeters : ℕ
  hCircuit : circuitMeters = 365
  hMorningLaps : morningLaps = 7
  hAfternoonLaps : afternoonLaps = 3
  hMorning : morningMeters = morningLaps * circuitMeters
  hAfternoon : afternoonMeters = afternoonLaps * circuitMeters
  hDaily : dailyMeters = morningMeters + afternoonMeters
  hWeekly : weeklyMeters = 7 * dailyMeters

theorem running_morning (m : RunningModel) : m.morningMeters = 2555 := by
  cases m <;> dsimp at * <;> simp_all

theorem running_afternoon (m : RunningModel) : m.afternoonMeters = 1095 := by
  cases m <;> dsimp at * <;> simp_all

theorem running_daily (m : RunningModel) : m.dailyMeters = 3650 := by
  have h1 := running_morning m
  have h2 := running_afternoon m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem running_weekly (m : RunningModel) : m.weeklyMeters = 25550 := by
  have h := running_daily m
  cases m <;> dsimp at * <;> simp_all

structure ShoppingModel where
  laptopCost : ℕ
  smartphoneCost : ℕ
  totalCost : ℕ
  cash : ℕ
  change : ℕ
  hLaptop : laptopCost = 2 * 600
  hSmartphone : smartphoneCost = 4 * 400
  hTotal : totalCost = laptopCost + smartphoneCost
  hCash : cash = 3000
  hChange : totalCost + change = cash

theorem shopping_laptops (m : ShoppingModel) : m.laptopCost = 1200 := by
  cases m <;> dsimp at * <;> simp_all

theorem shopping_smartphones (m : ShoppingModel) : m.smartphoneCost = 1600 := by
  cases m <;> dsimp at * <;> simp_all

theorem shopping_total (m : ShoppingModel) : m.totalCost = 2800 := by
  have h1 := shopping_laptops m
  have h2 := shopping_smartphones m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem shopping_change (m : ShoppingModel) : m.change = 200 := by
  have h := shopping_total m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

structure BreakfastModel where
  targetCalories : ℕ
  breadCalories : ℕ
  peanutCaloriesPerServing : ℕ
  peanutCaloriesNeeded : ℕ
  servings : ℕ
  hTarget : targetCalories = 500
  hBread : breadCalories = 100
  hServing : peanutCaloriesPerServing = 200
  hNeeded : breadCalories + peanutCaloriesNeeded = targetCalories
  hServings : peanutCaloriesNeeded = servings * peanutCaloriesPerServing

theorem breakfast_peanut_calories (m : BreakfastModel) : m.peanutCaloriesNeeded = 400 := by
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

theorem breakfast_servings (m : BreakfastModel) : m.servings = 2 := by
  have h := breakfast_peanut_calories m
  cases m <;> dsimp at * <;> (try simp_all) <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A00P1
