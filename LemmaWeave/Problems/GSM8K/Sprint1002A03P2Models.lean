import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1002A03P2

structure WireModel where
  total parts partLength usedParts used unused : ℕ
  hTotal : total = 50
  hParts : parts = 5
  hEqualParts : parts * partLength = total
  hUsedParts : usedParts = 3
  hUsed : used = usedParts * partLength
  hRemaining : used + unused = total

theorem wire_part_length (m : WireModel) : m.partLength = 10 := by cases m <;> omega
theorem used_wire_meters (m : WireModel) : m.used = 30 := by
  have h := wire_part_length m
  cases m <;> omega
theorem unused_wire_meters (m : WireModel) : m.unused = 20 := by
  have h := used_wire_meters m
  cases m <;> omega

structure PromModel where
  total dancers slow notSlow : ℕ
  hTotal : total = 140
  hQuarter : 4 * dancers = total
  hSlow : slow = 25
  hPartition : slow + notSlow = dancers

theorem prom_dancers (m : PromModel) : m.dancers = 35 := by cases m <;> omega
theorem dancers_not_slow (m : PromModel) : m.notSlow = 10 := by
  have h := prom_dancers m
  cases m <;> omega

structure BedbugModel where
  startDayOne dayTwo dayThree dayFour : ℕ
  hDayTwo : dayTwo = 3 * startDayOne
  hDayThree : dayThree = 3 * dayTwo
  hDayFour : dayFour = 3 * dayThree
  hFinal : dayFour = 810

theorem bedbugs_day_two (m : BedbugModel) : m.dayTwo = 90 := by cases m <;> omega
theorem bedbugs_day_three (m : BedbugModel) : m.dayThree = 270 := by cases m <;> omega
theorem initial_bedbugs_day_one (m : BedbugModel) : m.startDayOne = 30 := by cases m <;> omega

structure SailModel where
  distance bigSpeed smallSpeed bigHours smallHours fasterHours : ℕ
  hDistance : distance = 200
  hBigSpeed : bigSpeed = 50
  hSmallSpeed : smallSpeed = 20
  hBigTrip : bigSpeed * bigHours = distance
  hSmallTrip : smallSpeed * smallHours = distance
  hDifference : bigHours + fasterHours = smallHours

theorem big_sail_hours (m : SailModel) : m.bigHours = 4 := by cases m <;> omega
theorem small_sail_hours (m : SailModel) : m.smallHours = 10 := by cases m <;> omega
theorem sail_hours_faster (m : SailModel) : m.fasterHours = 6 := by
  have h1 := big_sail_hours m
  have h2 := small_sail_hours m
  cases m <;> omega

structure ReadingModel where
  total dayOne dayTwo dayThree dayFour : ℕ
  hTotal : total = 354
  hDayOne : dayOne = 63
  hDayTwo : dayTwo = 2 * dayOne
  hDayThree : dayThree = dayTwo + 10
  hPartition : dayOne + dayTwo + dayThree + dayFour = total

theorem reading_day_two (m : ReadingModel) : m.dayTwo = 126 := by cases m <;> omega
theorem reading_day_three (m : ReadingModel) : m.dayThree = 136 := by cases m <;> omega
theorem reading_day_four (m : ReadingModel) : m.dayFour = 29 := by
  have h1 := reading_day_two m
  have h2 := reading_day_three m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1002A03P2
