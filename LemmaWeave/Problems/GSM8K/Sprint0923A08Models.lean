import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0923A08

/-- Standard-year reading: the current one-year interval has 365 days. -/
structure Dreams365 where thisYear lastYear total : ℕ
  hThisYear : thisYear = 4 * 365
  hLastYear : lastYear = 2 * thisYear
  hTotal : total = thisYear + lastYear

theorem dreams_365_this_year (m : Dreams365) : m.thisYear = 1460 := by rw [m.hThisYear]
theorem dreams_365_last_year (m : Dreams365) : m.lastYear = 2920 := by
  rw [m.hLastYear, dreams_365_this_year m]
theorem dreams_365_solution (m : Dreams365) : m.total = 4380 := by
  rw [m.hTotal, dreams_365_this_year m, dreams_365_last_year m]

/-- Leap-year reading: the current one-year interval has 366 days. -/
structure Dreams366 where thisYear lastYear total : ℕ
  hThisYear : thisYear = 4 * 366
  hLastYear : lastYear = 2 * thisYear
  hTotal : total = thisYear + lastYear

theorem dreams_366_this_year (m : Dreams366) : m.thisYear = 1464 := by rw [m.hThisYear]
theorem dreams_366_last_year (m : Dreams366) : m.lastYear = 2928 := by
  rw [m.hLastYear, dreams_366_this_year m]
theorem dreams_366_solution (m : Dreams366) : m.total = 4392 := by
  rw [m.hTotal, dreams_366_this_year m, dreams_366_last_year m]
theorem dreams_two_calendar_readings_differ : (4380 : ℕ) ≠ 4392 := by norm_num

/-- Pay amounts are in cents; the stated $13.50 rate is applied to all hours. -/
structure FaithSameRate where regularHours overtimeHours regularPay overtimePay totalPay : ℕ
  hRegularHours : regularHours = 8 * 5
  hOvertimeHours : overtimeHours = 2 * 5
  hRegularPay : regularPay = regularHours * 1350
  hOvertimePay : overtimePay = overtimeHours * 1350
  hTotal : totalPay = regularPay + overtimePay

theorem faith_same_regular_hours (m : FaithSameRate) : m.regularHours = 40 := by rw [m.hRegularHours]
theorem faith_same_overtime_hours (m : FaithSameRate) : m.overtimeHours = 10 := by rw [m.hOvertimeHours]
theorem faith_same_regular_pay (m : FaithSameRate) : m.regularPay = 54000 := by
  rw [m.hRegularPay, faith_same_regular_hours m]
theorem faith_same_overtime_pay (m : FaithSameRate) : m.overtimePay = 13500 := by
  rw [m.hOvertimePay, faith_same_overtime_hours m]
theorem faith_same_rate_solution (m : FaithSameRate) : m.totalPay = 67500 := by
  rw [m.hTotal, faith_same_regular_pay m, faith_same_overtime_pay m]

/-- Alternative employment-policy reading: overtime is paid at time-and-a-half. -/
structure FaithTimeAndHalf where regularPay overtimeHours overtimePay totalPay : ℕ
  hRegularPay : regularPay = 8 * 5 * 1350
  hOvertimeHours : overtimeHours = 2 * 5
  hOvertimePay : overtimePay * 2 = overtimeHours * 1350 * 3
  hTotal : totalPay = regularPay + overtimePay

theorem faith_premium_regular_pay (m : FaithTimeAndHalf) : m.regularPay = 54000 := by
  rw [m.hRegularPay]
theorem faith_premium_overtime_hours (m : FaithTimeAndHalf) : m.overtimeHours = 10 := by
  rw [m.hOvertimeHours]
theorem faith_premium_overtime_pay (m : FaithTimeAndHalf) : m.overtimePay = 20250 := by
  have h := m.hOvertimePay
  rw [faith_premium_overtime_hours m] at h
  omega
theorem faith_time_and_half_solution (m : FaithTimeAndHalf) : m.totalPay = 74250 := by
  rw [m.hTotal, faith_premium_regular_pay m, faith_premium_overtime_pay m]
theorem faith_two_pay_readings_differ : (67500 : ℕ) ≠ 74250 := by norm_num

structure BackpackSales where firstRevenue secondRevenue firstTwoSold remainder remainderRevenue revenue profit : ℕ
  hFirstRevenue : firstRevenue = 17 * 18
  hSecondRevenue : secondRevenue = 10 * 25
  hFirstTwoSold : firstTwoSold = 17 + 10
  hRemainder : remainder + firstTwoSold = 48
  hRemainderRevenue : remainderRevenue = remainder * 22
  hRevenue : revenue = firstRevenue + secondRevenue + remainderRevenue
  hProfit : profit + 576 = revenue

theorem backpacks_first_revenue (m : BackpackSales) : m.firstRevenue = 306 := by rw [m.hFirstRevenue]
theorem backpacks_second_revenue (m : BackpackSales) : m.secondRevenue = 250 := by rw [m.hSecondRevenue]
theorem backpacks_first_two_sold (m : BackpackSales) : m.firstTwoSold = 27 := by rw [m.hFirstTwoSold]
theorem backpacks_remainder (m : BackpackSales) : m.remainder = 21 := by
  have h := m.hRemainder
  rw [backpacks_first_two_sold m] at h
  omega
