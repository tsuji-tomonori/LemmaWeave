import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP2

structure TextModel where
  recipients : ℕ
  mondayEach : ℕ
  tuesdayEach : ℕ
  monday : ℕ
  tuesday : ℕ
  total : ℕ
  hRecipients : recipients = 2
  hMondayEach : mondayEach = 5
  hTuesdayEach : tuesdayEach = 15
  hMonday : monday = recipients * mondayEach
  hTuesday : tuesday = recipients * tuesdayEach
  hTotal : total = monday + tuesday

theorem monday_texts (m : TextModel) : m.monday = 10 := by
  cases m <;> simp_all at * <;> omega

theorem tuesday_texts (m : TextModel) : m.tuesday = 30 := by
  cases m <;> simp_all at * <;> omega

theorem text_total (m : TextModel) : m.total = 40 := by
  have h1 := monday_texts m
  have h2 := tuesday_texts m
  cases m <;> simp_all at * <;> omega

structure ToiletModel where
  oldPerFlush : ℕ
  reductionPercent : ℕ
  savedPerFlush : ℕ
  flushesPerDay : ℕ
  dailySaved : ℕ
  juneDays : ℕ
  totalSaved : ℕ
  hOld : oldPerFlush = 5
  hReduction : reductionPercent = 80
  hPercent : 100 * savedPerFlush = reductionPercent * oldPerFlush
  hFlushes : flushesPerDay = 15
  hDaily : dailySaved = savedPerFlush * flushesPerDay
  hDays : juneDays = 30
  hTotal : totalSaved = dailySaved * juneDays

theorem saved_per_flush (m : ToiletModel) : m.savedPerFlush = 4 := by
  cases m <;> simp_all at * <;> omega

theorem daily_savings (m : ToiletModel) : m.dailySaved = 60 := by
  have h := saved_per_flush m
  cases m <;> simp_all at * <;> omega

theorem toilet_savings (m : ToiletModel) : m.totalSaved = 1800 := by
  have h := daily_savings m
  cases m <;> simp_all at * <;> omega

structure CornModel where
  seedsPerBag : ℕ
  bagCost : ℕ
  seedsPerEar : ℕ
  costPerEar : ℕ
  salePerEar : ℕ
  profitPerEar : ℕ
  totalProfit : ℕ
  ears : ℕ
  hSeedsPerBag : seedsPerBag = 100
  hBagCost : bagCost = 50
  hSeedsPerEar : seedsPerEar = 4
  hCost : seedsPerBag * costPerEar = bagCost * seedsPerEar
  hSale : salePerEar = 10
  hProfit : profitPerEar + costPerEar = salePerEar
  hTotalProfit : totalProfit = 4000
  hEars : profitPerEar * ears = totalProfit

theorem corn_cost_per_ear (m : CornModel) : m.costPerEar = 2 := by
  cases m <;> simp_all at * <;> omega

theorem corn_profit_per_ear (m : CornModel) : m.profitPerEar = 8 := by
  have h := corn_cost_per_ear m
  cases m <;> simp_all at * <;> omega

theorem corn_ears (m : CornModel) : m.ears = 500 := by
  have h := corn_profit_per_ear m
  cases m <;> simp_all at * <;> omega

structure WormModel where
  weeksBefore : ℕ
  weeksAfter : ℕ
  daysPerWeek : ℕ
  days : ℕ
  eatenPerDay : ℕ
  eaten : ℕ
  initial : ℕ
  added : ℕ
  available : ℕ
  remaining : ℕ
  hBefore : weeksBefore = 2
  hAfter : weeksAfter = 1
  hDaysPerWeek : daysPerWeek = 7
  hDays : days = (weeksBefore + weeksAfter) * daysPerWeek
  hEatenPerDay : eatenPerDay = 2
  hEaten : eaten = days * eatenPerDay
  hInitial : initial = 60
  hAdded : added = 8
  hAvailable : available = initial + added
  hRemaining : remaining + eaten = available

theorem worm_days (m : WormModel) : m.days = 21 := by
  cases m <;> simp_all at * <;> omega

theorem worm_eaten (m : WormModel) : m.eaten = 42 := by
  have h := worm_days m
  cases m <;> simp_all at * <;> omega

theorem worm_available (m : WormModel) : m.available = 68 := by
  cases m <;> simp_all at * <;> omega

theorem worm_remaining (m : WormModel) : m.remaining = 26 := by
  have h1 := worm_eaten m
  have h2 := worm_available m
  cases m <;> simp_all at * <;> omega

structure CakeModel where
  grams : ℕ
  parts : ℕ
  onePart : ℕ
  pierreMultiplier : ℕ
  pierre : ℕ
  hGrams : grams = 400
  hParts : parts = 8
  hEqualParts : parts * onePart = grams
  hMultiplier : pierreMultiplier = 2
  hPierre : pierre = pierreMultiplier * onePart

theorem one_cake_part (m : CakeModel) : m.onePart = 50 := by
  cases m <;> simp_all at * <;> omega

theorem pierre_cake (m : CakeModel) : m.pierre = 100 := by
  have h := one_cake_part m
  cases m <;> simp_all at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP2
