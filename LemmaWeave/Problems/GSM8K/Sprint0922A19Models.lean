import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A19

structure Zoo where
  total : ℕ
  exhibit : ℕ
  hTotal : total = 50 * 8
  hExhibit : exhibit * 100 = total * 80
theorem zoo_total (m : Zoo) : m.total = 400 := by rw [m.hTotal] <;> norm_num
theorem zoo_solution (m : Zoo) : m.exhibit = 320 := by
  have h := m.hExhibit
  rw [zoo_total m] at h
  omega

structure Cobbler where
  daily : ℕ
  monThu : ℕ
  fridayHours : ℕ
  friday : ℕ
  total : ℕ
  hDaily : daily = 3 * 8
  hMonThu : monThu = daily * 4
  hFridayHours : fridayHours + 8 = 11
  hFriday : friday = 3 * fridayHours
  hTotal : total = monThu + friday
theorem cobbler_daily (m : Cobbler) : m.daily = 24 := by rw [m.hDaily] <;> norm_num
theorem cobbler_mon_thu (m : Cobbler) : m.monThu = 96 := by rw [m.hMonThu, cobbler_daily m] <;> norm_num
theorem cobbler_friday_hours (m : Cobbler) : m.fridayHours = 3 := by
  have h := m.hFridayHours
  omega
theorem cobbler_friday (m : Cobbler) : m.friday = 9 := by rw [m.hFriday, cobbler_friday_hours m] <;> norm_num
theorem cobbler_solution (m : Cobbler) : m.total = 105 := by
  rw [m.hTotal, cobbler_mon_thu m, cobbler_friday m]

structure Siblings where
  sisterNow : ℕ
  difference : ℕ
  sisterFuture : ℕ
  hSisterNow : sisterNow = 10 * 2
  hDifference : difference + 10 = sisterNow
  hFuture : sisterFuture = 50 + difference
theorem siblings_sister_now (m : Siblings) : m.sisterNow = 20 := by rw [m.hSisterNow] <;> norm_num
theorem siblings_difference (m : Siblings) : m.difference = 10 := by
  have h := m.hDifference
  rw [siblings_sister_now m] at h
  omega
theorem siblings_solution (m : Siblings) : m.sisterFuture = 60 := by rw [m.hFuture, siblings_difference m] <;> norm_num

structure Rectangle where
  length : ℕ
  area : ℕ
  hLength : length = 7 * 4
  hArea : area = 7 * length
theorem rectangle_length (m : Rectangle) : m.length = 28 := by rw [m.hLength] <;> norm_num
theorem rectangle_solution (m : Rectangle) : m.area = 196 := by rw [m.hArea, rectangle_length m] <;> norm_num

structure Chocolate where
  weekdays : ℕ
  weekend : ℕ
  weekly : ℕ
  weeks : ℕ
  hWeekdays : weekdays = 5 * 2
  hWeekend : weekend = 2 * 1
  hWeekly : weekly = weekdays + weekend
  hWeeks : weeks * weekly = 24
theorem chocolate_weekdays (m : Chocolate) : m.weekdays = 10 := by rw [m.hWeekdays] <;> norm_num
theorem chocolate_weekend (m : Chocolate) : m.weekend = 2 := by rw [m.hWeekend] <;> norm_num
theorem chocolate_weekly (m : Chocolate) : m.weekly = 12 := by
  rw [m.hWeekly, chocolate_weekdays m, chocolate_weekend m]
theorem chocolate_solution (m : Chocolate) : m.weeks = 2 := by
  have h := m.hWeeks
  rw [chocolate_weekly m] at h
  omega

structure Lemonade where
  revenue : ℕ
  cups : ℕ
  hRevenue : revenue = 80 + 20
  hCups : cups * 2 = revenue
theorem lemonade_revenue (m : Lemonade) : m.revenue = 100 := by rw [m.hRevenue]
theorem lemonade_solution (m : Lemonade) : m.cups = 50 := by
  have h := m.hCups
  rw [lemonade_revenue m] at h
  omega

structure Grades where
  total : ℕ
  average : ℕ
  difference : ℕ
  hTotal : total = 90 + 80 + 70 + 100
  hAverage : average * 4 = total
  hDifference : difference + 82 = average
theorem grades_total (m : Grades) : m.total = 340 := by rw [m.hTotal]
theorem grades_average (m : Grades) : m.average = 85 := by
  have h := m.hAverage
  rw [grades_total m] at h
  omega
theorem grades_solution (m : Grades) : m.difference = 3 := by
  have h := m.hDifference
  rw [grades_average m] at h
  omega

structure Classes where
  otherCount : ℕ
  otherHalfHours : ℕ
  minutes : ℕ
  average : ℕ
  hOtherCount : otherCount + 2 = 7
  hOtherHalfHours : otherHalfHours + 3 = 15
  hMinutes : minutes = otherHalfHours * 30
  hAverage : average * otherCount = minutes
