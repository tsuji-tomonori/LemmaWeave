import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A06

structure Ages where alma sum score : ℕ
  hAlma : 3 * alma = 60
  hSum : sum = alma + 60
  hScore : sum = 2 * score
theorem ages_alma (m : Ages) : m.alma = 20 := by omega
theorem ages_sum (m : Ages) : m.sum = 80 := by omega
theorem ages_solution (m : Ages) : m.score = 40 := by omega

structure Oysters where units rate total : ℕ
  hUnits : 5 * units = 2 * 60
  hRate : rate = 10
  hTotal : total = units * rate
theorem oysters_units (m : Oysters) : m.units = 24 := by omega
theorem oysters_rate (m : Oysters) : m.rate = 10 := m.hRate
theorem oysters_solution (m : Oysters) : m.total = 240 := by omega

structure Salads where angel total : ℕ
  hAngel : angel = 2 * 200
  hTotal : total = angel + 200
theorem salads_angel (m : Salads) : m.angel = 400 := by omega
theorem salads_solution (m : Salads) : m.total = 600 := by omega

structure Soda where milliliters days : ℕ
  hMl : milliliters = 2 * 1000
  hDays : milliliters = days * 500
theorem soda_milliliters (m : Soda) : m.milliliters = 2000 := by omega
theorem soda_solution (m : Soda) : m.days = 4 := by omega

structure Sisters where difference years : ℕ
  hDifference : difference + 5 = 18
  hTwice : 18 + years = 2 * (5 + years)
theorem sisters_difference (m : Sisters) : m.difference = 13 := by omega
theorem sisters_equation (m : Sisters) : 18 + m.years = 2 * (5 + m.years) := m.hTwice
theorem sisters_solution (m : Sisters) : m.years = 8 := by omega

structure Balloons where initial burst left : ℕ
  hInitial : initial = 20 + 15
  hBurst : burst = 3 + 2
  hLeft : left + burst = initial
theorem balloons_initial (m : Balloons) : m.initial = 35 := by omega
theorem balloons_burst (m : Balloons) : m.burst = 5 := by omega
theorem balloons_solution (m : Balloons) : m.left = 30 := by omega

structure Buses where daily total : ℕ
  hDaily : daily = 2 * 12
  hTotal : total = daily * 5
theorem buses_daily (m : Buses) : m.daily = 24 := by omega
theorem buses_solution (m : Buses) : m.total = 120 := by omega

structure Pads where skates pads : ℕ
  hSkates : 2 * skates = 150
  hBalance : skates + pads + 25 = 150
theorem pads_skates (m : Pads) : m.skates = 75 := by omega
theorem pads_solution (m : Pads) : m.pads = 50 := by omega

structure Temperature where week first3 next2 first5 remaining : ℕ
  hWeek : week = 7 * 60
  hFirst3 : first3 = 3 * 40
  hNext2 : next2 = 2 * 80
  hFirst5 : first5 = first3 + next2
  hRemaining : first5 + remaining = week
theorem temperature_week (m : Temperature) : m.week = 420 := by omega
theorem temperature_first3 (m : Temperature) : m.first3 = 120 := by omega
theorem temperature_next2 (m : Temperature) : m.next2 = 160 := by omega
theorem temperature_first5 (m : Temperature) : m.first5 = 280 := by omega
theorem temperature_solution (m : Temperature) : m.remaining = 140 := by omega

/-- Conditional reading: the new 200 rings equal twice the old remaining stock. -/
structure Rings where old total sold afterSale afterBuy final : ℕ
  hOld : 2 * old = 200
  hTotal : total = old + 200
  hSold : 4 * sold = 3 * total
  hAfterSale : afterSale + sold = total
  hAfterBuy : afterBuy = afterSale + 300
  hFinal : final + 150 = afterBuy
theorem rings_old (m : Rings) : m.old = 100 := by omega
theorem rings_total (m : Rings) : m.total = 300 := by omega
theorem rings_sold (m : Rings) : m.sold = 225 := by omega
theorem rings_after_sale (m : Rings) : m.afterSale = 75 := by omega
theorem rings_after_buy (m : Rings) : m.afterBuy = 375 := by omega
theorem rings_solution (m : Rings) : m.final = 225 := by omega

structure Chips where known emily : ℕ
  hKnown : known = 3 + 4
  hTotal : known + emily = 10
theorem chips_known (m : Chips) : m.known = 7 := by omega
theorem chips_solution (m : Chips) : m.emily = 3 := by omega

structure Fruit where lemons avocados total : ℕ
  hLemons : 2 * lemons = 5 * 12
  hAvocados : avocados = 5 * 12
  hTotal : total = lemons + avocados
theorem fruit_lemons (m : Fruit) : m.lemons = 30 := by omega
theorem fruit_avocados (m : Fruit) : m.avocados = 60 := by omega
theorem fruit_solution (m : Fruit) : m.total = 90 := by omega

structure Quiz where kelsey martin : ℕ
  hKelsey : kelsey = 35 + 8
  hMartin : martin + 3 = kelsey
theorem quiz_kelsey (m : Quiz) : m.kelsey = 43 := by omega
theorem quiz_solution (m : Quiz) : m.martin = 40 := by omega

structure Library where tuesday wednesday current : ℕ
  hTuesday : tuesday + 120 = 250
  hWednesday : wednesday = tuesday + 35
  hCurrent : current + 15 = wednesday
theorem library_tuesday (m : Library) : m.tuesday = 130 := by omega
theorem library_wednesday (m : Library) : m.wednesday = 165 := by omega
theorem library_solution (m : Library) : m.current = 150 := by omega

structure Parking where capacity available : ℕ
  hCapacity : 5 * capacity = 425
  hAvailable : available + 23 = capacity
theorem parking_capacity (m : Parking) : m.capacity = 85 := by omega
theorem parking_solution (m : Parking) : m.available = 62 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0924A06
