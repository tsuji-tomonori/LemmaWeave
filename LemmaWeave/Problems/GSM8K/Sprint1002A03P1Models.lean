import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A03P1

structure MachineModel where
  parts : ℕ
  patent : ℕ
  totalCost : ℕ
  unitPrice : ℕ
  machines : ℕ
  revenue : ℕ
  hParts : parts = 3600
  hPatent : patent = 4500
  hTotal : totalCost = parts + patent
  hUnitPrice : unitPrice = 180
  hRevenue : revenue = unitPrice * machines
  hBreakEven : revenue = totalCost

theorem machine_total_cost (m : MachineModel) : m.totalCost = 8100 := by cases m <;> simp_all <;> omega
theorem break_even_machine_count (m : MachineModel) : m.machines = 45 := by
  have h := machine_total_cost m
  cases m <;> simp_all <;> omega

structure CameraModel where
  oldCamera : ℕ
  increase : ℕ
  newCamera : ℕ
  lensList : ℕ
  discount : ℕ
  lensPaid : ℕ
  totalPaid : ℕ
  hOld : oldCamera = 4000
  hIncreasePercent : 10 * increase = 3 * oldCamera
  hNew : newCamera = oldCamera + increase
  hLensList : lensList = 400
  hDiscount : discount = 200
  hLensPaid : lensPaid + discount = lensList
  hTotal : totalPaid = newCamera + lensPaid

theorem camera_increase (m : CameraModel) : m.increase = 1200 := by cases m <;> simp_all <;> omega
theorem new_camera_price (m : CameraModel) : m.newCamera = 5200 := by
  have h := camera_increase m
  cases m <;> simp_all <;> omega
theorem discounted_lens_price (m : CameraModel) : m.lensPaid = 200 := by cases m <;> simp_all <;> omega
theorem camera_and_lens_total (m : CameraModel) : m.totalPaid = 5400 := by
  have h1 := new_camera_price m
  have h2 := discounted_lens_price m
  cases m <;> simp_all <;> omega

structure SeedModel where
  seed : ℕ
  fertilizer : ℕ
  total : ℕ
  hRatio : seed = 3 * fertilizer
  hTotal : seed + fertilizer = total
  hCombined : total = 60

theorem fertilizer_gallons (m : SeedModel) : m.fertilizer = 15 := by cases m <;> simp_all <;> omega
theorem seed_gallons (m : SeedModel) : m.seed = 45 := by
  have h := fertilizer_gallons m
  cases m <;> simp_all <;> omega

structure SavingsModel where
  carIncome : ℕ
  dogIncome : ℕ
  monthlyIncome : ℕ
  monthlySaved : ℕ
  target : ℕ
  months : ℕ
  hCar : carIncome = 20
  hDog : dogIncome = 40
  hIncome : monthlyIncome = carIncome + dogIncome
  hHalf : 2 * monthlySaved = monthlyIncome
  hTarget : target = 150
  hAccumulation : target = monthlySaved * months

theorem monthly_savings (m : SavingsModel) : m.monthlySaved = 30 := by cases m <;> simp_all <;> omega
theorem months_to_save (m : SavingsModel) : m.months = 5 := by
  have hs := monthly_savings m
  have ha := m.hAccumulation
  rw [hs] at ha
  omega

structure MealModel where
  prepared : ℕ
  donated : ℕ
  total : ℕ
  alreadyGiven : ℕ
  remaining : ℕ
  hPrepared : prepared = 113
  hDonated : donated = 50
  hTotal : total = prepared + donated
  hGiven : alreadyGiven = 85
  hRemaining : alreadyGiven + remaining = total

theorem total_meals (m : MealModel) : m.total = 163 := by cases m <;> simp_all <;> omega
theorem remaining_meals (m : MealModel) : m.remaining = 78 := by
  have h := total_meals m
  cases m <;> simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A03P1
