import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A02

structure LostMoney where
  afterPurchase : ℕ
  now : ℕ
  lost : ℕ
  hAfter : afterPurchase + 2 = 11
  hNow : now = 3
  hLost : now + lost = afterPurchase
theorem lost_after_purchase (m : LostMoney) : m.afterPurchase = 9 := by omega
theorem lost_solution (m : LostMoney) : m.lost = 6 := by omega

structure Oranges where
  total : ℕ
  notSold : ℕ
  sold : ℕ
  hTotal : total = 10 * 30
  hNotSold : notSold = 50 + 30
  hPartition : sold + notSold = total
theorem orange_total (m : Oranges) : m.total = 300 := by omega
theorem orange_not_sold (m : Oranges) : m.notSold = 80 := by omega
theorem orange_solution (m : Oranges) : m.sold = 220 := by omega

structure Factory where
  hours : ℕ
  days : ℕ
  hHours : hours * 50 = 4000
  hDays : hours = days * 10
theorem factory_hours (m : Factory) : m.hours = 80 := by omega
theorem factory_solution (m : Factory) : m.days = 8 := by omega

structure Paintings where
  made : ℕ
  total : ℕ
  hMade : made = 2 * 30
  hTotal : total = 20 + made
theorem paint_new (m : Paintings) : m.made = 60 := by omega
theorem paint_solution (m : Paintings) : m.total = 80 := by omega

structure Commission where
  earned : ℕ
  personal : ℕ
  saved : ℕ
  hEarned : earned * 100 = 24000 * 12
  hPersonal : personal * 100 = earned * 60
  hSaved : saved + personal = earned
theorem commission_earned (m : Commission) : m.earned = 2880 := by omega
theorem commission_personal (m : Commission) : m.personal = 1728 := by omega
theorem commission_solution (m : Commission) : m.saved = 1152 := by omega

structure Coffee where total : ℕ
  hTotal : total = 2 * 3
theorem coffee_solution (m : Coffee) : m.total = 6 := by omega

structure Turtles where
  second : ℕ
  beforeHail : ℕ
  afterHail : ℕ
  addedFourth : ℕ
  final : ℕ
  hSecond : second = 4 * 4
  hBefore : beforeHail = second + 12
  hAfter : afterHail + 3 = beforeHail
  hAdded : addedFourth = 2 * 3
  hFinal : final = afterHail + addedFourth
theorem turtle_second (m : Turtles) : m.second = 16 := by omega
theorem turtle_before_hail (m : Turtles) : m.beforeHail = 28 := by omega
theorem turtle_after_hail (m : Turtles) : m.afterHail = 25 := by omega
theorem turtle_added_fourth (m : Turtles) : m.addedFourth = 6 := by omega
theorem turtle_solution (m : Turtles) : m.final = 31 := by omega

structure Clothes where
  bought : ℕ
  gross : ℕ
  pants : ℕ
  shorts : ℕ
  shirtsRevenue : ℕ
  shirts : ℕ
  hBought : bought = 2 * 10
  hGross : gross = 30 + bought
  hPants : pants = 3 * 5
  hShorts : shorts = 5 * 3
  hRevenue : pants + shorts + shirtsRevenue = gross
  hShirts : shirtsRevenue = 4 * shirts
theorem clothes_bought (m : Clothes) : m.bought = 20 := by omega
theorem clothes_gross (m : Clothes) : m.gross = 50 := by omega
theorem clothes_pants (m : Clothes) : m.pants = 15 := by omega
theorem clothes_shorts (m : Clothes) : m.shorts = 15 := by omega
theorem clothes_shirts_revenue (m : Clothes) : m.shirtsRevenue = 20 := by omega
theorem clothes_solution (m : Clothes) : m.shirts = 5 := by omega

structure HotDogs where
  tuesday : ℕ
  wednesday : ℕ
  total : ℕ
  hTuesday : tuesday = 10 + 2
  hWednesday : wednesday = tuesday + 2
  hTotal : total = 10 + tuesday + wednesday
theorem dogs_tuesday (m : HotDogs) : m.tuesday = 12 := by omega
theorem dogs_wednesday (m : HotDogs) : m.wednesday = 14 := by omega
theorem dogs_solution (m : HotDogs) : m.total = 36 := by omega

structure CatCafes where
  cool : ℕ
  paw : ℕ
  meow : ℕ
  combined : ℕ
  hCool : cool = 5
  hPaw : paw = 2 * cool
  hMeow : meow = 3 * paw
  hCombined : combined = meow + paw
theorem cats_paw (m : CatCafes) : m.paw = 10 := by omega
theorem cats_meow (m : CatCafes) : m.meow = 30 := by omega
theorem cats_solution (m : CatCafes) : m.combined = 40 := by omega

structure Berries where
  initial : ℕ
  after : ℕ
  hAfter : after + 7 = 32
  hTransfer : initial + 4 = after
theorem berries_after (m : Berries) : m.after = 25 := by omega
theorem berries_solution (m : Berries) : m.initial = 21 := by omega

structure Pizza where
  eaten : ℕ
  left : ℕ
  hEaten : eaten * 4 = 16 * 3
  hPartition : left + eaten = 16
theorem pizza_eaten (m : Pizza) : m.eaten = 12 := by omega
theorem pizza_solution (m : Pizza) : m.left = 4 := by omega

structure Startup where
  tax : ℕ
  afterTax : ℕ
  marketing : ℕ
  afterMarketing : ℕ
  operational : ℕ
  afterOperational : ℕ
  wages : ℕ
  each : ℕ
  hTax : tax * 100 = 400000 * 10
  hAfterTax : afterTax + tax = 400000
  hMarketing : marketing * 100 = afterTax * 5
  hAfterMarketing : afterMarketing + marketing = afterTax
  hOperational : operational * 100 = afterMarketing * 20
  hAfterOperational : afterOperational + operational = afterMarketing
  hWages : wages * 100 = afterOperational * 15
  hEach : each * 10 = wages
theorem startup_tax (m : Startup) : m.tax = 40000 := by omega
theorem startup_after_tax (m : Startup) : m.afterTax = 360000 := by omega
theorem startup_marketing (m : Startup) : m.marketing = 18000 := by omega
theorem startup_after_marketing (m : Startup) : m.afterMarketing = 342000 := by omega
theorem startup_operational (m : Startup) : m.operational = 68400 := by omega
theorem startup_after_operational (m : Startup) : m.afterOperational = 273600 := by omega
theorem startup_wages (m : Startup) : m.wages = 41040 := by omega
theorem startup_solution (m : Startup) : m.each = 4104 := by omega

structure Frogs where
  smallest : ℕ
  difference : ℕ
  hSmallest : smallest * 10 = 120
  hDifference : difference + smallest = 120
theorem frog_smallest (m : Frogs) : m.smallest = 12 := by omega
theorem frog_solution (m : Frogs) : m.difference = 108 := by omega

structure Spending where x : ℕ
  hTotal : x + 2 * x + 3 * x = 120
theorem spending_equation (m : Spending) : 6 * m.x = 120 := by omega
theorem spending_solution (m : Spending) : m.x = 20 := by omega

end LemmaWeave.Problems.GSM8K.Sprint0924A02
