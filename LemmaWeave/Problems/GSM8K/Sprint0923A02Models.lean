import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A02

structure SilverGoldFiftyFold where silverCost goldHalfOunces goldPrice goldCost total : ℕ
  hSilverCost : silverCost * 2 = 3 * 20
  hGoldAmount : goldHalfOunces = 2 * 3
  hGoldPrice : goldPrice = 50 * 20
  hGoldCost : goldCost * 2 = goldHalfOunces * goldPrice
  hTotal : total = silverCost + goldCost
theorem silver_gold_silver (m : SilverGoldFiftyFold) : m.silverCost = 30 := by
  have h := m.hSilverCost
  omega
theorem silver_gold_amount (m : SilverGoldFiftyFold) : m.goldHalfOunces = 6 := by rw [m.hGoldAmount]
theorem silver_gold_price_fifty (m : SilverGoldFiftyFold) : m.goldPrice = 1000 := by rw [m.hGoldPrice]
theorem silver_gold_cost_fifty (m : SilverGoldFiftyFold) : m.goldCost = 3000 := by
  have h := m.hGoldCost
  rw [silver_gold_amount m, silver_gold_price_fifty m] at h
  omega
theorem silver_gold_solution_fifty (m : SilverGoldFiftyFold) : m.total = 3030 := by
  rw [m.hTotal, silver_gold_silver m, silver_gold_cost_fifty m]

structure SilverGoldFiftyMore where silverCost goldHalfOunces goldPrice goldCost total : ℕ
  hSilverCost : silverCost * 2 = 3 * 20
  hGoldAmount : goldHalfOunces = 2 * 3
  hGoldPrice : goldPrice = 20 + 50 * 20
  hGoldCost : goldCost * 2 = goldHalfOunces * goldPrice
  hTotal : total = silverCost + goldCost
theorem silver_gold_price_more (m : SilverGoldFiftyMore) : m.goldPrice = 1020 := by rw [m.hGoldPrice]
theorem silver_gold_solution_more (m : SilverGoldFiftyMore) : m.total = 3090 := by
  have hs := m.hSilverCost
  have hc := m.hGoldCost
  rw [m.hGoldAmount, silver_gold_price_more m] at hc
  rw [m.hTotal]
  omega

structure Lorry where load total : ℕ
  hLoad : load = 20 * 60
  hTotal : total = 500 + load
theorem lorry_load (m : Lorry) : m.load = 1200 := by rw [m.hLoad]
theorem lorry_solution (m : Lorry) : m.total = 1700 := by rw [m.hTotal, lorry_load m]

structure Paint where perWall used left : ℕ
  hPerWall : perWall * 4 = 16
  hUsed : used = 3 * perWall + 1
  hLeft : left + used = 16
theorem paint_per_wall (m : Paint) : m.perWall = 4 := by
  have h := m.hPerWall
  omega
theorem paint_used (m : Paint) : m.used = 13 := by rw [m.hUsed, paint_per_wall m]
theorem paint_solution (m : Paint) : m.left = 3 := by
  have h := m.hLeft
  rw [paint_used m] at h
  omega

structure Delivery where burgers fries shakes current needed : ℕ
  hBurgers : burgers = 2 * 320
  hFries : fries = 2 * 190
  hShakes : shakes = 2 * 240
  hCurrent : current = burgers + fries + shakes
  hNeeded : needed + current = 1800
theorem delivery_burgers (m : Delivery) : m.burgers = 640 := by rw [m.hBurgers]
theorem delivery_fries (m : Delivery) : m.fries = 380 := by rw [m.hFries]
theorem delivery_shakes (m : Delivery) : m.shakes = 480 := by rw [m.hShakes]
theorem delivery_current (m : Delivery) : m.current = 1500 := by
  rw [m.hCurrent, delivery_burgers m, delivery_fries m, delivery_shakes m]
theorem delivery_solution (m : Delivery) : m.needed = 300 := by
  have h := m.hNeeded
  rw [delivery_current m] at h
  omega

structure Shipping where bottles lotion current needed : ℕ
  hBottles : bottles = 2 * 1000
  hLotion : lotion = 3 * 600
  hCurrent : current = bottles + lotion
  hNeeded : needed + current = 5000
theorem shipping_bottles (m : Shipping) : m.bottles = 2000 := by rw [m.hBottles]
theorem shipping_lotion (m : Shipping) : m.lotion = 1800 := by rw [m.hLotion]
theorem shipping_current (m : Shipping) : m.current = 3800 := by
  rw [m.hCurrent, shipping_bottles m, shipping_lotion m]
