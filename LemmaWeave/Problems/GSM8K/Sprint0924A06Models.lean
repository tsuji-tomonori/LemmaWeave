import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A06

structure Ages where
  alma : ℕ
  sum : ℕ
  score : ℕ
  hAlma : 3 * alma = 60
  hSum : sum = alma + 60
  hScore : sum = 2 * score
theorem ages_alma (m : Ages) : m.alma = 20 := by cases m <;> omega
theorem ages_sum (m : Ages) : m.sum = 80 := by cases m <;> omega
theorem ages_solution (m : Ages) : m.score = 40 := by cases m <;> omega

structure Oysters where
  units : ℕ
  rate : ℕ
  total : ℕ
  hUnits : 5 * units = 2 * 60
  hRate : rate = 10
  hTotal : total = units * rate
theorem oysters_units (m : Oysters) : m.units = 24 := by cases m <;> omega
theorem oysters_rate (m : Oysters) : m.rate = 10 := m.hRate
theorem oysters_solution (m : Oysters) : m.total = 240 := by cases m <;> omega

structure Salads where
  angel : ℕ
  total : ℕ
  hAngel : angel = 2 * 200
  hTotal : total = angel + 200
theorem salads_angel (m : Salads) : m.angel = 400 := by cases m <;> omega
theorem salads_solution (m : Salads) : m.total = 600 := by cases m <;> omega

structure Soda where
  milliliters : ℕ
  days : ℕ
  hMl : milliliters = 2 * 1000
  hDays : milliliters = days * 500
theorem soda_milliliters (m : Soda) : m.milliliters = 2000 := by cases m <;> omega
theorem soda_solution (m : Soda) : m.days = 4 := by cases m <;> omega

structure Sisters where
  difference : ℕ
  years : ℕ
  hDifference : difference + 5 = 18
  hTwice : 18 + years = 2 * (5 + years)
theorem sisters_difference (m : Sisters) : m.difference = 13 := by cases m <;> omega
theorem sisters_equation (m : Sisters) : 18 + m.years = 2 * (5 + m.years) := m.hTwice
theorem sisters_solution (m : Sisters) : m.years = 8 := by cases m <;> omega

structure Balloons where
  initial : ℕ
  burst : ℕ
  left : ℕ
  hInitial : initial = 20 + 15
  hBurst : burst = 3 + 2
  hLeft : left + burst = initial
theorem balloons_initial (m : Balloons) : m.initial = 35 := by cases m <;> omega
theorem balloons_burst (m : Balloons) : m.burst = 5 := by cases m <;> omega
theorem balloons_solution (m : Balloons) : m.left = 30 := by cases m <;> omega

structure Buses where
  daily : ℕ
  total : ℕ
  hDaily : daily = 2 * 12
  hTotal : total = daily * 5
theorem buses_daily (m : Buses) : m.daily = 24 := by cases m <;> omega
theorem buses_solution (m : Buses) : m.total = 120 := by cases m <;> omega

structure Pads where
  skates : ℕ
  pads : ℕ
  hSkates : 2 * skates = 150
  hBalance : skates + pads + 25 = 150
theorem pads_skates (m : Pads) : m.skates = 75 := by cases m <;> omega
theorem pads_solution (m : Pads) : m.pads = 50 := by cases m <;> omega

structure Temperature where
  week : ℕ
  first3 : ℕ
  next2 : ℕ
  first5 : ℕ
  remaining : ℕ
  hWeek : week = 7 * 60
  hFirst3 : first3 = 3 * 40
  hNext2 : next2 = 2 * 80
  hFirst5 : first5 = first3 + next2
  hRemaining : first5 + remaining = week
theorem temperature_week (m : Temperature) : m.week = 420 := by cases m <;> omega
theorem temperature_first3 (m : Temperature) : m.first3 = 120 := by cases m <;> omega
theorem temperature_next2 (m : Temperature) : m.next2 = 160 := by cases m <;> omega
theorem temperature_first5 (m : Temperature) : m.first5 = 280 := by cases m <;> omega
theorem temperature_solution (m : Temperature) : m.remaining = 140 := by cases m <;> omega

/-- Conditional reading: the new 200 rings equal twice the old remaining stock. -/
structure Rings where
  old : ℕ
  total : ℕ
  sold : ℕ
  afterSale : ℕ
  afterBuy : ℕ
  final : ℕ
  hOld : 2 * old = 200
  hTotal : total = old + 200
  hSold : 4 * sold = 3 * total
  hAfterSale : afterSale + sold = total
  hAfterBuy : afterBuy = afterSale + 300
  hFinal : final + 150 = afterBuy
theorem rings_old (m : Rings) : m.old = 100 := by cases m <;> omega
theorem rings_total (m : Rings) : m.total = 300 := by cases m <;> omega
theorem rings_sold (m : Rings) : m.sold = 225 := by cases m <;> omega
theorem rings_after_sale (m : Rings) : m.afterSale = 75 := by cases m <;> omega
theorem rings_after_buy (m : Rings) : m.afterBuy = 375 := by cases m <;> omega
theorem rings_solution (m : Rings) : m.final = 225 := by cases m <;> omega

structure Chips where
  known : ℕ
  emily : ℕ
  hKnown : known = 3 + 4
  hTotal : known + emily = 10
theorem chips_known (m : Chips) : m.known = 7 := by cases m <;> omega
theorem chips_solution (m : Chips) : m.emily = 3 := by cases m <;> omega

structure Fruit where
  lemons : ℕ
  avocados : ℕ
  total : ℕ
  hLemons : 2 * lemons = 5 * 12
  hAvocados : avocados = 5 * 12
  hTotal : total = lemons + avocados
theorem fruit_lemons (m : Fruit) : m.lemons = 30 := by cases m <;> omega
theorem fruit_avocados (m : Fruit) : m.avocados = 60 := by cases m <;> omega
theorem fruit_solution (m : Fruit) : m.total = 90 := by cases m <;> omega

structure Quiz where
  kelsey : ℕ
  martin : ℕ
  hKelsey : kelsey = 35 + 8
  hMartin : martin + 3 = kelsey
theorem quiz_kelsey (m : Quiz) : m.kelsey = 43 := by cases m <;> omega
theorem quiz_solution (m : Quiz) : m.martin = 40 := by cases m <;> omega

structure Library where
  tuesday : ℕ
  wednesday : ℕ
  current : ℕ
  hTuesday : tuesday + 120 = 250
  hWednesday : wednesday = tuesday + 35
  hCurrent : current + 15 = wednesday
theorem library_tuesday (m : Library) : m.tuesday = 130 := by cases m <;> omega
theorem library_wednesday (m : Library) : m.wednesday = 165 := by cases m <;> omega
theorem library_solution (m : Library) : m.current = 150 := by cases m <;> omega

structure Parking where
  capacity : ℕ
  available : ℕ
  hCapacity : 5 * capacity = 425
  hAvailable : available + 23 = capacity
theorem parking_capacity (m : Parking) : m.capacity = 85 := by cases m <;> omega
theorem parking_solution (m : Parking) : m.available = 62 := by cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0924A06
