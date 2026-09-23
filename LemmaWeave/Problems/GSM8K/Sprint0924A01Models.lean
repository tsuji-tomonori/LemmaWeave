import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A01

structure Cans where prikya yoki : ℕ
  hPrikya : prikya = 2 * 25
  hYoki : 85 = 25 + prikya + yoki
theorem cans_prikya (m : Cans) : m.prikya = 50 := by omega
theorem cans_solution (m : Cans) : m.yoki = 10 := by omega

structure Apples where other apples : ℕ
  hOther : other = 1 + 1 + 1
  hCapacity : other + apples = 20
theorem apples_other (m : Apples) : m.other = 3 := by omega
theorem apples_solution (m : Apples) : m.apples = 17 := by omega

structure PiggyBank where monthly yearly left : ℕ
  hMonthly : monthly = 2 * 4
  hYearly : yearly = monthly * 12
  hLeft : left + yearly = 200
theorem piggy_monthly (m : PiggyBank) : m.monthly = 8 := by omega
theorem piggy_yearly (m : PiggyBank) : m.yearly = 96 := by omega
theorem piggy_solution (m : PiggyBank) : m.left = 104 := by omega

structure Jellybeans where caleb sophie total : ℕ
  hCaleb : caleb = 3 * 12
  hSophie : 2 * sophie = caleb
  hTotal : total = caleb + sophie
theorem jelly_caleb (m : Jellybeans) : m.caleb = 36 := by omega
theorem jelly_sophie (m : Jellybeans) : m.sophie = 18 := by omega
theorem jelly_solution (m : Jellybeans) : m.total = 54 := by omega

structure Lemonade where smallMedium largeRevenue largeCups : ℕ
  hSmallMedium : smallMedium = 11 + 24
  hRevenue : smallMedium + largeRevenue = 50
  hCups : largeRevenue = 3 * largeCups
theorem lemonade_small_medium (m : Lemonade) : m.smallMedium = 35 := by omega
theorem lemonade_large_revenue (m : Lemonade) : m.largeRevenue = 15 := by omega
theorem lemonade_solution (m : Lemonade) : m.largeCups = 5 := by omega

structure ArtSupplies where total neededCents neededDollars : ℕ
  hTotal : total = 150 + 435 + 1265
  hNeeded : 650 + neededCents = total
  hDollars : neededCents = 100 * neededDollars
theorem art_total (m : ArtSupplies) : m.total = 1850 := by omega
theorem art_needed_cents (m : ArtSupplies) : m.neededCents = 1200 := by omega
theorem art_solution (m : ArtSupplies) : m.neededDollars = 12 := by omega

structure ChipsPurchase where purchase bars bagsTotal bagEach : ℕ
  hPurchase : purchase + 4 = 20
  hBars : bars = 5 * 2
  hBags : bars + bagsTotal = purchase
  hEach : bagsTotal = 2 * bagEach
theorem chips_purchase (m : ChipsPurchase) : m.purchase = 16 := by omega
theorem chips_bars (m : ChipsPurchase) : m.bars = 10 := by omega
theorem chips_bags_total (m : ChipsPurchase) : m.bagsTotal = 6 := by omega
theorem chips_solution (m : ChipsPurchase) : m.bagEach = 3 := by omega

structure BagChips where firstDay remaining laterDays totalDays : ℕ
  hFirst : firstDay = 5 + 5
  hRemaining : firstDay + remaining = 100
  hLater : remaining = 10 * laterDays
  hTotal : totalDays = 1 + laterDays
theorem bag_first_day (m : BagChips) : m.firstDay = 10 := by omega
theorem bag_remaining (m : BagChips) : m.remaining = 90 := by omega
theorem bag_later_days (m : BagChips) : m.laterDays = 9 := by omega
theorem bag_solution (m : BagChips) : m.totalDays = 10 := by omega

structure CandyBars where d2 d3 d4 d5 d6 total cents dollars : ℕ
  hD2 : d2 = 10 + 4
  hD3 : d3 = d2 + 4
  hD4 : d4 = d3 + 4
  hD5 : d5 = d4 + 4
  hD6 : d6 = d5 + 4
  hTotal : total = 10 + d2 + d3 + d4 + d5 + d6
  hCents : cents = total * 10
  hDollars : cents = dollars * 100
