import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A18P3

structure BillsModel where
  fiftyBills : ℕ
  tenBills : ℕ
  fiveBills : ℕ
  totalBills : ℕ
  hFifty : 50 * fiftyBills = 100
  hTen : 10 * tenBills = 50
  hFive : 5 * fiveBills = 50
  hTotal : totalBills = fiftyBills + tenBills + fiveBills

theorem bills_fifties (m : BillsModel) : m.fiftyBills = 2 := by
  omega
theorem bills_tens (m : BillsModel) : m.tenBills = 5 := by
  omega
theorem bills_fives (m : BillsModel) : m.fiveBills = 10 := by
  omega
theorem bills_total (m : BillsModel) : m.totalBills = 17 := by
  have h1 := bills_fifties m
  have h2 := bills_tens m
  have h3 := bills_fives m
  omega
structure AgesModel where
  hansNow : ℕ
  hansFuture : ℕ
  annikaFuture : ℕ
  annikaNow : ℕ
  years : ℕ
  hHansNow : hansNow = 8
  hYears : years = 4
  hHansFuture : hansFuture = hansNow + years
  hAnnikaFuture : annikaFuture = 3 * hansFuture
  hAnnikaNow : annikaFuture = annikaNow + years

theorem ages_hans_future (m : AgesModel) : m.hansFuture = 12 := by
  omega
theorem ages_annika_future (m : AgesModel) : m.annikaFuture = 36 := by
  have h := ages_hans_future m
  omega
theorem ages_annika_now (m : AgesModel) : m.annikaNow = 32 := by
  have h := ages_annika_future m
  omega
structure TicketsModel where
  ticketCount : ℕ
  priceEach : ℕ
  subtotal : ℕ
  discountPercent : ℕ
  spent : ℕ
  hTicketCount : ticketCount = 24
  hPriceEach : priceEach = 7
  hSubtotal : subtotal = ticketCount * priceEach
  hDiscount : discountPercent = 50
  hSpent : 100 * spent = 50 * subtotal

theorem tickets_subtotal (m : TicketsModel) : m.subtotal = 168 := by
  omega
theorem tickets_spent (m : TicketsModel) : m.spent = 84 := by
  have h := tickets_subtotal m
  omega
structure PianoModel where
  weekdayDays : ℕ
  weekdayMinutesEach : ℕ
  weekdayMinutes : ℕ
  saturdayMinutes : ℕ
  weeklyMinutes : ℕ
  weeklyHours : ℕ
  hWeekdayDays : weekdayDays = 5
  hWeekdayMinutesEach : weekdayMinutesEach = 30
  hWeekdayMinutes : weekdayMinutes = weekdayDays * weekdayMinutesEach
  hSaturday : saturdayMinutes = 3 * weekdayMinutesEach
  hWeeklyMinutes : weeklyMinutes = weekdayMinutes + saturdayMinutes
  hHours : weeklyMinutes = 60 * weeklyHours

theorem piano_weekday_minutes (m : PianoModel) : m.weekdayMinutes = 150 := by
  omega
theorem piano_saturday_minutes (m : PianoModel) : m.saturdayMinutes = 90 := by
  omega
theorem piano_weekly_minutes (m : PianoModel) : m.weeklyMinutes = 240 := by
  have h1 := piano_weekday_minutes m
  have h2 := piano_saturday_minutes m
  omega
theorem piano_weekly_hours (m : PianoModel) : m.weeklyHours = 4 := by
  have h := piano_weekly_minutes m
  omega
structure SleepModel where
  samanthaDailyHours : ℕ
  babyDailyHours : ℕ
  fatherDailyHours : ℕ
  daysPerWeek : ℕ
  fatherWeeklyHours : ℕ
  hSamantha : samanthaDailyHours = 8
  hBaby : 2 * babyDailyHours = 5 * samanthaDailyHours
  hFatherDaily : 2 * fatherDailyHours = babyDailyHours
  hDays : daysPerWeek = 7
  hFatherWeekly : fatherWeeklyHours = daysPerWeek * fatherDailyHours

theorem sleep_baby_daily (m : SleepModel) : m.babyDailyHours = 20 := by
  omega
theorem sleep_father_daily (m : SleepModel) : m.fatherDailyHours = 10 := by
  have h := sleep_baby_daily m
  omega
theorem sleep_father_weekly (m : SleepModel) : m.fatherWeeklyHours = 70 := by
  have h := sleep_father_daily m
  omega
end LemmaWeave.Problems.GSM8K.Sprint0930A18P3
