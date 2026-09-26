import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A15

structure Rowing where
  perimeter : ℕ
  swimSpeed : ℕ
  rowSpeed : ℕ
  hours : ℕ
  hPerimeter : perimeter = 4 * 15
  hSwim : swimSpeed * 20 = 60
  hRow : rowSpeed = 2 * swimSpeed
  hHours : hours * rowSpeed = perimeter
theorem rowing_perimeter (m : Rowing) : m.perimeter = 60 := by rw [m.hPerimeter] <;> norm_num
theorem rowing_swim_speed (m : Rowing) : m.swimSpeed = 3 := by
  have h := m.hSwim
  omega
theorem rowing_row_speed (m : Rowing) : m.rowSpeed = 6 := by rw [m.hRow, rowing_swim_speed m] <;> norm_num
theorem rowing_solution (m : Rowing) : m.hours = 10 := by
  have h := m.hHours; rw [rowing_perimeter m, rowing_row_speed m] at h; omega

structure Milk where
  beforeDinner : ℕ
  beforeLunchDrink : ℕ
  beforePurchase : ℕ
  initial : ℕ
  hDinner : beforeDinner = 56 + 8
  hLunchDrink : beforeLunchDrink = beforeDinner + 8
  hPurchase : beforePurchase + 64 = beforeLunchDrink
  hInitial : initial = beforePurchase + 8
theorem milk_before_dinner (m : Milk) : m.beforeDinner = 64 := by rw [m.hDinner] <;> norm_num
theorem milk_before_lunch_drink (m : Milk) : m.beforeLunchDrink = 72 := by rw [m.hLunchDrink, milk_before_dinner m] <;> norm_num
theorem milk_before_purchase (m : Milk) : m.beforePurchase = 8 := by
  have h := m.hPurchase; rw [milk_before_lunch_drink m] at h; omega
theorem milk_solution (m : Milk) : m.initial = 16 := by rw [m.hInitial, milk_before_purchase m] <;> norm_num

structure Mosaic where
  lengthInches : ℕ
  heightInches : ℕ
  tiles : ℕ
  hLength : lengthInches = 15 * 12
  hHeight : heightInches = 10 * 12
  hTiles : tiles = lengthInches * heightInches
theorem mosaic_length (m : Mosaic) : m.lengthInches = 180 := by rw [m.hLength] <;> norm_num
theorem mosaic_height (m : Mosaic) : m.heightInches = 120 := by rw [m.hHeight] <;> norm_num
theorem mosaic_solution (m : Mosaic) : m.tiles = 21600 := by rw [m.hTiles, mosaic_length m, mosaic_height m] <;> norm_num

structure Paper where
  colored : ℕ
  white : ℕ
  scrap : ℕ
  total : ℕ
  hColored : colored = 3 * 2
  hWhite : white = 2 * 4
  hScrap : scrap = 5 * 20
  hTotal : total = colored + white + scrap
theorem paper_colored (m : Paper) : m.colored = 6 := by rw [m.hColored] <;> norm_num
theorem paper_white (m : Paper) : m.white = 8 := by rw [m.hWhite] <;> norm_num
theorem paper_scrap (m : Paper) : m.scrap = 100 := by rw [m.hScrap] <;> norm_num
theorem paper_solution (m : Paper) : m.total = 114 := by rw [m.hTotal, paper_colored m, paper_white m, paper_scrap m] <;> norm_num

structure Workout where
  tuesday : ℕ
  wednesday : ℕ
  thursday : ℕ
  total : ℕ
  hTuesday : tuesday + 2 = 4
  hWednesday : wednesday = 2 * 4
  hThursday : thursday = 2 * tuesday
  hTotal : total = 4 + tuesday + wednesday + thursday
theorem workout_tuesday (m : Workout) : m.tuesday = 2 := by
  have h := m.hTuesday
  omega
theorem workout_wednesday (m : Workout) : m.wednesday = 8 := by rw [m.hWednesday] <;> norm_num
theorem workout_thursday (m : Workout) : m.thursday = 4 := by rw [m.hThursday, workout_tuesday m] <;> norm_num
theorem workout_solution (m : Workout) : m.total = 18 := by rw [m.hTotal, workout_tuesday m, workout_wednesday m, workout_thursday m] <;> norm_num

structure Walls where
  each : ℕ
  total : ℕ
  hEach : each = 30 * 50
  hTotal : total = each * 2
theorem walls_each (m : Walls) : m.each = 1500 := by rw [m.hEach] <;> norm_num
theorem walls_solution (m : Walls) : m.total = 3000 := by rw [m.hTotal, walls_each m] <;> norm_num

structure Wool where
  pounds : ℕ
  revenue : ℕ
  profit : ℕ
  hPounds : pounds = 200 * 10
  hRevenue : revenue = pounds * 20
  hProfit : profit + 2000 = revenue
theorem wool_pounds (m : Wool) : m.pounds = 2000 := by rw [m.hPounds] <;> norm_num
theorem wool_revenue (m : Wool) : m.revenue = 40000 := by rw [m.hRevenue, wool_pounds m] <;> norm_num
theorem wool_solution (m : Wool) : m.profit = 38000 := by
  have h := m.hProfit; rw [wool_revenue m] at h; omega

structure Footprints where
  pogo : ℕ
  grimzi : ℕ
  total : ℕ
  hPogo : pogo = 6000 * 4
  hGrimzi : grimzi * 6 = 6000 * 3
  hTotal : total = pogo + grimzi
