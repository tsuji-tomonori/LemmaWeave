import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A20P2

structure StockModel where
  greenBeans : ℕ
  rice : ℕ
  sugar : ℕ
  riceLost : ℕ
  sugarLost : ℕ
  riceRemaining : ℕ
  sugarRemaining : ℕ
  totalRemaining : ℕ
  hGreen : greenBeans = 60
  hRiceRelation : rice + 30 = greenBeans
  hSugarRelation : sugar + 10 = greenBeans
  hRiceLost : 3 * riceLost = rice
  hSugarLost : 5 * sugarLost = sugar
  hRiceRemaining : riceRemaining + riceLost = rice
  hSugarRemaining : sugarRemaining + sugarLost = sugar
  hTotal : totalRemaining = greenBeans + riceRemaining + sugarRemaining

theorem stock_rice (m : StockModel) : m.rice = 30 := by
  omega
theorem stock_sugar (m : StockModel) : m.sugar = 50 := by
  omega
theorem stock_rice_remaining (m : StockModel) : m.riceRemaining = 20 := by
  have h := stock_rice m
  omega
theorem stock_sugar_remaining (m : StockModel) : m.sugarRemaining = 40 := by
  have h := stock_sugar m
  omega
theorem stock_total_remaining (m : StockModel) : m.totalRemaining = 120 := by
  have h1 := stock_rice_remaining m
  have h2 := stock_sugar_remaining m
  omega
structure ScreenTimeModel where
  dailyHours : ℕ
  totalMinutes : ℕ
  morningMinutes : ℕ
  eveningMinutes : ℕ
  hHours : dailyHours = 2
  hTotalMinutes : totalMinutes = 60 * dailyHours
  hMorning : morningMinutes = 45
  hSplit : morningMinutes + eveningMinutes = totalMinutes

theorem screen_total_minutes (m : ScreenTimeModel) : m.totalMinutes = 120 := by
  omega
theorem screen_evening_minutes (m : ScreenTimeModel) : m.eveningMinutes = 75 := by
  have h := screen_total_minutes m
  omega
structure TomatoesModel where
  yesterday : ℕ
  todayMore : ℕ
  today : ℕ
  twoDayTotal : ℕ
  hYesterday : yesterday = 120
  hMore : todayMore = 50
  hToday : today = yesterday + todayMore
  hTotal : twoDayTotal = yesterday + today

theorem tomatoes_today (m : TomatoesModel) : m.today = 170 := by
  omega
theorem tomatoes_two_day_total (m : TomatoesModel) : m.twoDayTotal = 290 := by
  have h := tomatoes_today m
  omega
theorem tomatoes_readings_differ (m : TomatoesModel) : m.today ≠ m.twoDayTotal := by
  have h1 := tomatoes_today m
  have h2 := tomatoes_two_day_total m
  omega

structure GermanClassModel where
  initial : ℕ
  interested : ℕ
  quarterDrop : ℕ
  frustratedDrop : ℕ
  afterFirstDrops : ℕ
  afterFirstRally : ℕ
  schedulingDrop : ℕ
  afterSchedulingDrop : ℕ
  finalRallyAdd : ℕ
  beforeHalfDrop : ℕ
  afterHalfDrop : ℕ
  stillEnrolled : ℕ
  hInitial : initial = 8
  hInterested : interested = 8
  hQuarter : 4 * quarterDrop = interested
  hFrustrated : frustratedDrop = 2
  hAfterFirst : afterFirstDrops + quarterDrop + frustratedDrop = initial + interested
  hRally : afterFirstRally = 6 * afterFirstDrops
  hScheduling : schedulingDrop = 2
  hAfterScheduling : afterSchedulingDrop + schedulingDrop = afterFirstRally
  hFinalAdd : finalRallyAdd = 6
  hBeforeHalf : beforeHalfDrop = afterSchedulingDrop + finalRallyAdd
  hHalfDrop : beforeHalfDrop = 2 * afterHalfDrop
  hGraduatedHalf : afterHalfDrop = 2 * stillEnrolled

theorem german_after_first_drops (m : GermanClassModel) : m.afterFirstDrops = 12 := by
  omega
theorem german_after_first_rally (m : GermanClassModel) : m.afterFirstRally = 72 := by
  have h := german_after_first_drops m
  omega
theorem german_after_scheduling_drop (m : GermanClassModel) : m.afterSchedulingDrop = 70 := by
  have h := german_after_first_rally m
  omega
theorem german_before_half_drop (m : GermanClassModel) : m.beforeHalfDrop = 76 := by
  have h := german_after_scheduling_drop m
  omega
theorem german_after_half_drop (m : GermanClassModel) : m.afterHalfDrop = 38 := by
  have h := german_before_half_drop m
  omega
theorem german_still_enrolled (m : GermanClassModel) : m.stillEnrolled = 19 := by
  have h := german_after_half_drop m
  omega
structure CandlesModel where
  bakedCakes : ℕ
  givenCakes : ℕ
  remainingCakes : ℕ
  candlesPerCake : ℕ
  totalCandles : ℕ
  hBaked : bakedCakes = 8
  hGiven : givenCakes = 2
  hRemaining : remainingCakes + givenCakes = bakedCakes
  hPerCake : candlesPerCake = 6
  hTotal : totalCandles = 6 * remainingCakes

theorem candles_remaining_cakes (m : CandlesModel) : m.remainingCakes = 6 := by
  omega
theorem candles_total (m : CandlesModel) : m.totalCandles = 36 := by
  have h := candles_remaining_cakes m
  omega
end LemmaWeave.Problems.GSM8K.Sprint0930A20P2
