import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0925A11

structure BreadShares where total each : ℕ
  hTotal : total = 15 * 4
  hEach : total = 10 * each
theorem bread_total (m : BreadShares) : m.total = 60 := by cases m; omega
theorem bread_solution (m : BreadShares) : m.each = 6 := by cases m; omega

structure LatiaFourWeek where weekly monthly shortfall hours : ℕ
  hWeekly : weekly = 30 * 10
  hMonthly : monthly = 4 * weekly
  hShortfall : monthly + shortfall = 1700
  hHours : shortfall = 10 * hours
theorem latia_weekly (m : LatiaFourWeek) : m.weekly = 300 := by cases m; omega
theorem latia_monthly (m : LatiaFourWeek) : m.monthly = 1200 := by cases m; omega
theorem latia_shortfall (m : LatiaFourWeek) : m.shortfall = 500 := by cases m; omega
theorem latia_four_week_solution (m : LatiaFourWeek) : m.hours = 50 := by cases m; omega
theorem latia_five_week_counterexample : 5 * 30 * 10 + 20 * 10 = 1700 := by norm_num
theorem latia_scope (m : LatiaFourWeek) : m.hours = 50 ∧ 20 ≠ 50 := by
  constructor
  · exact latia_four_week_solution m
  · norm_num

structure ShirtCosts where kindergarten first second third total : ℕ
  hK : kindergarten = 101 * 580
  hF : first = 113 * 500
  hS : second = 107 * 560
  hT : third = 108 * 525
  hTotal : total = kindergarten + first + second + third
theorem shirts_kindergarten (m : ShirtCosts) : m.kindergarten = 58580 := by cases m; omega
theorem shirts_first (m : ShirtCosts) : m.first = 56500 := by cases m; omega
theorem shirts_second (m : ShirtCosts) : m.second = 59920 := by cases m; omega
theorem shirts_third (m : ShirtCosts) : m.third = 56700 := by cases m; omega
theorem shirts_solution (m : ShirtCosts) : m.total = 231700 := by cases m; omega

structure BottleCups where whole half total : ℕ
  hWhole : whole = 10 * 2
  hHalf : half = 5 * 1
  hTotal : total = whole + half
theorem bottles_whole (m : BottleCups) : m.whole = 20 := by cases m; omega
theorem bottles_half (m : BottleCups) : m.half = 5 := by cases m; omega
theorem bottles_solution (m : BottleCups) : m.total = 25 := by cases m; omega
theorem bottles_reference_error (m : BottleCups) : m.total ≠ 30 := by cases m; omega

structure TwinShirts where razel total : ℕ
  hRazel : razel = 2 * 6
  hTotal : total = 6 + razel
theorem twins_razel (m : TwinShirts) : m.razel = 12 := by cases m; omega
theorem twins_solution (m : TwinShirts) : m.total = 18 := by cases m; omega

structure LibraryCart where shelved misplaced net remaining start : ℕ
  hShelved : shelved = 12 + 19 + 8
  hMisplaced : misplaced = 4
  hNet : net + misplaced = shelved
  hRemaining : remaining = 16
  hStart : start = net + remaining
theorem library_shelved (m : LibraryCart) : m.shelved = 39 := by cases m; omega
theorem library_net (m : LibraryCart) : m.net = 35 := by cases m; omega
theorem library_remaining (m : LibraryCart) : m.remaining = 16 := by cases m; omega
theorem library_solution (m : LibraryCart) : m.start = 51 := by cases m; omega

structure RiverObjects where sticks rocks total : ℕ
  hSticks : sticks = 10 + 6
  hRocks : 2 * rocks = 10
  hTotal : total = sticks + rocks
theorem river_sticks (m : RiverObjects) : m.sticks = 16 := by cases m; omega
theorem river_rocks (m : RiverObjects) : m.rocks = 5 := by cases m; omega
theorem river_solution (m : RiverObjects) : m.total = 21 := by cases m; omega

theorem internet_not_before : ¬ (25 : ℕ) < 25 := by omega
theorem internet_nonstrict_total : 4 * (5000 - 250) = 19000 := by norm_num
theorem internet_policy_mismatch : (20000 : ℕ) ≠ 19000 := by norm_num
theorem internet_literal_solution : 4 * 5000 = 20000 := by norm_num

