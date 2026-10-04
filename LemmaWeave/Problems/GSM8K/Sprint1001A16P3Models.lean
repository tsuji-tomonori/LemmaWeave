import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A16P3

structure RandyModel where
  initial gift afterGift gaveSally left : ℕ
  hGift : gift = 200
  hAfterGift : afterGift = initial + gift
  hGave : gaveSally = 1200
  hLeft : left = 2000
  hDistribution : afterGift = gaveSally + left

theorem randy_after_gift (m : RandyModel) : m.afterGift = 3200 := by
  cases m <;> omega

theorem randy_initial_money (m : RandyModel) : m.initial = 3000 := by
  have h := randy_after_gift m
  cases m <;> omega

structure CrabModel where
  dishesPerDay halfPoundsPerDish dailyHalfPounds halvesPerPound poundsPerDay pricePerPound dailyCost daysPerWeek closedDays openDays weeklyCost : ℕ
  hDishes : dishesPerDay = 40
  hHalfPerDish : halfPoundsPerDish = 3
  hDailyHalf : dailyHalfPounds = dishesPerDay * halfPoundsPerDish
  hHalvesPerPound : halvesPerPound = 2
  hPounds : dailyHalfPounds = halvesPerPound * poundsPerDay
  hPrice : pricePerPound = 8
  hDailyCost : dailyCost = poundsPerDay * pricePerPound
  hDays : daysPerWeek = 7
  hClosed : closedDays = 3
  hOpen : daysPerWeek = closedDays + openDays
  hWeekly : weeklyCost = dailyCost * openDays

theorem crab_daily_half_pounds (m : CrabModel) : m.dailyHalfPounds = 120 := by
  cases m <;> omega

theorem crab_daily_pounds (m : CrabModel) : m.poundsPerDay = 60 := by
  have h := crab_daily_half_pounds m
  cases m <;> omega

theorem crab_open_days (m : CrabModel) : m.openDays = 4 := by
  cases m <;> omega

theorem weekly_crab_cost (m : CrabModel) : m.weeklyCost = 1920 := by
  have h1 := crab_daily_pounds m
  have h2 := crab_open_days m
  cases m <;> omega

structure BookModel where
  past fewer current multiplier extra future : ℕ
  hPast : past = 200
  hFewer : fewer = 40
  hCurrent : past = current + fewer
  hMultiplier : multiplier = 5
  hExtra : extra = 60
  hFuture : future = multiplier * current + extra

theorem current_books (m : BookModel) : m.current = 160 := by
  cases m <;> omega

theorem future_books (m : BookModel) : m.future = 860 := by
  have h := current_books m
  cases m <;> omega

structure ShredModel where
  contracts pagesPerContract totalPages pagesPerShred shreds : ℕ
  hContracts : contracts = 2
  hPagesPerContract : pagesPerContract = 132
  hTotal : totalPages = contracts * pagesPerContract
  hPagesPerShred : pagesPerShred = 6
  hShreds : totalPages = pagesPerShred * shreds

theorem contract_pages (m : ShredModel) : m.totalPages = 264 := by
  cases m <;> omega

theorem shred_count (m : ShredModel) : m.shreds = 44 := by
  have h := contract_pages m
  cases m <;> omega

structure TestModel where
  totalQuestions hours minutesPerHour totalMinutes minutesPerAnswer answered unanswered : ℕ
  hQuestions : totalQuestions = 100
  hHours : hours = 2
  hMinutesPerHour : minutesPerHour = 60
  hTotalMinutes : totalMinutes = hours * minutesPerHour
  hMinutesPerAnswer : minutesPerAnswer = 2
  hAnswered : totalMinutes = minutesPerAnswer * answered
  hUnanswered : totalQuestions = answered + unanswered

theorem test_minutes (m : TestModel) : m.totalMinutes = 120 := by
  cases m <;> omega

theorem answered_questions (m : TestModel) : m.answered = 60 := by
  have h := test_minutes m
  cases m <;> omega

theorem unanswered_questions (m : TestModel) : m.unanswered = 40 := by
  have h := answered_questions m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A16P3
