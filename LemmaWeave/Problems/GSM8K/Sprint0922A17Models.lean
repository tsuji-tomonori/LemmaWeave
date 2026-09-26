import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A17

structure Shopping where
  totalCost : ℕ
  remaining : ℕ
  hCost : totalCost = 9 + 4 + 5
  hRemaining : remaining + totalCost = 26
theorem shopping_cost (m : Shopping) : m.totalCost = 18 := by rw [m.hCost] <;> norm_num
theorem shopping_solution (m : Shopping) : m.remaining = 8 := by
  have h := m.hRemaining
  rw [shopping_cost m] at h
  omega

structure Minnows where
  total : ℕ
  white : ℕ
  hTotal : total * 40 = 20 * 100
  hWhite : white * 100 = total * (100 - 40 - 30)
theorem minnows_total (m : Minnows) : m.total = 50 := by
  have h := m.hTotal
  norm_num at h
  omega
theorem minnows_white_percent : 100 - 40 - 30 = 30 := by norm_num
theorem minnows_solution (m : Minnows) : m.white = 15 := by
  have h := m.hWhite
  rw [minnows_total m, minnows_white_percent] at h
  omega

structure Heights where
  short : ℕ
  tall : ℕ
  average : ℕ
  extremes : ℕ
  hShort : short * 5 = 2 * 400
  hTall : tall = 90
  hExtremes : extremes = short + tall
  hAverage : average + extremes = 400
theorem heights_short (m : Heights) : m.short = 160 := by
  have h := m.hShort
  omega
theorem heights_extremes (m : Heights) : m.extremes = 250 := by
  rw [m.hExtremes, heights_short m, m.hTall] <;> norm_num
theorem heights_solution (m : Heights) : m.average = 150 := by
  have h := m.hAverage
  rw [heights_extremes m] at h
  omega

structure CountryDrive where
  driven : ℕ
  remaining : ℕ
  hDriven : driven = 907 + 582
  hRemaining : remaining + driven = 8205
theorem country_drive_done (m : CountryDrive) : m.driven = 1489 := by rw [m.hDriven] <;> norm_num
theorem country_drive_solution (m : CountryDrive) : m.remaining = 6716 := by
  have h := m.hRemaining
  rw [country_drive_done m] at h
  omega

structure Cookies where
  daily : ℕ
  monthly : ℕ
  total : ℕ
  hDaily : daily = 13 * 3
  hMonthly : monthly = daily * 20
  hTotal : total = monthly * 3
theorem cookies_daily (m : Cookies) : m.daily = 39 := by rw [m.hDaily] <;> norm_num
theorem cookies_monthly (m : Cookies) : m.monthly = 780 := by rw [m.hMonthly, cookies_daily m] <;> norm_num
theorem cookies_solution (m : Cookies) : m.total = 2340 := by rw [m.hTotal, cookies_monthly m] <;> norm_num

structure Paint where
  castle : ℕ
  used : ℕ
  sun : ℕ
  hCastle : castle = 3 + 2
  hUsed : used = 3 + castle
  hSun : sun + used = 13
theorem paint_castle (m : Paint) : m.castle = 5 := by rw [m.hCastle] <;> norm_num
theorem paint_used (m : Paint) : m.used = 8 := by rw [m.hUsed, paint_castle m] <;> norm_num
theorem paint_solution (m : Paint) : m.sun = 5 := by
  have h := m.hSun
  rw [paint_used m] at h
  omega

structure Walking where
  afterBus : ℕ
  bikes : ℕ
  walking : ℕ
  hAfterBus : afterBus + 20 = 92
  hBikes : bikes * 8 = afterBus * 5
  hWalking : walking + bikes = afterBus
theorem walking_after_bus (m : Walking) : m.afterBus = 72 := by
  have h := m.hAfterBus
  omega
theorem walking_bikes (m : Walking) : m.bikes = 45 := by
  have h := m.hBikes
  rw [walking_after_bus m] at h
  omega
theorem walking_solution (m : Walking) : m.walking = 27 := by
  have h := m.hWalking
  rw [walking_after_bus m, walking_bikes m] at h
  omega

structure Lifting where
  start : ℕ
  progress : ℕ
  peak : ℕ
  increase : ℕ
  hStart : start * 4 = 240
  hProgress : progress = start + 10
  hPeak : peak * 2 = 300
  hIncrease : increase + start = peak
theorem lifting_start (m : Lifting) : m.start = 60 := by
  have h := m.hStart
  omega
theorem lifting_progress (m : Lifting) : m.progress = 70 := by rw [m.hProgress, lifting_start m] <;> norm_num
theorem lifting_peak (m : Lifting) : m.peak = 150 := by
  have h := m.hPeak
  omega
theorem lifting_solution (m : Lifting) : m.increase = 90 := by
  have h := m.hIncrease
  rw [lifting_start m, lifting_peak m] at h
  omega

structure JeanMoney where
  jane : ℕ
  jean : ℕ
  hTriple : jean = 3 * jane
  hTotal : jane + jean = 76
theorem jean_money_jane (m : JeanMoney) : m.jane = 19 := by
  have h1 := m.hTriple
  have h2 := m.hTotal
  omega
theorem jean_money_solution (m : JeanMoney) : m.jean = 57 := by rw [m.hTriple, jean_money_jane m] <;> norm_num

structure SeedPackets where
  rate : ℕ
  totalPackets : ℕ
  more : ℕ
  hRate : rate * 3 = 9
  hTotal : totalPackets * rate = 12
  hMore : more + 3 = totalPackets
