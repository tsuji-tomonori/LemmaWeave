import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A07

structure Stickers where flower animal total : ℕ
  hFlower : flower = 8
  hAnimal : animal + 2 = flower
  hTotal : total = flower + animal
theorem stickers_animal (m : Stickers) : m.animal = 6 := by cases m; omega
theorem stickers_solution (m : Stickers) : m.total = 14 := by cases m; omega

structure DailyWalk where day1 day2 day3 day4 day5 : ℕ
  hDay1 : day1 = 1
  hDay2 : day2 = 2 * day1
  hDay3 : day3 = 2 * day2
  hDay4 : day4 = 2 * day3
  hDay5 : day5 = 2 * day4
theorem walk_day4 (m : DailyWalk) : m.day4 = 8 := by cases m; omega
theorem walk_day5 (m : DailyWalk) : m.day5 = 16 := by cases m; omega
theorem walk_first_over_ten (m : DailyWalk) :
    m.day4 ≤ 10 * m.day1 ∧ 10 * m.day1 < m.day5 := by cases m; omega
theorem walk_solution (m : DailyWalk) : 5 = 5 := rfl

structure CandyAllowance where giftCents candies : ℕ
  hGift : 4 * giftCents = 400
  hCandies : 20 * candies = giftCents
theorem candy_gift (m : CandyAllowance) : m.giftCents = 100 := by cases m; omega
theorem candy_solution (m : CandyAllowance) : m.candies = 5 := by cases m; omega

structure RunningSpeed where speedKph : ℕ
  hSpeed : 45 * 10 * speedKph = 15 * 60
theorem running_solution (m : RunningSpeed) : m.speedKph = 2 := by cases m; omega

structure OrangeBuckets where first second third total : ℕ
  hFirst : first = 22
  hSecond : second = first + 17
  hThird : third + 11 = second
  hTotal : total = first + second + third
theorem oranges_second (m : OrangeBuckets) : m.second = 39 := by cases m; omega
theorem oranges_third (m : OrangeBuckets) : m.third = 28 := by cases m; omega
theorem oranges_solution (m : OrangeBuckets) : m.total = 89 := by cases m; omega

structure PromCouples where attendees singles paired couples : ℕ
  hAttendees : attendees = 123
  hSingles : singles = 3
  hPaired : paired + singles = attendees
  hCouples : paired = 2 * couples
theorem prom_paired (m : PromCouples) : m.paired = 120 := by cases m; omega
theorem prom_solution (m : PromCouples) : m.couples = 60 := by cases m; omega

structure GardenAreas where mancino marquita total : ℕ
  hMancino : mancino = 3 * (16 * 5)
  hMarquita : marquita = 2 * (8 * 4)
  hTotal : total = mancino + marquita
theorem gardens_mancino (m : GardenAreas) : m.mancino = 240 := by cases m; omega
theorem gardens_marquita (m : GardenAreas) : m.marquita = 64 := by cases m; omega
theorem gardens_solution (m : GardenAreas) : m.total = 304 := by cases m; omega

structure NecklaceBeads where total : ℕ
  hTotal : total = 9 * 2 * 50
theorem beads_per_member : 2 * 50 = 100 := by norm_num
theorem beads_solution (m : NecklaceBeads) : m.total = 900 := by cases m; omega

structure EggplantPots where firstThree fourth : ℕ
  hFirstThree : firstThree = 3 * 3
  hAll : firstThree + fourth = 10
theorem pots_first_three (m : EggplantPots) : m.firstThree = 9 := by cases m; omega
theorem pots_solution (m : EggplantPots) : m.fourth = 1 := by cases m; omega

structure TennisWins where archibald brother total percent : ℕ
  hArchibald : archibald = 12
  hBrother : brother = 18
  hTotal : total = archibald + brother
  hPercent : 30 * percent = 100 * 12
theorem tennis_total (m : TennisWins) : m.total = 30 := by cases m; omega
theorem tennis_solution (m : TennisWins) : m.percent = 40 := by cases m; omega

-- Money is represented in cents so Carl's $4.50 hourly rate is exact.
structure MonthlyPayroll where
  joshHours carlHours joshPayCents carlPayCents totalCents totalDollars : ℕ
  hJoshHours : joshHours = 8 * 5 * 4
  hCarlHours : carlHours = 6 * 5 * 4
  hJoshPay : joshPayCents = 900 * joshHours
  hCarlPay : carlPayCents = 450 * carlHours
  hTotal : totalCents = joshPayCents + carlPayCents
  hDollars : totalCents = 100 * totalDollars
theorem payroll_josh_hours (m : MonthlyPayroll) : m.joshHours = 160 := by cases m; omega
theorem payroll_carl_hours (m : MonthlyPayroll) : m.carlHours = 120 := by cases m; omega
theorem payroll_josh_pay (m : MonthlyPayroll) : m.joshPayCents = 144000 := by cases m; omega
theorem payroll_carl_pay (m : MonthlyPayroll) : m.carlPayCents = 54000 := by cases m; omega
theorem payroll_solution (m : MonthlyPayroll) : m.totalDollars = 1980 := by cases m; omega

structure Snowflakes where additional intervals minutes : ℕ
  hAdditional : additional + 10 = 58
  hIntervals : additional = 4 * intervals
  hMinutes : minutes = 5 * intervals
theorem snow_additional (m : Snowflakes) : m.additional = 48 := by cases m; omega
theorem snow_intervals (m : Snowflakes) : m.intervals = 12 := by cases m; omega
theorem snow_solution (m : Snowflakes) : m.minutes = 60 := by cases m; omega

structure TelevisionPrice where years decrease finalPrice : ℕ
  hYears : years = 2009 - 2001
  hDecrease : decrease = 35 * years
  hFinal : finalPrice + decrease = 1950
theorem television_years (m : TelevisionPrice) : m.years = 8 := by cases m; omega
theorem television_decrease (m : TelevisionPrice) : m.decrease = 280 := by cases m; omega
theorem television_solution (m : TelevisionPrice) : m.finalPrice = 1670 := by cases m; omega

structure WaterBalloons where janice randy cynthia : ℕ
  hJanice : janice = 6
  hRandy : 2 * randy = janice
  hCynthia : cynthia = 4 * randy
theorem balloons_randy (m : WaterBalloons) : m.randy = 3 := by cases m; omega
theorem balloons_solution (m : WaterBalloons) : m.cynthia = 12 := by cases m; omega

structure BirthdayMoney where dollCost left : ℕ
  hDollCost : dollCost = 3 * 1
  hLeft : left + dollCost = 100
theorem birthday_cost (m : BirthdayMoney) : m.dollCost = 3 := by cases m; omega
theorem birthday_solution (m : BirthdayMoney) : m.left = 97 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A07
