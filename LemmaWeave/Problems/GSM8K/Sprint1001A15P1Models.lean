import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A15P1

structure MeatModel where
  lion tiger daily supply days : ℕ
  hLion : lion = 25
  hTiger : tiger = 20
  hDaily : daily = lion + tiger
  hSupply : supply = 90
  hLasts : supply = daily * days

theorem daily_meat (m : MeatModel) : m.daily = 45 := by
  cases m <;> omega

theorem meat_days (m : MeatModel) : m.days = 2 := by
  have h := daily_meat m
  cases m <;> omega

structure CatModel where
  original firstRelocated afterFirst secondRelocated remaining : ℕ
  hOriginal : original = 1800
  hFirstRelocated : firstRelocated = 600
  hAfterFirst : original = firstRelocated + afterFirst
  hSecondRelocated : secondRelocated * 2 = afterFirst
  hRemaining : afterFirst = secondRelocated + remaining

theorem cats_after_first (m : CatModel) : m.afterFirst = 1200 := by
  cases m <;> omega

theorem cats_second_relocation (m : CatModel) : m.secondRelocated = 600 := by
  have h := cats_after_first m
  cases m <;> omega

theorem cats_remaining (m : CatModel) : m.remaining = 600 := by
  have h1 := cats_after_first m
  have h2 := cats_second_relocation m
  cases m <;> omega

structure CardModel where
  christmas birthday totalCards pricePerCard spent : ℕ
  hChristmas : christmas = 20
  hBirthday : birthday = 15
  hTotal : totalCards = christmas + birthday
  hPrice : pricePerCard = 2
  hSpent : spent = totalCards * pricePerCard

theorem total_cards (m : CardModel) : m.totalCards = 35 := by
  cases m <;> omega

theorem card_spend (m : CardModel) : m.spent = 70 := by
  have h := total_cards m
  cases m <;> omega

structure WalkModel where
  metersPerMinute minutesPerHour hoursPerDay minutesPerDay dailyMeters days totalMeters : ℕ
  hRate : metersPerMinute = 10
  hMinutesPerHour : minutesPerHour = 60
  hHours : hoursPerDay = 1
  hMinutes : minutesPerDay = hoursPerDay * minutesPerHour
  hDaily : dailyMeters = metersPerMinute * minutesPerDay
  hDays : days = 2
  hTotal : totalMeters = dailyMeters * days

theorem walking_minutes_per_day (m : WalkModel) : m.minutesPerDay = 60 := by
  cases m <;> omega

theorem walking_meters_per_day (m : WalkModel) : m.dailyMeters = 600 := by
  have h := walking_minutes_per_day m
  cases m <;> omega

theorem two_day_walk (m : WalkModel) : m.totalMeters = 1200 := by
  have h := walking_meters_per_day m
  cases m <;> omega

structure WyattModel where
  initial loaves breadPrice breadCost cartons juicePrice juiceCost totalCost remaining : ℕ
  hInitial : initial = 74
  hLoaves : loaves = 5
  hBreadPrice : breadPrice = 5
  hBreadCost : breadCost = loaves * breadPrice
  hCartons : cartons = 4
  hJuicePrice : juicePrice = 2
  hJuiceCost : juiceCost = cartons * juicePrice
  hTotal : totalCost = breadCost + juiceCost
  hRemaining : initial = totalCost + remaining

theorem bread_cost (m : WyattModel) : m.breadCost = 25 := by
  cases m <;> omega

theorem juice_cost (m : WyattModel) : m.juiceCost = 8 := by
  cases m <;> omega

theorem total_purchase_cost (m : WyattModel) : m.totalCost = 33 := by
  have h1 := bread_cost m
  have h2 := juice_cost m
  cases m <;> omega

theorem wyatt_money_left (m : WyattModel) : m.remaining = 41 := by
  have h := total_purchase_cost m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A15P1