theorem seed_packets_rate (m : SeedPackets) : m.rate = 3 := by
  have h := m.hRate
  omega
theorem seed_packets_total (m : SeedPackets) : m.totalPackets = 4 := by
  have h := m.hTotal
  rw [seed_packets_rate m] at h
  omega
theorem seed_packets_solution (m : SeedPackets) : m.more = 1 := by
  have h := m.hMore
  rw [seed_packets_total m] at h
  omega

structure HikingWater where
  first : ℕ
  afterFirst : ℕ
  second : ℕ
  final : ℕ
  hFirst : first * 4 = 4
  hAfterFirst : afterFirst + first = 4
  hSecond : second * 3 = afterFirst * 2
  hFinal : final + second = afterFirst
theorem hiking_water_first (m : HikingWater) : m.first = 1 := by
  have h := m.hFirst
  omega
theorem hiking_water_after_first (m : HikingWater) : m.afterFirst = 3 := by
  have h := m.hAfterFirst
  rw [hiking_water_first m] at h
  omega
theorem hiking_water_second (m : HikingWater) : m.second = 2 := by
  have h := m.hSecond
  rw [hiking_water_after_first m] at h
  omega
theorem hiking_water_solution (m : HikingWater) : m.final = 1 := by
  have h := m.hFinal
  rw [hiking_water_after_first m, hiking_water_second m] at h
  omega

structure MicahWater where
  morningHalf : ℕ
  afternoonHalf : ℕ
  totalHalf : ℕ
  liters : ℕ
  hMorning : morningHalf = 3
  hAfternoon : afternoonHalf = 3 * morningHalf
  hTotal : totalHalf = morningHalf + afternoonHalf
  hLiters : liters * 2 = totalHalf
theorem micah_water_afternoon (m : MicahWater) : m.afternoonHalf = 9 := by rw [m.hAfternoon, m.hMorning] <;> norm_num
theorem micah_water_total_half (m : MicahWater) : m.totalHalf = 12 := by rw [m.hTotal, m.hMorning, micah_water_afternoon m] <;> norm_num
theorem micah_water_solution (m : MicahWater) : m.liters = 6 := by
  have h := m.hLiters
  rw [micah_water_total_half m] at h
  omega

structure RoadTrip where
  second : ℕ
  firstTwo : ℕ
  third : ℕ
  total : ℕ
  hSecond : second * 4 = 200 * 3
  hFirstTwo : firstTwo = 200 + second
  hThird : third * 2 = firstTwo
  hTotal : total = firstTwo + third
theorem road_trip_second (m : RoadTrip) : m.second = 150 := by
  have h := m.hSecond
  omega
theorem road_trip_first_two (m : RoadTrip) : m.firstTwo = 350 := by rw [m.hFirstTwo, road_trip_second m] <;> norm_num
theorem road_trip_third (m : RoadTrip) : m.third = 175 := by
  have h := m.hThird
  rw [road_trip_first_two m] at h
  omega
theorem road_trip_solution (m : RoadTrip) : m.total = 525 := by rw [m.hTotal, road_trip_first_two m, road_trip_third m] <;> norm_num

structure PaulPay where
  gross : ℕ
  afterTax : ℕ
  gummy : ℕ
  left : ℕ
  hGross : gross = 1250 * 40
  hAfterTax : afterTax * 100 = gross * 80
  hGummy : gummy * 100 = afterTax * 15
  hLeft : left + gummy = afterTax
theorem paul_pay_gross (m : PaulPay) : m.gross = 50000 := by rw [m.hGross] <;> norm_num
theorem paul_pay_after_tax (m : PaulPay) : m.afterTax = 40000 := by
  have h := m.hAfterTax
  rw [paul_pay_gross m] at h
  omega
theorem paul_pay_gummy (m : PaulPay) : m.gummy = 6000 := by
  have h := m.hGummy
  rw [paul_pay_after_tax m] at h
  omega
theorem paul_pay_solution (m : PaulPay) : m.left = 34000 := by
  have h := m.hLeft
  rw [paul_pay_after_tax m, paul_pay_gummy m] at h
  omega

structure KnifeSales where
  buyers : ℕ
  each : ℕ
  cheap : ℕ
  expensive : ℕ
  daily : ℕ
  weekly : ℕ
  hBuyers : buyers * 100 = 50 * 20
  hEach : each * 2 = buyers
  hCheap : cheap = each * 50
  hExpensive : expensive = each * 150
  hDaily : daily = cheap + expensive
  hWeekly : weekly = daily * 5
theorem knife_sales_buyers (m : KnifeSales) : m.buyers = 10 := by
  have h := m.hBuyers
  omega
theorem knife_sales_each (m : KnifeSales) : m.each = 5 := by
  have h := m.hEach
  rw [knife_sales_buyers m] at h
  omega
theorem knife_sales_cheap (m : KnifeSales) : m.cheap = 250 := by rw [m.hCheap, knife_sales_each m] <;> norm_num
theorem knife_sales_expensive (m : KnifeSales) : m.expensive = 750 := by rw [m.hExpensive, knife_sales_each m] <;> norm_num
theorem knife_sales_daily (m : KnifeSales) : m.daily = 1000 := by rw [m.hDaily, knife_sales_cheap m, knife_sales_expensive m] <;> norm_num
theorem knife_sales_solution (m : KnifeSales) : m.weekly = 5000 := by rw [m.hWeekly, knife_sales_daily m] <;> norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A17