theorem backpacks_remainder_revenue (m : BackpackSales) : m.remainderRevenue = 462 := by
  rw [m.hRemainderRevenue, backpacks_remainder m]
theorem backpacks_revenue (m : BackpackSales) : m.revenue = 1018 := by
  rw [m.hRevenue, backpacks_first_revenue m, backpacks_second_revenue m,
      backpacks_remainder_revenue m]
theorem backpacks_solution (m : BackpackSales) : m.profit = 442 := by
  have h := m.hProfit
  rw [backpacks_revenue m] at h
  omega

structure RestaurantOrder where pizza burgers total : ℕ
  hPizza : pizza = 2 * 9
  hBurgers : burgers = 3 * 9
  hTotal : total = pizza + burgers

theorem restaurant_pizza (m : RestaurantOrder) : m.pizza = 18 := by rw [m.hPizza]
theorem restaurant_burgers (m : RestaurantOrder) : m.burgers = 27 := by rw [m.hBurgers]
theorem restaurant_solution (m : RestaurantOrder) : m.total = 45 := by
  rw [m.hTotal, restaurant_pizza m, restaurant_burgers m]

structure ShellCounts where mia ava alice total : ℕ
  hMia : mia = 4 * 15
  hAva : ava = mia + 20
  hAlice : alice * 2 = ava
  hTotal : total = 15 + mia + ava + alice

theorem shells_mia (m : ShellCounts) : m.mia = 60 := by rw [m.hMia]
theorem shells_ava (m : ShellCounts) : m.ava = 80 := by rw [m.hAva, shells_mia m]
theorem shells_alice (m : ShellCounts) : m.alice = 40 := by
  have h := m.hAlice
  rw [shells_ava m] at h
  omega
theorem shells_solution (m : ShellCounts) : m.total = 195 := by
  rw [m.hTotal, shells_mia m, shells_ava m, shells_alice m]

structure TortillaChips where given kept : ℕ
  hGiven : given = 7 + 5
  hKept : kept + given = 22

theorem chips_given (m : TortillaChips) : m.given = 12 := by rw [m.hGiven]
theorem chips_solution (m : TortillaChips) : m.kept = 10 := by
  have h := m.hKept
  rw [chips_given m] at h
  omega

structure CandySharing where lollipops canes boys girls totalChildren : ℕ
  hLollipops : lollipops * 3 = 90
  hCanes : canes + lollipops = 90
  hBoys : boys * 3 = lollipops
  hGirls : girls * 2 = canes
  hTotal : totalChildren = boys + girls

theorem candies_lollipops (m : CandySharing) : m.lollipops = 30 := by omega
theorem candies_canes (m : CandySharing) : m.canes = 60 := by
  have h := m.hCanes
  rw [candies_lollipops m] at h
  omega
theorem candies_boys (m : CandySharing) : m.boys = 10 := by
  have h := m.hBoys
  rw [candies_lollipops m] at h
  omega
theorem candies_girls (m : CandySharing) : m.girls = 30 := by
  have h := m.hGirls
  rw [candies_canes m] at h
  omega
theorem candies_solution (m : CandySharing) : m.totalChildren = 40 := by
  rw [m.hTotal, candies_boys m, candies_girls m]

/-- All fields are percentage points. Blue and purple exhaust the egg colors. -/
structure EasterEggChance where blue purple blueFive purpleFive favorable : ℕ
  hBlue : blue = 80
  hPurple : purple = 20
  hColors : blue + purple = 100
  hBlueFive : blueFive * 4 = blue
  hPurpleFive : purpleFive * 2 = purple
  hFavorable : favorable = blueFive + purpleFive

theorem eggs_blue (m : EasterEggChance) : m.blue = 80 := m.hBlue
theorem eggs_purple (m : EasterEggChance) : m.purple = 20 := m.hPurple
theorem eggs_partition (m : EasterEggChance) : m.blue + m.purple = 100 := m.hColors
theorem eggs_blue_five (m : EasterEggChance) : m.blueFive = 20 := by
  have h := m.hBlueFive
  rw [eggs_blue m] at h
  omega
theorem eggs_purple_five (m : EasterEggChance) : m.purpleFive = 10 := by
  have h := m.hPurpleFive
  rw [eggs_purple m] at h
  omega
theorem eggs_solution (m : EasterEggChance) : m.favorable = 30 := by
  rw [m.hFavorable, eggs_blue_five m, eggs_purple_five m]

structure BreakfastTime where sausageTime eggTime totalTime : ℕ
  hSausages : sausageTime = 3 * 5
  hEggs : eggTime = 6 * 4
  hTotal : totalTime = sausageTime + eggTime

