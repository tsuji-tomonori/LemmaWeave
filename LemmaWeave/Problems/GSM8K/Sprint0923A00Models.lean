import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A00

structure NationalPark where extra redwoods total : ℕ
  hExtra : extra * 100 = 600 * 20
  hRedwoods : redwoods = 600 + extra
  hTotal : total = 600 + redwoods
theorem national_extra (m : NationalPark) : m.extra = 120 := by
  have h := m.hExtra
  omega
theorem national_redwoods (m : NationalPark) : m.redwoods = 720 := by
  rw [m.hRedwoods, national_extra m]
theorem national_solution (m : NationalPark) : m.total = 1320 := by
  rw [m.hTotal, national_redwoods m]

structure Papayas where sunday yellowed left : ℕ
  hSunday : sunday = 2 * 2
  hYellowed : yellowed = 2 + sunday
  hLeft : left + yellowed = 14
theorem papayas_sunday (m : Papayas) : m.sunday = 4 := by rw [m.hSunday]
theorem papayas_yellowed (m : Papayas) : m.yellowed = 6 := by
  rw [m.hYellowed, papayas_sunday m]
theorem papayas_solution (m : Papayas) : m.left = 8 := by
  have h := m.hLeft
  rw [papayas_yellowed m] at h
  omega

structure Anniversary where married dating met : ℕ
  hMarried : married + 20 = 2025
  hDating : dating + 3 = married
  hMet : met + 2 = dating
theorem anniversary_married (m : Anniversary) : m.married = 2005 := by
  have h := m.hMarried
  omega
theorem anniversary_dating (m : Anniversary) : m.dating = 2002 := by
  have h := m.hDating
  rw [anniversary_married m] at h
  omega
theorem anniversary_solution (m : Anniversary) : m.met = 2000 := by
  have h := m.hMet
  rw [anniversary_dating m] at h
  omega

structure Tomatoes where first afterFirst second afterSecond third left : ℕ
  hFirst : first * 4 = 100
  hAfterFirst : afterFirst + first = 100
  hSecond : second = 20
  hAfterSecond : afterSecond + second = afterFirst
  hThird : third = 2 * second
  hLeft : left + third = afterSecond
theorem tomatoes_first (m : Tomatoes) : m.first = 25 := by
  have h := m.hFirst
  omega
theorem tomatoes_after_first (m : Tomatoes) : m.afterFirst = 75 := by
  have h := m.hAfterFirst
  rw [tomatoes_first m] at h
  omega
theorem tomatoes_after_second (m : Tomatoes) : m.afterSecond = 55 := by
  have h := m.hAfterSecond
  rw [m.hSecond, tomatoes_after_first m] at h
  omega
theorem tomatoes_third (m : Tomatoes) : m.third = 40 := by
  rw [m.hThird, m.hSecond]
theorem tomatoes_solution (m : Tomatoes) : m.left = 15 := by
  have h := m.hLeft
  rw [tomatoes_third m, tomatoes_after_second m] at h
  omega

structure Novels where alexandre difference : ℕ
  hAlexandre : alexandre * 10 = 120
  hDifference : difference + alexandre = 120
theorem novels_alexandre (m : Novels) : m.alexandre = 12 := by
  have h := m.hAlexandre
  omega
theorem novels_solution (m : Novels) : m.difference = 108 := by
  have h := m.hDifference
  rw [novels_alexandre m] at h
  omega

structure Kickboxing where early last total : ℕ
  hEarly : early = 2 * 6
  hLast : last * 2 = 4
  hTotal : total = early + last
theorem kickboxing_early (m : Kickboxing) : m.early = 12 := by rw [m.hEarly]
theorem kickboxing_last (m : Kickboxing) : m.last = 2 := by
  have h := m.hLast
  omega
theorem kickboxing_solution (m : Kickboxing) : m.total = 14 := by
  rw [m.hTotal, kickboxing_early m, kickboxing_last m]

structure GlassBallsTwice where redLeft blue yellow : ℕ
  hRedLeft : redLeft + 6 = 16
  hBlue : blue = 2 * 16
  hTotal : redLeft + blue + yellow = 74
theorem glass_twice_red (m : GlassBallsTwice) : m.redLeft = 10 := by
  have h := m.hRedLeft
  omega
theorem glass_twice_blue (m : GlassBallsTwice) : m.blue = 32 := by rw [m.hBlue]
theorem glass_twice_solution (m : GlassBallsTwice) : m.yellow = 32 := by
  have h := m.hTotal
  rw [glass_twice_red m, glass_twice_blue m] at h
  omega

