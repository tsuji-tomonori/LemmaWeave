import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A17

structure HeavyFilling where
  sandAtEighty : ℕ
  extraWeight : ℕ
  totalWeight : ℕ
  hSand : sandAtEighty * 10 = 250 * 8
  hExtra : extraWeight * 10 = sandAtEighty * 4
  hTotal : totalWeight = sandAtEighty + extraWeight

theorem filling_sand_weight (m : HeavyFilling) : m.sandAtEighty = 200 := by omega
theorem filling_extra_weight (m : HeavyFilling) : m.extraWeight = 80 := by omega
theorem filling_solution (m : HeavyFilling) : m.totalWeight = 280 := by omega

structure HoleDigging where
  fatherDepth : ℕ
  targetDepth : ℕ
  hours : ℕ
  hFather : fatherDepth = 4 * 400
  hTarget : targetDepth = 2 * fatherDepth - 400
  hHours : hours * 4 = targetDepth

theorem hole_father_depth (m : HoleDigging) : m.fatherDepth = 1600 := by rw [m.hFather]
theorem hole_target_depth (m : HoleDigging) : m.targetDepth = 2800 := by
  rw [m.hTarget, hole_father_depth m]
theorem hole_solution (m : HoleDigging) : m.hours = 700 := by omega

structure CarSales where
  perMonth : ℕ
  months : ℕ
  hMonthly : perMonth = 10 * 10
  hAll : months * perMonth = 500

theorem cars_per_month (m : CarSales) : m.perMonth = 100 := by rw [m.hMonthly]
theorem cars_solution (m : CarSales) : m.months = 5 := by omega

structure CalculatorAnswers where
  second : ℕ
  firstTwo : ℕ
  third : ℕ
  total : ℕ
  hSecond : second = 2 * 600
  hFirstTwo : firstTwo = 600 + second
  hThird : third + 400 = firstTwo
  hTotal : total = firstTwo + third

theorem calculator_second (m : CalculatorAnswers) : m.second = 1200 := by rw [m.hSecond]
theorem calculator_first_two (m : CalculatorAnswers) : m.firstTwo = 1800 := by
  rw [m.hFirstTwo, calculator_second m]
theorem calculator_third (m : CalculatorAnswers) : m.third = 1400 := by omega
theorem calculator_solution (m : CalculatorAnswers) : m.total = 3200 := by omega

/-- Reference reading: the 15 squares are the 15 locations called parks in the next sentence. -/
structure StreetlightsReference where
  used : ℕ
  unused : ℕ
  hUsed : used = 15 * 12
  hUnused : unused + used = 200

theorem lights_reference_used (m : StreetlightsReference) : m.used = 180 := by rw [m.hUsed]
theorem lights_reference_solution (m : StreetlightsReference) : m.unused = 20 := by omega
/-- If the number of parks is not identified with the 15 squares, 10 parks give a different result. -/
theorem lights_ten_parks_countermodel : 10 * 12 + 80 = 200 := by norm_num
theorem lights_unused_not_unique : (20 : ℕ) ≠ 80 := by norm_num

structure ToySpending where
  reed : ℕ
  quinn : ℕ
  annual : ℕ
  fourYears : ℕ
  hReed : reed + 20 = 80
  hQuinn : quinn * 2 = reed
  hAnnual : annual = 80 + reed + quinn
  hFour : fourYears = 4 * annual

theorem toys_reed (m : ToySpending) : m.reed = 60 := by omega
theorem toys_quinn (m : ToySpending) : m.quinn = 30 := by omega
theorem toys_annual (m : ToySpending) : m.annual = 170 := by omega
theorem toys_solution (m : ToySpending) : m.fourYears = 680 := by omega

structure TowelFolding where
  jane : ℕ
  kyla : ℕ
  anthony : ℕ
  total : ℕ
  hJane : jane = 3 * (60 / 5)
  hKyla : kyla = 5 * (60 / 10)
  hAnthony : anthony = 7 * (60 / 20)
  hTotal : total = jane + kyla + anthony

theorem towels_jane (m : TowelFolding) : m.jane = 36 := by rw [m.hJane]
theorem towels_kyla (m : TowelFolding) : m.kyla = 30 := by rw [m.hKyla]
theorem towels_anthony (m : TowelFolding) : m.anthony = 21 := by rw [m.hAnthony]
theorem towels_solution (m : TowelFolding) : m.total = 87 := by omega

