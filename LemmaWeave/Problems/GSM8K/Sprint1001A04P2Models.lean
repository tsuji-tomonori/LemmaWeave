import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A04P2

structure SandwichModel where
  initial : ℕ
  firstDay : ℕ
  secondDay : ℕ
  left : ℕ
  hInitial : initial = 12
  hFirst : 2 * firstDay = initial
  hSecond : secondDay + 2 = firstDay
  hLeft : left + firstDay + secondDay = initial

theorem sandwich_first_day (m : SandwichModel) : m.firstDay = 6 := by
  omega
theorem sandwich_second_day (m : SandwichModel) : m.secondDay = 4 := by
  have h := sandwich_first_day m
  omega
theorem sandwich_left (m : SandwichModel) : m.left = 2 := by
  have h1 := sandwich_first_day m
  have h2 := sandwich_second_day m
  omega
structure BusModel where
  initial : ℕ
  firstBoard : ℕ
  afterFirst : ℕ
  off : ℕ
  laterBoard : ℕ
  afterOff : ℕ
  final : ℕ
  hInitial : initial = 50
  hFirstBoard : firstBoard = 16
  hAfterFirst : afterFirst = initial + firstBoard
  hOff : off = 22
  hAfterOff : afterOff + off = afterFirst
  hLaterBoard : laterBoard = 5
  hFinal : final = afterOff + laterBoard

theorem bus_after_first (m : BusModel) : m.afterFirst = 66 := by
  omega
theorem bus_after_off (m : BusModel) : m.afterOff = 44 := by
  have h := bus_after_first m
  omega
theorem bus_final (m : BusModel) : m.final = 49 := by
  have h := bus_after_off m
  omega
structure SausageModel where
  initial : ℕ
  mondayEaten : ℕ
  mondayRemaining : ℕ
  tuesdayEaten : ℕ
  tuesdayRemaining : ℕ
  fridayEaten : ℕ
  left : ℕ
  hInitial : initial = 600
  hMondayEaten : 5 * mondayEaten = 2 * initial
  hMondayRemaining : mondayRemaining + mondayEaten = initial
  hTuesdayEaten : 2 * tuesdayEaten = mondayRemaining
  hTuesdayRemaining : tuesdayRemaining + tuesdayEaten = mondayRemaining
  hFridayEaten : 4 * fridayEaten = 3 * tuesdayRemaining
  hLeft : left + fridayEaten = tuesdayRemaining

theorem sausage_monday_remaining (m : SausageModel) : m.mondayRemaining = 360 := by
  omega
theorem sausage_tuesday_remaining (m : SausageModel) : m.tuesdayRemaining = 180 := by
  have h := sausage_monday_remaining m
  omega
theorem sausage_friday_eaten (m : SausageModel) : m.fridayEaten = 135 := by
  have h := sausage_tuesday_remaining m
  omega
theorem sausage_left (m : SausageModel) : m.left = 45 := by
  have h1 := sausage_tuesday_remaining m
  have h2 := sausage_friday_eaten m
  omega
structure BrotherMoneyModel where
  michael : ℕ
  gift : ℕ
  candy : ℕ
  left : ℕ
  beforeCandy : ℕ
  initialBrother : ℕ
  hMichael : michael = 42
  hGift : 2 * gift = michael
  hCandy : candy = 3
  hLeft : left = 35
  hBeforeCandy : beforeCandy = left + candy
  hInitialBrother : initialBrother + gift = beforeCandy

theorem brother_gift (m : BrotherMoneyModel) : m.gift = 21 := by
  omega
theorem brother_before_candy (m : BrotherMoneyModel) : m.beforeCandy = 38 := by
  omega
theorem brother_initial (m : BrotherMoneyModel) : m.initialBrother = 17 := by
  have h1 := brother_gift m
  have h2 := brother_before_candy m
  omega
structure CoffeeModel where
  lattePrice : ℕ
  latteDays : ℕ
  icedPrice : ℕ
  icedDays : ℕ
  weekly : ℕ
  yearly : ℕ
  savings : ℕ
  hLattePrice : lattePrice = 4
  hLatteDays : latteDays = 5
  hIcedPrice : icedPrice = 2
  hIcedDays : icedDays = 3
  hWeekly : weekly = lattePrice * latteDays + icedPrice * icedDays
  hYearly : yearly = 52 * weekly
  hSavings : 4 * savings = yearly

theorem coffee_weekly (m : CoffeeModel) : m.weekly = 26 := by
  omega
theorem coffee_yearly (m : CoffeeModel) : m.yearly = 1352 := by
  have h := coffee_weekly m
  omega
theorem coffee_savings (m : CoffeeModel) : m.savings = 338 := by
  have h := coffee_yearly m
  omega
end LemmaWeave.Problems.GSM8K.Sprint1001A04P2