theorem breakfast_sausages (m : BreakfastTime) : m.sausageTime = 15 := by rw [m.hSausages]
theorem breakfast_eggs (m : BreakfastTime) : m.eggTime = 24 := by rw [m.hEggs]
theorem breakfast_solution (m : BreakfastTime) : m.totalTime = 39 := by
  rw [m.hTotal, breakfast_sausages m, breakfast_eggs m]

structure LycheeRemainder where sold broughtHome eaten remaining : ℕ
  hSold : sold * 2 = 500
  hBroughtHome : broughtHome + sold = 500
  hEaten : eaten * 5 = broughtHome * 3
  hRemaining : remaining + eaten = broughtHome

theorem lychees_sold (m : LycheeRemainder) : m.sold = 250 := by omega
theorem lychees_brought_home (m : LycheeRemainder) : m.broughtHome = 250 := by
  have h := m.hBroughtHome
  rw [lychees_sold m] at h
  omega
theorem lychees_eaten (m : LycheeRemainder) : m.eaten = 150 := by
  have h := m.hEaten
  rw [lychees_brought_home m] at h
  omega
theorem lychees_solution (m : LycheeRemainder) : m.remaining = 100 := by
  have h := m.hRemaining
  rw [lychees_brought_home m, lychees_eaten m] at h
  omega

structure CardTrades where padmaOut robertOut totalTraded : ℕ
  hPadmaOut : padmaOut = 2 + 15
  hRobertOut : robertOut = 10 + 8
  hTotal : totalTraded = padmaOut + robertOut

theorem cards_padma_out (m : CardTrades) : m.padmaOut = 17 := by rw [m.hPadmaOut]
theorem cards_robert_out (m : CardTrades) : m.robertOut = 18 := by rw [m.hRobertOut]
theorem cards_feasible (m : CardTrades) : m.padmaOut ≤ 75 ∧ m.robertOut ≤ 88 := by
  have hp := cards_padma_out m
  have hr := cards_robert_out m
  omega
theorem cards_solution (m : CardTrades) : m.totalTraded = 35 := by
  rw [m.hTotal, cards_padma_out m, cards_robert_out m]

/-- Additive reading of “four times more”: add four times the first-wave rate. -/
structure WaveAdditive where extra perDay total : ℕ
  hExtra : extra = 4 * 300
  hPerDay : perDay = 300 + extra
  hTotal : total = 14 * perDay

theorem wave_additive_extra (m : WaveAdditive) : m.extra = 1200 := by rw [m.hExtra]
theorem wave_additive_per_day (m : WaveAdditive) : m.perDay = 1500 := by
  rw [m.hPerDay, wave_additive_extra m]
theorem wave_additive_solution (m : WaveAdditive) : m.total = 21000 := by
  rw [m.hTotal, wave_additive_per_day m]

/-- Multiplicative reading: the second-wave rate is four times the first-wave rate. -/
structure WaveFourfold where perDay total : ℕ
  hPerDay : perDay = 4 * 300
  hTotal : total = 14 * perDay

theorem wave_fourfold_per_day (m : WaveFourfold) : m.perDay = 1200 := by rw [m.hPerDay]
theorem wave_fourfold_solution (m : WaveFourfold) : m.total = 16800 := by
  rw [m.hTotal, wave_fourfold_per_day m]
theorem wave_two_readings_differ : (21000 : ℕ) ≠ 16800 := by norm_num

structure NameBadges where noPreprinted handwritten noBadge : ℕ
  hNoPreprinted : noPreprinted + 16 = 36
  hHandwritten : handwritten * 2 = noPreprinted
  hNoBadge : noBadge + handwritten = noPreprinted

theorem badges_no_preprinted (m : NameBadges) : m.noPreprinted = 20 := by omega
theorem badges_handwritten (m : NameBadges) : m.handwritten = 10 := by
  have h := m.hHandwritten
  rw [badges_no_preprinted m] at h
  omega
theorem badges_solution (m : NameBadges) : m.noBadge = 10 := by
  have h := m.hNoBadge
  rw [badges_no_preprinted m, badges_handwritten m] at h
  omega

structure FloralOrder where lilies perArrangement total : ℕ
  hLilies : lilies = 2 * 3
  hPerArrangement : perArrangement = 8 + 12 + 3 + lilies
  hTotal : total = perArrangement * 10

theorem flowers_lilies (m : FloralOrder) : m.lilies = 6 := by rw [m.hLilies]
theorem flowers_per_arrangement (m : FloralOrder) : m.perArrangement = 29 := by
  rw [m.hPerArrangement, flowers_lilies m]
theorem flowers_solution (m : FloralOrder) : m.total = 290 := by
  rw [m.hTotal, flowers_per_arrangement m]

structure PaintingCommission where hours hourlyPay : ℕ
  hHours : hours = 2 * 12
  hHourlyPay : hourlyPay * hours = 3600

theorem commission_hours (m : PaintingCommission) : m.hours = 24 := by rw [m.hHours]
theorem commission_solution (m : PaintingCommission) : m.hourlyPay = 150 := by
  have h := m.hHourlyPay
  rw [commission_hours m] at h
  omega

end LemmaWeave.Problems.GSM8K.Sprint0923A08