theorem shipping_solution (m : Shipping) : m.needed = 1200 := by
  have h := m.hNeeded
  rw [shipping_current m] at h
  omega

structure Park where area trees : ℕ
  hArea : area = 1000 * 2000
  hTrees : trees * 20 = area
theorem park_area (m : Park) : m.area = 2000000 := by rw [m.hArea]
theorem park_solution (m : Park) : m.trees = 100000 := by
  have h := m.hTrees
  rw [park_area m] at h
  omega

structure Candy where afterTalitha left : ℕ
  hAfterTalitha : afterTalitha + 108 = 349
  hLeft : left + 153 = afterTalitha
theorem candy_after_talitha (m : Candy) : m.afterTalitha = 241 := by
  have h := m.hAfterTalitha
  omega
theorem candy_solution (m : Candy) : m.left = 88 := by
  have h := m.hLeft
  rw [candy_after_talitha m] at h
  omega

structure CarSoap where bottles cost : ℕ
  hBottles : bottles * 4 = 20
  hCost : cost = bottles * 4
theorem car_soap_bottles (m : CarSoap) : m.bottles = 5 := by
  have h := m.hBottles
  omega
theorem car_soap_solution (m : CarSoap) : m.cost = 20 := by rw [m.hCost, car_soap_bottles m]

structure Author where yearly books earnings : ℕ
  hYearly : yearly * 2 = 12
  hBooks : books = yearly * 20
  hEarnings : earnings = books * 30000
theorem author_yearly (m : Author) : m.yearly = 6 := by
  have h := m.hYearly
  omega
theorem author_books (m : Author) : m.books = 120 := by rw [m.hBooks, author_yearly m]
theorem author_solution (m : Author) : m.earnings = 3600000 := by rw [m.hEarnings, author_books m]

structure Highlighters where pink blue total : ℕ
  hPink : pink = 7 + 7
  hBlue : blue = pink + 5
  hTotal : total = 7 + pink + blue
theorem highlighters_pink (m : Highlighters) : m.pink = 14 := by rw [m.hPink]
theorem highlighters_blue (m : Highlighters) : m.blue = 19 := by rw [m.hBlue, highlighters_pink m]
theorem highlighters_solution (m : Highlighters) : m.total = 40 := by
  rw [m.hTotal, highlighters_pink m, highlighters_blue m]

structure WeeklyChips where second laterPair eachLater : ℕ
  hSecond : second = 3 * 15
  hLaterPair : laterPair + 15 + second = 100
  hEach : eachLater * 2 = laterPair
theorem weekly_chips_second (m : WeeklyChips) : m.second = 45 := by rw [m.hSecond]
theorem weekly_chips_pair (m : WeeklyChips) : m.laterPair = 40 := by
  have h := m.hLaterPair
  rw [weekly_chips_second m] at h
  omega
theorem weekly_chips_solution (m : WeeklyChips) : m.eachLater = 20 := by
  have h := m.hEach
  rw [weekly_chips_pair m] at h
  omega

structure Clinton where dailyCents totalCents : ℕ
  hDaily : dailyCents = 600 + 100
  hTotal : totalCents = dailyCents * 5
theorem clinton_daily (m : Clinton) : m.dailyCents = 700 := by rw [m.hDaily]
theorem clinton_solution (m : Clinton) : m.totalCents = 3500 := by rw [m.hTotal, clinton_daily m]

theorem bob_weekly_hours : (10 : ℕ) * 5 = 50 := by norm_num
theorem bob_four_week_solution : (10 : ℕ) * 5 * 4 = 200 := by norm_num
theorem bob_five_week_example : (10 : ℕ) * 5 * 5 = 250 := by norm_num

structure Lemons where load remaining : ℕ
  hLoad : load = 100 * 8
  hRemaining : remaining + load = 900
theorem lemons_load (m : Lemons) : m.load = 800 := by rw [m.hLoad]
theorem lemons_solution (m : Lemons) : m.remaining = 100 := by
  have h := m.hRemaining
  rw [lemons_load m] at h
  omega

structure Liquids where halfPints pints cups : ℕ
  hHalfPints : halfPints = 17 + 19
  hPints : pints * 2 = halfPints
  hCups : cups = pints * 2
theorem liquids_half_pints (m : Liquids) : m.halfPints = 36 := by rw [m.hHalfPints]
theorem liquids_pints (m : Liquids) : m.pints = 18 := by
  have h := m.hPints
  rw [liquids_half_pints m] at h
  omega
theorem liquids_solution (m : Liquids) : m.cups = 36 := by rw [m.hCups, liquids_pints m]

end LemmaWeave.Problems.GSM8K.Sprint0923A02
