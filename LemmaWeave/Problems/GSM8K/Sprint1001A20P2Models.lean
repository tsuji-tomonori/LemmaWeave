import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A20P2

structure MallModel where
  total : ℕ
  perCar : ℕ
  hTotal : total = 20 + 30
  hEqualCars : total = 10 * perCar

theorem mall_customers_total (m : MallModel) : m.total = 50 := by cases m <;> simp_all <;> omega
theorem mall_customers_per_car (m : MallModel) : m.perCar = 5 := by
  have h := mall_customers_total m
  cases m <;> simp_all <;> omega

structure LibraryFeeModel where
  returnedCost : ℕ
  otherEach : ℕ
  otherTwo : ℕ
  total : ℕ
  hReturned : returnedCost = 20 * 50
  hOtherEach : otherEach = 31 * 50
  hOtherTwo : otherTwo = 2 * otherEach
  hTotal : total = returnedCost + otherTwo

theorem returned_book_fee (m : LibraryFeeModel) : m.returnedCost = 1000 := by cases m <;> simp_all <;> omega
theorem month_book_fee (m : LibraryFeeModel) : m.otherEach = 1550 := by cases m <;> simp_all <;> omega
theorem two_month_book_fees (m : LibraryFeeModel) : m.otherTwo = 3100 := by
  have h := month_book_fee m
  cases m <;> simp_all <;> omega
theorem library_total_fee (m : LibraryFeeModel) : m.total = 4100 := by
  have h1 := returned_book_fee m
  have h2 := two_month_book_fees m
  cases m <;> simp_all <;> omega

structure FlooringModel where
  central : ℕ
  hallway : ℕ
  total : ℕ
  hCentral : central = 10 * 10
  hHallway : hallway = 6 * 4
  hTotal : total = central + hallway

theorem central_floor_area (m : FlooringModel) : m.central = 100 := by cases m <;> simp_all <;> omega
theorem hallway_floor_area (m : FlooringModel) : m.hallway = 24 := by cases m <;> simp_all <;> omega
theorem flooring_total_area (m : FlooringModel) : m.total = 124 := by
  have h1 := central_floor_area m
  have h2 := hallway_floor_area m
  cases m <;> simp_all <;> omega

structure TransitModel where
  employees : ℕ
  drivers : ℕ
  nondrivers : ℕ
  transit : ℕ
  hEmployees : employees = 100
  hDrivers : 100 * drivers = 60 * employees
  hNonDrivers : employees = drivers + nondrivers
  hTransit : 2 * transit = nondrivers

theorem employee_drivers (m : TransitModel) : m.drivers = 60 := by cases m <;> simp_all <;> omega
theorem employee_nondrivers (m : TransitModel) : m.nondrivers = 40 := by
  have h := employee_drivers m
  cases m <;> simp_all <;> omega
theorem employee_public_transit (m : TransitModel) : m.transit = 20 := by
  have h := employee_nondrivers m
  cases m <;> simp_all <;> omega

structure TreatModel where
  dailyBones : ℕ
  dailyBiscuits : ℕ
  dailyCost : ℕ
  weeklyCost : ℕ
  hBones : dailyBones = 2 * 100
  hBiscuits : dailyBiscuits = 4 * 25
  hDaily : dailyCost = dailyBones + dailyBiscuits
  hWeekly : weeklyCost = 7 * dailyCost

theorem daily_bone_cost (m : TreatModel) : m.dailyBones = 200 := by cases m <;> simp_all <;> omega
theorem daily_biscuit_cost (m : TreatModel) : m.dailyBiscuits = 100 := by cases m <;> simp_all <;> omega
theorem weekly_treat_cost (m : TreatModel) : m.weeklyCost = 2100 := by
  have h1 := daily_bone_cost m
  have h2 := daily_biscuit_cost m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A20P2