theorem classes_other_count (m : Classes) : m.otherCount = 5 := by
  have h := m.hOtherCount
  omega
theorem classes_other_time (m : Classes) : m.otherHalfHours = 12 := by
  have h := m.hOtherHalfHours
  omega
theorem classes_minutes (m : Classes) : m.minutes = 360 := by rw [m.hMinutes, classes_other_time m] <;> norm_num
theorem classes_solution (m : Classes) : m.average = 72 := by
  have h := m.hAverage
  rw [classes_other_count m, classes_minutes m] at h
  omega

structure Mileage where
  miles : ℕ
  cents : ℕ
  dollars : ℕ
  hMiles : miles = 18 + 26 + 20 + 20 + 16
  hCents : cents = miles * 36
  hDollars : dollars * 100 = cents
theorem mileage_total (m : Mileage) : m.miles = 100 := by rw [m.hMiles]
theorem mileage_cents (m : Mileage) : m.cents = 3600 := by rw [m.hCents, mileage_total m] <;> norm_num
theorem mileage_solution (m : Mileage) : m.dollars = 36 := by
  have h := m.hDollars
  rw [mileage_cents m] at h
  omega

structure Downpayment where
  months : ℕ
  combined : ℕ
  each : ℕ
  hMonths : months = 3 * 12
  hCombined : combined * months = 108000
  hEach : each * 2 = combined
theorem downpayment_months (m : Downpayment) : m.months = 36 := by rw [m.hMonths] <;> norm_num
theorem downpayment_combined (m : Downpayment) : m.combined = 3000 := by
  have h := m.hCombined
  rw [downpayment_months m] at h
  omega
theorem downpayment_solution (m : Downpayment) : m.each = 1500 := by
  have h := m.hEach
  rw [downpayment_combined m] at h
  omega

structure Balloons where
  added : ℕ
  intervals : ℕ
  minutes : ℕ
  hAdded : added + 12 = 50
  hIntervals : intervals * 2 = added
  hMinutes : minutes = intervals * 5
theorem balloons_added (m : Balloons) : m.added = 38 := by
  have h := m.hAdded
  omega
theorem balloons_intervals (m : Balloons) : m.intervals = 19 := by
  have h := m.hIntervals
  rw [balloons_added m] at h
  omega
theorem balloons_solution (m : Balloons) : m.minutes = 95 := by rw [m.hMinutes, balloons_intervals m] <;> norm_num

structure Candy where
  pair : ℕ
  jafari : ℕ
  hPair : pair = 2 * 171
  hJafari : jafari + pair = 418
theorem candy_pair (m : Candy) : m.pair = 342 := by rw [m.hPair] <;> norm_num
theorem candy_solution (m : Candy) : m.jafari = 76 := by
  have h := m.hJafari
  rw [candy_pair m] at h
  omega

structure Bathroom where
  minutes : ℕ
  visits : ℕ
  hMinutes : minutes = 5 * 30
  hVisits : visits * 50 = minutes
theorem bathroom_minutes (m : Bathroom) : m.minutes = 150 := by rw [m.hMinutes] <;> norm_num
theorem bathroom_solution (m : Bathroom) : m.visits = 3 := by
  have h := m.hVisits
  rw [bathroom_minutes m] at h
  omega

structure Essays where
  madeline : ℕ
  timothy : ℕ
  total : ℕ
  pages : ℕ
  hMadeline : madeline = 150 * 2
  hTimothy : timothy = madeline + 30
  hTotal : total = 150 + madeline + timothy
  hPages : pages * 260 = total
theorem essays_madeline (m : Essays) : m.madeline = 300 := by rw [m.hMadeline] <;> norm_num
theorem essays_timothy (m : Essays) : m.timothy = 330 := by rw [m.hTimothy, essays_madeline m]
theorem essays_total (m : Essays) : m.total = 780 := by rw [m.hTotal, essays_madeline m, essays_timothy m]
theorem essays_solution (m : Essays) : m.pages = 3 := by
  have h := m.hPages
  rw [essays_total m] at h
  omega

structure Bulbs where
  small : ℕ
  total : ℕ
  left : ℕ
  hSmall : small = 3 * 8
  hTotal : total = small + 12
  hLeft : left + total = 60
theorem bulbs_small (m : Bulbs) : m.small = 24 := by rw [m.hSmall] <;> norm_num
theorem bulbs_total (m : Bulbs) : m.total = 36 := by rw [m.hTotal, bulbs_small m]
theorem bulbs_solution (m : Bulbs) : m.left = 24 := by
  have h := m.hLeft
  rw [bulbs_total m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0922A19
