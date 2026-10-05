import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A18P1

structure CoinModel where
  paid : ℕ
  cost : ℕ
  change : ℕ
  quarters : ℕ
  dimes : ℕ
  nickels : ℕ
  pennies : ℕ
  coinCount : ℕ
  hPaid : paid = 100
  hCost : cost = 44
  hChange : paid = cost + change
  hQuarters : quarters = 2
  hDimes : dimes = 0
  hNickels : nickels = 1
  hPennies : pennies = 1
  hCoins : change = 25 * quarters + 10 * dimes + 5 * nickels + pennies
  hCount : coinCount = quarters + dimes + nickels + pennies

theorem coin_change_amount (m : CoinModel) : m.change = 56 := by
  cases m <;> simp_all at * <;> omega

theorem coin_representation_at_least_four (q d n p : ℕ)
    (h : 25 * q + 10 * d + 5 * n + p = 56) : 4 ≤ q + d + n + p := by
  omega

theorem coin_count_constructed (m : CoinModel) : m.coinCount = 4 := by
  have h := coin_change_amount m
  cases m <;> simp_all at * <;> omega

theorem coin_minimum (m : CoinModel) :
    m.coinCount = 4 ∧
      ∀ q d n p : ℕ, 25 * q + 10 * d + 5 * n + p = 56 → 4 ≤ q + d + n + p := by
  constructor
  · exact coin_count_constructed m
  · intro q d n p h
    exact coin_representation_at_least_four q d n p h

structure RaiseModel where
  spent : ℕ
  lastSalary : ℕ
  raise : ℕ
  newSalary : ℕ
  hSpent : spent = 100
  hSpentRate : 40 * lastSalary = 100 * spent
  hRaise : 100 * raise = 10 * lastSalary
  hNew : newSalary = lastSalary + raise

theorem last_year_salary (m : RaiseModel) : m.lastSalary = 250 := by
  cases m <;> simp_all at * <;> omega

theorem raise_amount (m : RaiseModel) : m.raise = 25 := by
  have h := last_year_salary m
  cases m <;> simp_all at * <;> omega

theorem new_salary (m : RaiseModel) : m.newSalary = 275 := by
  have h1 := last_year_salary m
  have h2 := raise_amount m
  cases m <;> simp_all at * <;> omega

structure ReturnSpeedModel where
  morningHours : ℕ
  morningSpeed : ℕ
  distance : ℕ
  returnHalfHours : ℕ
  returnSpeed : ℕ
  hMorningHours : morningHours = 1
  hMorningSpeed : morningSpeed = 30
  hDistance : distance = morningHours * morningSpeed
  hReturnHalfHours : returnHalfHours = 3
  hReturn : 2 * distance = returnHalfHours * returnSpeed

theorem commute_distance (m : ReturnSpeedModel) : m.distance = 30 := by
  cases m <;> simp_all at * <;> omega

theorem return_average_speed (m : ReturnSpeedModel) : m.returnSpeed = 20 := by
  have h := commute_distance m
  cases m <;> simp_all at * <;> omega

structure MonthlyRunModel where
  daily : ℕ
  weekDays : ℕ
  monday : ℕ
  thursday : ℕ
  daysThuFri : ℕ
  weekly : ℕ
  weeks : ℕ
  monthly : ℕ
  hDaily : daily = 3
  hWeekDays : weekDays = 3
  hMonday : monday = weekDays * daily
  hThursday : thursday = 2 * daily
  hDaysThuFri : daysThuFri = 2
  hWeekly : weekly = monday + daysThuFri * thursday
  hWeeks : weeks = 4
  hMonthly : monthly = weeks * weekly

theorem monday_to_wednesday_miles (m : MonthlyRunModel) : m.monday = 9 := by
  cases m <;> simp_all at * <;> omega

theorem thursday_friday_each (m : MonthlyRunModel) : m.thursday = 6 := by
  cases m <;> simp_all at * <;> omega

theorem weekly_miles (m : MonthlyRunModel) : m.weekly = 21 := by
  have h1 := monday_to_wednesday_miles m
  have h2 := thursday_friday_each m
  cases m <;> simp_all at * <;> omega

theorem monthly_miles (m : MonthlyRunModel) : m.monthly = 84 := by
  have h := weekly_miles m
  cases m <;> simp_all at * <;> omega

structure SavingsModel where
  goal : ℕ
  existing : ℕ
  remaining : ℕ
  months : ℕ
  monthly : ℕ
  hGoal : goal = 1000
  hExisting : existing = 100
  hRemaining : goal = existing + remaining
  hMonths : months = 12
  hMonthly : remaining = months * monthly

theorem remaining_savings_goal (m : SavingsModel) : m.remaining = 900 := by
  cases m <;> simp_all at * <;> omega

theorem monthly_savings (m : SavingsModel) : m.monthly = 75 := by
  have h := remaining_savings_goal m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A18P1