structure GlassBallsTwoTimesMore where redLeft blue yellow : ℕ
  hRedLeft : redLeft + 6 = 16
  hBlue : blue = 16 + 2 * 16
  hTotal : redLeft + blue + yellow = 74
theorem glass_more_blue (m : GlassBallsTwoTimesMore) : m.blue = 48 := by rw [m.hBlue]
theorem glass_more_solution (m : GlassBallsTwoTimesMore) : m.yellow = 16 := by
  have hr := m.hRedLeft
  have ht := m.hTotal
  rw [glass_more_blue m] at ht
  omega

structure Chips where weeklyCents totalCents : ℕ
  hWeekly : weeklyCents = 50 * 5
  hTotal : totalCents = weeklyCents * 4
theorem chips_weekly (m : Chips) : m.weeklyCents = 250 := by rw [m.hWeekly]
theorem chips_solution (m : Chips) : m.totalCents = 1000 := by
  rw [m.hTotal, chips_weekly m]

structure Officers where aRate bRate totalRate : ℕ
  hA : aRate * 4 = 36
  hB : bRate * 5 = 55
  hTotal : totalRate = aRate + bRate
theorem officers_a (m : Officers) : m.aRate = 9 := by
  have h := m.hA
  omega
theorem officers_b (m : Officers) : m.bRate = 11 := by
  have h := m.hB
  omega
theorem officers_solution (m : Officers) : m.totalRate = 20 := by
  rw [m.hTotal, officers_a m, officers_b m]

structure Rocks where pounds rocks : ℕ
  hPounds : pounds * 4 = 60
  hWeight : rocks * 3 = pounds * 2
theorem rocks_pounds (m : Rocks) : m.pounds = 15 := by
  have h := m.hPounds
  omega
theorem rocks_solution (m : Rocks) : m.rocks = 10 := by
  have h := m.hWeight
  rw [rocks_pounds m] at h
  omega

theorem animals_intended_solution (goats : ℕ) (h : goats + 40 + 56 = 200) : goats = 104 := by
  omega
theorem animals_combined_range (sheep goats : ℕ) (h : sheep + goats = 56) : goats ≤ 56 := by
  omega
theorem animals_combined_zero_example : 56 + 0 = 56 := by norm_num
theorem animals_combined_fifty_six_example : 0 + 56 = 56 := by norm_num

structure Basket where apples oranges : ℕ
  hRatio : apples = 3 * oranges
  hTotal : apples + oranges = 40
theorem basket_solution (m : Basket) : m.oranges = 10 := by
  have hr := m.hRatio
  have ht := m.hTotal
  omega

structure River where widthGain segments distance seconds : ℕ
  hWidthGain : widthGain + 50 = 80
  hSegments : segments * 2 = widthGain
  hDistance : distance = segments * 10
  hSeconds : seconds * 5 = distance
theorem river_width_gain (m : River) : m.widthGain = 30 := by
  have h := m.hWidthGain
  omega
theorem river_segments (m : River) : m.segments = 15 := by
  have h := m.hSegments
  rw [river_width_gain m] at h
  omega
theorem river_distance (m : River) : m.distance = 150 := by
  rw [m.hDistance, river_segments m]
theorem river_solution (m : River) : m.seconds = 30 := by
  have h := m.hSeconds
  rw [river_distance m] at h
  omega

structure Ophelia where lennonFuture opheliaFuture opheliaNow : ℕ
  hLennon : lennonFuture = 8 + 2
  hFuture : opheliaFuture = 4 * lennonFuture
  hNow : opheliaNow + 2 = opheliaFuture
theorem ophelia_lennon_future (m : Ophelia) : m.lennonFuture = 10 := by rw [m.hLennon]
theorem ophelia_future (m : Ophelia) : m.opheliaFuture = 40 := by
  rw [m.hFuture, ophelia_lennon_future m]
theorem ophelia_solution (m : Ophelia) : m.opheliaNow = 38 := by
  have h := m.hNow
  rw [ophelia_future m] at h
  omega

structure Zachary where totalCents neededCents : ℕ
  hTotal : totalCents = 375 + 240 + 1185
  hNeeded : neededCents + 1000 = totalCents
theorem zachary_total (m : Zachary) : m.totalCents = 1800 := by rw [m.hTotal]
theorem zachary_solution (m : Zachary) : m.neededCents = 800 := by
  have h := m.hNeeded
  rw [zachary_total m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0923A00