theorem candy_day2 (m : CandyBars) : m.d2 = 14 := by omega
theorem candy_day3 (m : CandyBars) : m.d3 = 18 := by omega
theorem candy_day4 (m : CandyBars) : m.d4 = 22 := by omega
theorem candy_day5 (m : CandyBars) : m.d5 = 26 := by omega
theorem candy_day6 (m : CandyBars) : m.d6 = 30 := by omega
theorem candy_total (m : CandyBars) : m.total = 120 := by omega
theorem candy_cents (m : CandyBars) : m.cents = 1200 := by omega
theorem candy_solution (m : CandyBars) : m.dollars = 12 := by omega

structure DinosaurModels where elementary total discount price paid : ℕ
  hElementary : elementary = 2 * 2
  hTotal : total = 2 + elementary
  hThreshold : 5 < total
  hDiscount : discount * 100 = 100 * 5
  hPrice : price + discount = 100
  hPaid : paid = price * 6
theorem dino_elementary (m : DinosaurModels) : m.elementary = 4 := by omega
theorem dino_total (m : DinosaurModels) : m.total = 6 ∧ 5 < m.total := by omega
theorem dino_discount (m : DinosaurModels) : m.discount = 5 := by omega
theorem dino_price (m : DinosaurModels) : m.price = 95 := by omega
theorem dino_solution (m : DinosaurModels) : m.paid = 570 := by omega

structure DogFur where ticks total : ℕ
  hTicks : ticks = 12 * 6
  hTotal : total = ticks + 12
theorem fur_ticks (m : DogFur) : m.ticks = 72 := by omega
theorem fur_solution (m : DogFur) : m.total = 84 := by omega

structure MiceSales where markup price daily days weekly : ℕ
  hMarkup : markup * 100 = 120 * 30
  hPrice : price = 120 + markup
  hDaily : daily = price * 25
  hDays : days = 7 - 3
  hWeekly : weekly = daily * 4
theorem mice_markup (m : MiceSales) : m.markup = 36 := by omega
theorem mice_price (m : MiceSales) : m.price = 156 := by omega
theorem mice_daily (m : MiceSales) : m.daily = 3900 := by omega
theorem mice_days (m : MiceSales) : m.days = 4 := by omega
theorem mice_solution (m : MiceSales) : m.weekly = 15600 := by omega

structure Calculator where perProblem total : ℕ
  hPer : perProblem + 2 = 5
  hTotal : total = perProblem * 20
theorem calc_per_problem (m : Calculator) : m.perProblem = 3 := by omega
theorem calc_solution (m : Calculator) : m.total = 60 := by omega

structure Newspapers where sold revenue discountCents costCents costTotal profit : ℕ
  hSold : sold * 100 = 500 * 80
  hRevenue : revenue = sold * 2
  hDiscount : discountCents * 100 = 200 * 75
  hCostEach : costCents + discountCents = 200
  hCostTotal : costTotal * 100 = 500 * costCents
  hProfit : profit + costTotal = revenue
theorem news_sold (m : Newspapers) : m.sold = 400 := by omega
theorem news_revenue (m : Newspapers) : m.revenue = 800 := by omega
theorem news_discount (m : Newspapers) : m.discountCents = 150 := by omega
theorem news_cost_each (m : Newspapers) : m.costCents = 50 := by omega
theorem news_cost_total (m : Newspapers) : m.costTotal = 250 := by omega
theorem news_solution (m : Newspapers) : m.profit = 550 := by omega

/-- For a fixed distance, a 3:4 speed ratio gives the inverse 4:3 time ratio. -/
structure RaceTimes where prejean rickey : ℕ
  hTotal : prejean + rickey = 70
  hInverseRatio : 3 * prejean = 4 * rickey
theorem race_inverse_ratio (m : RaceTimes) : 3 * m.prejean = 4 * m.rickey := m.hInverseRatio
theorem race_prejean (m : RaceTimes) : m.prejean = 40 := by omega
theorem race_solution (m : RaceTimes) : m.rickey = 30 := by omega
theorem race_reference_forty_impossible :
    ¬ ∃ prejean : ℕ, prejean + 40 = 70 ∧ 3 * prejean = 4 * 40 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0924A01