theorem footprints_pogo (m : Footprints) : m.pogo = 24000 := by rw [m.hPogo] <;> norm_num
theorem footprints_grimzi (m : Footprints) : m.grimzi = 3000 := by
  have h := m.hGrimzi
  omega
theorem footprints_solution (m : Footprints) : m.total = 27000 := by rw [m.hTotal, footprints_pogo m, footprints_grimzi m] <;> norm_num

structure Bank where
  interestOne : ℕ
  balanceOne : ℕ
  interestTwo : ℕ
  balanceTwo : ℕ
  hInterestOne : interestOne * 100 = 100 * 10
  hBalanceOne : balanceOne = 100 + interestOne + 10
  hInterestTwo : interestTwo * 100 = balanceOne * 10
  hBalanceTwo : balanceTwo = balanceOne + interestTwo + 10
theorem bank_interest_one (m : Bank) : m.interestOne = 10 := by
  have h := m.hInterestOne
  omega
theorem bank_balance_one (m : Bank) : m.balanceOne = 120 := by rw [m.hBalanceOne, bank_interest_one m] <;> norm_num
theorem bank_interest_two (m : Bank) : m.interestTwo = 12 := by
  have h := m.hInterestTwo; rw [bank_balance_one m] at h; omega
theorem bank_solution (m : Bank) : m.balanceTwo = 142 := by rw [m.hBalanceTwo, bank_balance_one m, bank_interest_two m] <;> norm_num

structure Chairs where
  unit : ℕ
  two : ℕ
  table : ℕ
  spent : ℕ
  remaining : ℕ
  hUnit : unit * 5 = 55
  hTwo : two = unit * 2
  hTable : table = unit * 3
  hSpent : spent = two + table
  hRemaining : remaining + spent = 100
theorem chairs_unit (m : Chairs) : m.unit = 11 := by
  have h := m.hUnit
  omega
theorem chairs_two (m : Chairs) : m.two = 22 := by rw [m.hTwo, chairs_unit m] <;> norm_num
theorem chairs_table (m : Chairs) : m.table = 33 := by rw [m.hTable, chairs_unit m] <;> norm_num
theorem chairs_spent (m : Chairs) : m.spent = 55 := by rw [m.hSpent, chairs_two m, chairs_table m] <;> norm_num
theorem chairs_solution (m : Chairs) : m.remaining = 45 := by
  have h := m.hRemaining; rw [chairs_spent m] at h; omega

structure Phone where
  charge : ℕ
  use : ℕ
  hCharge : charge * 5 = 10 * 3
  hUse : use = charge * 2
theorem phone_charge (m : Phone) : m.charge = 6 := by
  have h := m.hCharge
  omega
theorem phone_solution (m : Phone) : m.use = 12 := by rw [m.hUse, phone_charge m] <;> norm_num

structure Flowers where
  total : ℕ
  green : ℕ
  red : ℕ
  hTotal : total = 6 * 13
  hGreen : green = 2 * 12
  hRed : red + 12 + green = total
theorem flowers_total (m : Flowers) : m.total = 78 := by rw [m.hTotal] <;> norm_num
theorem flowers_green_conventional (m : Flowers) : m.green = 24 := by rw [m.hGreen] <;> norm_num
theorem flowers_counterexample : ∃ total green red : ℕ, total = 78 ∧ green = 36 ∧ red = 30 ∧ red + 12 + green = total := by
  exact ⟨78, 36, 30, rfl, rfl, rfl, by norm_num⟩
theorem flowers_solution (m : Flowers) : m.red = 42 := by
  have h := m.hRed; rw [flowers_total m, flowers_green_conventional m] at h; omega

structure Cats where
  gordonPersian : ℕ
  gordonMaine : ℕ
  hawkeyeMaine : ℕ
  total : ℕ
  hPersian : gordonPersian * 2 = 4
  hGordonMaine : gordonMaine = 2 + 1
  hHawkeye : hawkeyeMaine + 1 = gordonMaine
  hTotal : total = 4 + 2 + gordonPersian + gordonMaine + hawkeyeMaine
theorem cats_gordon_persian (m : Cats) : m.gordonPersian = 2 := by
  have h := m.hPersian
  omega
theorem cats_gordon_maine (m : Cats) : m.gordonMaine = 3 := by rw [m.hGordonMaine] <;> norm_num
theorem cats_hawkeye (m : Cats) : m.hawkeyeMaine = 2 := by
  have h := m.hHawkeye; rw [cats_gordon_maine m] at h; omega
theorem cats_solution (m : Cats) : m.total = 13 := by rw [m.hTotal, cats_gordon_persian m, cats_gordon_maine m, cats_hawkeye m] <;> norm_num

structure Tickets where
  other : ℕ
  koala : ℕ
  total : ℕ
  hOther : other = 10 + 15
  hKoala : koala = other
  hTotal : total = other + koala
theorem tickets_other (m : Tickets) : m.other = 25 := by rw [m.hOther] <;> norm_num
theorem tickets_koala (m : Tickets) : m.koala = 25 := by rw [m.hKoala, tickets_other m]
theorem tickets_solution (m : Tickets) : m.total = 50 := by rw [m.hTotal, tickets_other m, tickets_koala m] <;> norm_num

structure Computers where
  used : ℕ
  savings : ℕ
  hUsed : used = 2 * 200
  hSavings : savings + used = 600
theorem computers_used (m : Computers) : m.used = 400 := by rw [m.hUsed] <;> norm_num
theorem computers_solution (m : Computers) : m.savings = 200 := by
  have h := m.hSavings; rw [computers_used m] at h; omega

end LemmaWeave.Problems.GSM8K.Sprint0922A15
