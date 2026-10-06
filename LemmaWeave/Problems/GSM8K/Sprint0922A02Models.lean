import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0922A02

structure Typing where
  beforeFive : ℕ
  afterFive : ℕ
  difference : ℕ
  hBefore : beforeFive = 5 * 10
  hAfter : afterFive = 5 * 8
  hDifference : difference = beforeFive - afterFive
theorem typing_before (m : Typing) : m.beforeFive = 50 := by rw [m.hBefore] <;> norm_num
theorem typing_after (m : Typing) : m.afterFive = 40 := by rw [m.hAfter] <;> norm_num
theorem typing_solution (m : Typing) : m.difference = 10 := by
  calc m.difference = m.beforeFive - m.afterFive := m.hDifference
    _ = 50 - 40 := by rw [typing_before m, typing_after m]
    _ = 10 := by norm_num

structure Coffee where
  dailyCents : ℕ
  totalCents : ℕ
  hDaily : dailyCents = 300 + 250
  hTotal : totalCents = 20 * dailyCents
theorem coffee_daily (m : Coffee) : m.dailyCents = 550 := by rw [m.hDaily] <;> norm_num
theorem coffee_solution (m : Coffee) : m.totalCents = 11000 := by
  calc m.totalCents = 20 * m.dailyCents := m.hTotal
    _ = 20 * 550 := by rw [coffee_daily m]
    _ = 11000 := by norm_num

structure SiblingAges where
  arthur : ℕ
  tom : ℕ
  total : ℕ
  hArthur : arthur = 15 + 2
  hTom : tom = 11 - 3
  hTotal : total = 15 + arthur + tom + 11
theorem siblings_arthur (m : SiblingAges) : m.arthur = 17 := by rw [m.hArthur] <;> norm_num
theorem siblings_tom (m : SiblingAges) : m.tom = 8 := by rw [m.hTom] <;> norm_num
theorem siblings_solution (m : SiblingAges) : m.total = 51 := by
  calc m.total = 15 + m.arthur + m.tom + 11 := m.hTotal
    _ = 15 + 17 + 8 + 11 := by rw [siblings_arthur m, siblings_tom m]
    _ = 51 := by norm_num

structure BookSeries where
  remaining : ℕ
  additionalWeeks : ℕ
  totalWeeks : ℕ
  hRemaining : remaining = 54 - 6 - 3
  hAdditional : 9 * additionalWeeks = remaining
  hTotal : totalWeeks = 1 + 1 + additionalWeeks
theorem series_remaining (m : BookSeries) : m.remaining = 45 := by rw [m.hRemaining] <;> norm_num
theorem series_additional (m : BookSeries) : m.additionalWeeks = 5 := by
  have h := m.hAdditional
  rw [series_remaining m] at h
  omega
theorem series_solution (m : BookSeries) : m.totalWeeks = 7 := by
  calc m.totalWeeks = 1 + 1 + m.additionalWeeks := m.hTotal
    _ = 1 + 1 + 5 := by rw [series_additional m]
    _ = 7 := by norm_num

structure JamJars where
  firstPacked : ℕ
  secondPacked : ℕ
  totalPacked : ℕ
  left : ℕ
  hFirst : firstPacked = 12 * 10
  hSecond : secondPacked = 10 * 30
  hTotal : totalPacked = firstPacked + secondPacked
  hLeft : left = 500 - totalPacked
theorem jam_first (m : JamJars) : m.firstPacked = 120 := by rw [m.hFirst] <;> norm_num
theorem jam_second (m : JamJars) : m.secondPacked = 300 := by rw [m.hSecond] <;> norm_num
theorem jam_total (m : JamJars) : m.totalPacked = 420 := by
  calc m.totalPacked = m.firstPacked + m.secondPacked := m.hTotal
    _ = 120 + 300 := by rw [jam_first m, jam_second m]
    _ = 420 := by norm_num