structure ToyCars where thisMonth bought original : ℕ
  hThis : thisMonth = 2 * 5
  hBought : bought = 5 + thisMonth
  hTotal : original + bought = 40
theorem cars_this_month (m : ToyCars) : m.thisMonth = 10 := by cases m; omega
theorem cars_bought (m : ToyCars) : m.bought = 15 := by cases m; omega
theorem cars_solution (m : ToyCars) : m.original = 25 := by cases m; omega

structure Insurance where accident tickets total : ℕ
  hAccident : accident = 50 * 10 / 100
  hTickets : tickets = 3 * 5
  hTotal : total = 50 + accident + tickets
theorem insurance_accident (m : Insurance) : m.accident = 5 := by cases m; norm_num at *
theorem insurance_tickets (m : Insurance) : m.tickets = 15 := by cases m; norm_num at *
theorem insurance_solution (m : Insurance) : m.total = 70 := by cases m; norm_num at *

structure Peppers where oldSpicy oldMild oldTotal newSpicy newMild newTotal fewer : ℕ
  hOldSpicy : oldSpicy = 3 * 30 + 2 * 30
  hOldMild : oldMild = 1 * 10
  hOldTotal : oldTotal = oldSpicy + oldMild
  hNewSpicy : newSpicy = 2 * 15
  hNewMild : newMild = 1 * 90
  hNewTotal : newTotal = newSpicy + newMild
  hFewer : newTotal + fewer = oldTotal
theorem peppers_old_spicy (m : Peppers) : m.oldSpicy = 150 := by cases m; omega
theorem peppers_old_total (m : Peppers) : m.oldTotal = 160 := by cases m; omega
theorem peppers_new_spicy (m : Peppers) : m.newSpicy = 30 := by cases m; omega
theorem peppers_new_total (m : Peppers) : m.newTotal = 120 := by cases m; omega
theorem peppers_solution (m : Peppers) : m.fewer = 40 := by cases m; omega

structure StereoTrade where credit discount price pocket : ℕ
  hCredit : 100 * credit = 80 * 250
  hDiscount : 100 * discount = 25 * 600
  hPrice : price + discount = 600
  hPocket : pocket + credit = price
theorem stereo_credit (m : StereoTrade) : m.credit = 200 := by cases m; omega
theorem stereo_discount (m : StereoTrade) : m.discount = 150 := by cases m; omega
theorem stereo_price (m : StereoTrade) : m.price = 450 := by cases m; omega
theorem stereo_solution (m : StereoTrade) : m.pocket = 250 := by cases m; omega

structure CandyCounts where james rubert total : ℕ
  hJames : james = 3 * 6
  hRubert : rubert = 4 * james
  hTotal : total = 6 + james + rubert
theorem candies_james (m : CandyCounts) : m.james = 18 := by cases m; omega
theorem candies_rubert (m : CandyCounts) : m.rubert = 72 := by cases m; omega
theorem candies_solution (m : CandyCounts) : m.total = 96 := by cases m; omega

structure QuarterPlus where quarter total : ℕ
  hQuarter : 4 * quarter = 48
  hTotal : total = quarter + 15
theorem quarter_value (m : QuarterPlus) : m.quarter = 12 := by cases m; omega
theorem quarter_solution (m : QuarterPlus) : m.total = 27 := by cases m; omega

structure BurgerOrder where soda count burgerCost sodaCost total : ℕ
  hSoda : 3 * soda = 6
  hCount : count = 1 + 2
  hBurger : burgerCost = count * 6
  hSodaCost : sodaCost = count * soda
  hTotal : total = burgerCost + sodaCost
theorem burger_soda (m : BurgerOrder) : m.soda = 2 := by cases m; omega
theorem burger_count (m : BurgerOrder) : m.count = 3 := by cases m; omega
theorem burger_subtotals (m : BurgerOrder) : m.burgerCost = 18 ∧ m.sodaCost = 6 := by cases m; omega
theorem burger_solution (m : BurgerOrder) : m.total = 24 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0925A11