structure Stickers where
  remaining : ℕ
  initial : ℕ
  hRemaining : remaining = 5 * 10
  hInitial : initial = 100 + remaining

theorem stickers_remaining (m : Stickers) : m.remaining = 50 := by rw [m.hRemaining]
theorem stickers_solution (m : Stickers) : m.initial = 150 := by omega

structure DrivingDistance where
  tamika : ℕ
  logan : ℕ
  farther : ℕ
  hTamika : tamika = 8 * 45
  hLogan : logan = 5 * 55
  hFarther : farther + logan = tamika

theorem driving_tamika (m : DrivingDistance) : m.tamika = 360 := by rw [m.hTamika]
theorem driving_logan (m : DrivingDistance) : m.logan = 275 := by rw [m.hLogan]
theorem driving_solution (m : DrivingDistance) : m.farther = 85 := by omega

/-- Money amounts are represented in cents. -/
structure TruckProfit where
  payment : ℕ
  gallons : ℕ
  gasCost : ℕ
  profit : ℕ
  hPayment : payment = 50 * 600
  hGallons : gallons * 20 = 600
  hGas : gasCost = 400 * gallons
  hProfit : profit + gasCost = payment

theorem profit_payment (m : TruckProfit) : m.payment = 30000 := by rw [m.hPayment]
theorem profit_gallons (m : TruckProfit) : m.gallons = 30 := by omega
theorem profit_gas (m : TruckProfit) : m.gasCost = 12000 := by omega
theorem profit_solution (m : TruckProfit) : m.profit = 18000 := by omega

theorem schedule_fixed_hours : 4 * 2 + 2 * 1 + 2 * 1 + 4 * 3 = 24 := by norm_num
theorem schedule_remaining_hours : 32 - 24 = 8 := by norm_num
theorem schedule_four_achievable : 24 + 2 * 4 ≤ 32 := by norm_num
theorem schedule_four_is_maximum : ∀ x : ℕ, 24 + 2 * x ≤ 32 → x ≤ 4 := by omega
theorem schedule_solution :
    (24 + 2 * 4 ≤ 32) ∧ (∀ x : ℕ, 24 + 2 * x ≤ 32 → x ≤ 4) := by
  exact ⟨schedule_four_achievable, schedule_four_is_maximum⟩

structure Cycling where
  wednesday : ℕ
  thursday : ℕ
  total : ℕ
  hWednesday : 2 * wednesday = 50
  hThursday : thursday = 40 + wednesday
  hTotal : total = 40 + 50 + wednesday + thursday

theorem cycling_wednesday (m : Cycling) : m.wednesday = 25 := by omega
theorem cycling_thursday (m : Cycling) : m.thursday = 65 := by omega
theorem cycling_solution (m : Cycling) : m.total = 180 := by omega

/-- Reference reading: "3 times more" means three times as many. -/
theorem goals_reference_michael : 3 * 4 = 12 := by norm_num
theorem goals_reference_total : 4 + 12 = 16 := by norm_num
/-- Literal additive reading: add three times Bruce's score to Bruce's score. -/
theorem goals_additive_total : 4 + (4 + 3 * 4) = 20 := by norm_num
theorem goals_total_not_unique : (16 : ℕ) ≠ 20 := by norm_num

structure GameDownload where
  remaining : ℕ
  minutes : ℕ
  hRemaining : remaining + 310 = 880
  hMinutes : minutes * 3 = remaining

theorem download_remaining (m : GameDownload) : m.remaining = 570 := by omega
theorem download_solution (m : GameDownload) : m.minutes = 190 := by omega

structure Hushpuppies where
  total : ℕ
  batches : ℕ
  minutes : ℕ
  hTotal : total = 5 * 20
  hBatches : batches * 10 = total
  hMinutes : minutes = 8 * batches

theorem hush_total (m : Hushpuppies) : m.total = 100 := by rw [m.hTotal]
theorem hush_batches (m : Hushpuppies) : m.batches = 10 := by omega
theorem hush_solution (m : Hushpuppies) : m.minutes = 80 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0923A17