theorem jam_solution (m : JamJars) : m.left = 80 := by
  calc m.left = 500 - m.totalPacked := m.hLeft
    _ = 500 - 420 := by rw [jam_total m]
    _ = 80 := by norm_num

structure Birds where
  ducks : ℕ
  chickens : ℕ
  totalBirds : ℕ
  hDucks : ducks = 150
  hRelation : ducks = 10 + 4 * chickens
  hTotal : totalBirds = ducks + chickens
theorem birds_chickens (m : Birds) : m.chickens = 35 := by
  have hd := m.hDucks
  have hr := m.hRelation
  omega
theorem birds_solution (m : Birds) : m.totalBirds = 185 := by
  calc m.totalBirds = m.ducks + m.chickens := m.hTotal
    _ = 150 + 35 := by rw [m.hDucks, birds_chickens m]
    _ = 185 := by norm_num

structure DVD where
  onlineCents : ℕ
  shippingCents : ℕ
  totalCents : ℕ
  hOnline : onlineCents = 2 * 500
  hShipping : 100 * shippingCents = 80 * onlineCents
  hTotal : totalCents = onlineCents + shippingCents
theorem dvd_online (m : DVD) : m.onlineCents = 1000 := by rw [m.hOnline] <;> norm_num
theorem dvd_shipping (m : DVD) : m.shippingCents = 800 := by
  have h := m.hShipping
  rw [dvd_online m] at h
  omega
theorem dvd_solution (m : DVD) : m.totalCents = 1800 := by
  calc m.totalCents = m.onlineCents + m.shippingCents := m.hTotal
    _ = 1000 + 800 := by rw [dvd_online m, dvd_shipping m]
    _ = 1800 := by norm_num

structure MilkRevenue where
  todayMorning : ℕ
  totalMilk : ℕ
  sold : ℕ
  revenueCents : ℕ
  hMorning : todayMorning = 68 - 18
  hTotal : totalMilk = 68 + 82 + todayMorning
  hSold : sold = totalMilk - 24
  hRevenue : revenueCents = 350 * sold
theorem milk_morning (m : MilkRevenue) : m.todayMorning = 50 := by rw [m.hMorning] <;> norm_num
theorem milk_total (m : MilkRevenue) : m.totalMilk = 200 := by
  calc m.totalMilk = 68 + 82 + m.todayMorning := m.hTotal
    _ = 68 + 82 + 50 := by rw [milk_morning m]
    _ = 200 := by norm_num
theorem milk_sold (m : MilkRevenue) : m.sold = 176 := by
  calc m.sold = m.totalMilk - 24 := m.hSold
    _ = 200 - 24 := by rw [milk_total m]
    _ = 176 := by norm_num
theorem milk_solution (m : MilkRevenue) : m.revenueCents = 61600 := by
  calc m.revenueCents = 350 * m.sold := m.hRevenue
    _ = 350 * 176 := by rw [milk_sold m]
    _ = 61600 := by norm_num

structure Soup where
  stock : ℕ
  total : ℕ
  bags : ℕ
  hStock : stock = 3 * 2
  hTotal : total = 2 + stock + 1
  hBags : 3 * bags = total
theorem soup_stock (m : Soup) : m.stock = 6 := by rw [m.hStock] <;> norm_num
theorem soup_total (m : Soup) : m.total = 9 := by
  calc m.total = 2 + m.stock + 1 := m.hTotal
    _ = 2 + 6 + 1 := by rw [soup_stock m]
    _ = 9 := by norm_num
theorem soup_solution (m : Soup) : m.bags = 3 := by
  have h := m.hBags
  rw [soup_total m] at h
  omega

structure Boots where
  discountCents : ℕ
  payCents : ℕ
  hDiscount : 100 * discountCents = 20 * 9000
  hPay : payCents = 9000 - discountCents
theorem boots_discount (m : Boots) : m.discountCents = 1800 := by
  have h := m.hDiscount
  omega
theorem boots_solution (m : Boots) : m.payCents = 7200 := by
  calc m.payCents = 9000 - m.discountCents := m.hPay
    _ = 9000 - 1800 := by rw [boots_discount m]
    _ = 7200 := by norm_num

structure Waves where
  shortest : ℕ
  austinHeight : ℕ
  highest : ℕ
  hShortest : shortest = 7 + 3
  hAustin : shortest = austinHeight + 4
  hHighest : highest = 4 * austinHeight + 2
theorem waves_shortest (m : Waves) : m.shortest = 10 := by rw [m.hShortest] <;> norm_num
theorem waves_height (m : Waves) : m.austinHeight = 6 := by
  have h := m.hAustin
  rw [waves_shortest m] at h
  omega
theorem waves_solution (m : Waves) : m.highest = 26 := by
  calc m.highest = 4 * m.austinHeight + 2 := m.hHighest
    _ = 4 * 6 + 2 := by rw [waves_height m]
    _ = 26 := by norm_num

structure NoahAge where
  now : ℕ
  later : ℕ
  hNow : now = 2 * 6
  hLater : later = now + 10
theorem noah_now (m : NoahAge) : m.now = 12 := by rw [m.hNow] <;> norm_num
theorem noah_solution (m : NoahAge) : m.later = 22 := by
  calc m.later = m.now + 10 := m.hLater
    _ = 12 + 10 := by rw [noah_now m]
    _ = 22 := by norm_num

structure Towels where
  total : ℕ
  loads : ℕ
  hTotal : total = 3 + 6 + 3
  hLoads : 4 * loads = total
theorem towels_total (m : Towels) : m.total = 12 := by rw [m.hTotal] <;> norm_num
theorem towels_solution (m : Towels) : m.loads = 3 := by
  have h := m.hLoads
  rw [towels_total m] at h
  omega

structure Graves where
  adultHours : ℕ
  totalHours : ℕ
  hAdult : adultHours = 3 * 5
  hTotal : totalHours = adultHours + 2
theorem graves_adult (m : Graves) : m.adultHours = 15 := by rw [m.hAdult] <;> norm_num
theorem graves_solution (m : Graves) : m.totalHours = 17 := by
  calc m.totalHours = m.adultHours + 2 := m.hTotal
    _ = 15 + 2 := by rw [graves_adult m]
    _ = 17 := by norm_num

structure ZipCode where
  d1 : ℕ
  d2 : ℕ
  d3 : ℕ
  d4 : ℕ
  d5 : ℕ
  code : ℕ
  hSum : d1 + d2 + d3 + d4 + d5 = 10
  hSame : d2 = d1
  hThird : d3 = 0
  hFourth : d4 = 2 * d1
  hLastTwo : d4 + d5 = 8
  hCode : code = 10000 * d1 + 1000 * d2 + 100 * d3 + 10 * d4 + d5
theorem zip_first (m : ZipCode) : m.d1 = 1 := by
  have hs := m.hSum
  have he := m.hSame
  have ht := m.hThird
  have hl := m.hLastTwo
  omega
theorem zip_second (m : ZipCode) : m.d2 = 1 := by rw [m.hSame, zip_first m]
theorem zip_fourth (m : ZipCode) : m.d4 = 2 := by rw [m.hFourth, zip_first m] <;> norm_num
theorem zip_fifth (m : ZipCode) : m.d5 = 6 := by
  have h := m.hLastTwo
  rw [zip_fourth m] at h
  omega
theorem zip_solution (m : ZipCode) : m.code = 11026 := by
  calc m.code = 10000 * m.d1 + 1000 * m.d2 + 100 * m.d3 + 10 * m.d4 + m.d5 := m.hCode
    _ = 10000 * 1 + 1000 * 1 + 100 * 0 + 10 * 2 + 6 := by
      rw [zip_first m, zip_second m, m.hThird, zip_fourth m, zip_fifth m]
    _ = 11026 := by norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A02
