import LemmaWeave.Problems.GSM8K.Sprint0923A08Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A08


theorem dreams_365_this_year (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.Dreams365) : m.thisYear = 1460 := LemmaWeave.Problems.GSM8K.Sprint0923A08.dreams_365_this_year m
theorem dreams_365_last_year (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.Dreams365) : m.lastYear = 2920 := LemmaWeave.Problems.GSM8K.Sprint0923A08.dreams_365_last_year m
theorem dreams_365_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.Dreams365) : m.total = 4380 := LemmaWeave.Problems.GSM8K.Sprint0923A08.dreams_365_solution m
theorem dreams_366_this_year (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.Dreams366) : m.thisYear = 1464 := LemmaWeave.Problems.GSM8K.Sprint0923A08.dreams_366_this_year m
theorem dreams_366_last_year (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.Dreams366) : m.lastYear = 2928 := LemmaWeave.Problems.GSM8K.Sprint0923A08.dreams_366_last_year m
theorem dreams_366_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.Dreams366) : m.total = 4392 := LemmaWeave.Problems.GSM8K.Sprint0923A08.dreams_366_solution m
theorem dreams_two_calendar_readings_differ : (4380 : ℕ) ≠ 4392 := LemmaWeave.Problems.GSM8K.Sprint0923A08.dreams_two_calendar_readings_differ
theorem faith_same_regular_hours (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FaithSameRate) : m.regularHours = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_same_regular_hours m
theorem faith_same_overtime_hours (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FaithSameRate) : m.overtimeHours = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_same_overtime_hours m
theorem faith_same_regular_pay (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FaithSameRate) : m.regularPay = 54000 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_same_regular_pay m
theorem faith_same_overtime_pay (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FaithSameRate) : m.overtimePay = 13500 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_same_overtime_pay m
theorem faith_same_rate_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FaithSameRate) : m.totalPay = 67500 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_same_rate_solution m
theorem faith_premium_regular_pay (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FaithTimeAndHalf) : m.regularPay = 54000 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_premium_regular_pay m
theorem faith_premium_overtime_hours (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FaithTimeAndHalf) : m.overtimeHours = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_premium_overtime_hours m
theorem faith_premium_overtime_pay (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FaithTimeAndHalf) : m.overtimePay = 20250 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_premium_overtime_pay m
theorem faith_time_and_half_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FaithTimeAndHalf) : m.totalPay = 74250 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_time_and_half_solution m
theorem faith_two_pay_readings_differ : (67500 : ℕ) ≠ 74250 := LemmaWeave.Problems.GSM8K.Sprint0923A08.faith_two_pay_readings_differ
theorem backpacks_first_revenue (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BackpackSales) : m.firstRevenue = 306 := LemmaWeave.Problems.GSM8K.Sprint0923A08.backpacks_first_revenue m
theorem backpacks_second_revenue (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BackpackSales) : m.secondRevenue = 250 := LemmaWeave.Problems.GSM8K.Sprint0923A08.backpacks_second_revenue m
theorem backpacks_first_two_sold (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BackpackSales) : m.firstTwoSold = 27 := LemmaWeave.Problems.GSM8K.Sprint0923A08.backpacks_first_two_sold m
theorem backpacks_remainder (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BackpackSales) : m.remainder = 21 := LemmaWeave.Problems.GSM8K.Sprint0923A08.backpacks_remainder m
theorem backpacks_remainder_revenue (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BackpackSales) : m.remainderRevenue = 462 := LemmaWeave.Problems.GSM8K.Sprint0923A08.backpacks_remainder_revenue m
theorem backpacks_revenue (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BackpackSales) : m.revenue = 1018 := LemmaWeave.Problems.GSM8K.Sprint0923A08.backpacks_revenue m
theorem backpacks_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BackpackSales) : m.profit = 442 := LemmaWeave.Problems.GSM8K.Sprint0923A08.backpacks_solution m
theorem restaurant_pizza (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.RestaurantOrder) : m.pizza = 18 := LemmaWeave.Problems.GSM8K.Sprint0923A08.restaurant_pizza m
theorem restaurant_burgers (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.RestaurantOrder) : m.burgers = 27 := LemmaWeave.Problems.GSM8K.Sprint0923A08.restaurant_burgers m
theorem restaurant_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.RestaurantOrder) : m.total = 45 := LemmaWeave.Problems.GSM8K.Sprint0923A08.restaurant_solution m
theorem shells_mia (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.ShellCounts) : m.mia = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A08.shells_mia m
theorem shells_ava (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.ShellCounts) : m.ava = 80 := LemmaWeave.Problems.GSM8K.Sprint0923A08.shells_ava m
theorem shells_alice (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.ShellCounts) : m.alice = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A08.shells_alice m
theorem shells_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.ShellCounts) : m.total = 195 := LemmaWeave.Problems.GSM8K.Sprint0923A08.shells_solution m
theorem chips_given (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.TortillaChips) : m.given = 12 := LemmaWeave.Problems.GSM8K.Sprint0923A08.chips_given m
theorem chips_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.TortillaChips) : m.kept = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A08.chips_solution m
theorem candies_lollipops (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.CandySharing) : m.lollipops = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A08.candies_lollipops m
theorem candies_canes (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.CandySharing) : m.canes = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A08.candies_canes m
theorem candies_boys (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.CandySharing) : m.boys = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A08.candies_boys m
theorem candies_girls (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.CandySharing) : m.girls = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A08.candies_girls m
theorem candies_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.CandySharing) : m.totalChildren = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A08.candies_solution m
theorem eggs_blue (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.EasterEggChance) : m.blue = 80 := LemmaWeave.Problems.GSM8K.Sprint0923A08.eggs_blue m
theorem eggs_purple (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.EasterEggChance) : m.purple = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A08.eggs_purple m
theorem eggs_partition (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.EasterEggChance) : m.blue + m.purple = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A08.eggs_partition m
theorem eggs_blue_five (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.EasterEggChance) : m.blueFive = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A08.eggs_blue_five m
theorem eggs_purple_five (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.EasterEggChance) : m.purpleFive = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A08.eggs_purple_five m
theorem eggs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.EasterEggChance) : m.favorable = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A08.eggs_solution m
theorem breakfast_sausages (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BreakfastTime) : m.sausageTime = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A08.breakfast_sausages m
theorem breakfast_eggs (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BreakfastTime) : m.eggTime = 24 := LemmaWeave.Problems.GSM8K.Sprint0923A08.breakfast_eggs m
theorem breakfast_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.BreakfastTime) : m.totalTime = 39 := LemmaWeave.Problems.GSM8K.Sprint0923A08.breakfast_solution m
theorem lychees_sold (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.LycheeRemainder) : m.sold = 250 := LemmaWeave.Problems.GSM8K.Sprint0923A08.lychees_sold m
theorem lychees_brought_home (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.LycheeRemainder) : m.broughtHome = 250 := LemmaWeave.Problems.GSM8K.Sprint0923A08.lychees_brought_home m
theorem lychees_eaten (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.LycheeRemainder) : m.eaten = 150 := LemmaWeave.Problems.GSM8K.Sprint0923A08.lychees_eaten m
theorem lychees_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.LycheeRemainder) : m.remaining = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A08.lychees_solution m
theorem cards_padma_out (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.CardTrades) : m.padmaOut = 17 := LemmaWeave.Problems.GSM8K.Sprint0923A08.cards_padma_out m
theorem cards_robert_out (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.CardTrades) : m.robertOut = 18 := LemmaWeave.Problems.GSM8K.Sprint0923A08.cards_robert_out m
theorem cards_feasible (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.CardTrades) : m.padmaOut ≤ 75 ∧ m.robertOut ≤ 88 := LemmaWeave.Problems.GSM8K.Sprint0923A08.cards_feasible m
theorem cards_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.CardTrades) : m.totalTraded = 35 := LemmaWeave.Problems.GSM8K.Sprint0923A08.cards_solution m
theorem wave_additive_extra (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.WaveAdditive) : m.extra = 1200 := LemmaWeave.Problems.GSM8K.Sprint0923A08.wave_additive_extra m
theorem wave_additive_per_day (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.WaveAdditive) : m.perDay = 1500 := LemmaWeave.Problems.GSM8K.Sprint0923A08.wave_additive_per_day m
theorem wave_additive_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.WaveAdditive) : m.total = 21000 := LemmaWeave.Problems.GSM8K.Sprint0923A08.wave_additive_solution m
theorem wave_fourfold_per_day (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.WaveFourfold) : m.perDay = 1200 := LemmaWeave.Problems.GSM8K.Sprint0923A08.wave_fourfold_per_day m
theorem wave_fourfold_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.WaveFourfold) : m.total = 16800 := LemmaWeave.Problems.GSM8K.Sprint0923A08.wave_fourfold_solution m
theorem wave_two_readings_differ : (21000 : ℕ) ≠ 16800 := LemmaWeave.Problems.GSM8K.Sprint0923A08.wave_two_readings_differ
theorem badges_no_preprinted (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.NameBadges) : m.noPreprinted = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A08.badges_no_preprinted m
theorem badges_handwritten (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.NameBadges) : m.handwritten = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A08.badges_handwritten m
theorem badges_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.NameBadges) : m.noBadge = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A08.badges_solution m
theorem flowers_lilies (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FloralOrder) : m.lilies = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A08.flowers_lilies m
theorem flowers_per_arrangement (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FloralOrder) : m.perArrangement = 29 := LemmaWeave.Problems.GSM8K.Sprint0923A08.flowers_per_arrangement m
theorem flowers_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.FloralOrder) : m.total = 290 := LemmaWeave.Problems.GSM8K.Sprint0923A08.flowers_solution m
theorem commission_hours (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.PaintingCommission) : m.hours = 24 := LemmaWeave.Problems.GSM8K.Sprint0923A08.commission_hours m
theorem commission_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A08.PaintingCommission) : m.hourlyPay = 150 := LemmaWeave.Problems.GSM8K.Sprint0923A08.commission_solution m

end LemmaWeave.Tests.GSM8KSprint0923A08

#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.dreams_365_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.dreams_366_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.dreams_two_calendar_readings_differ
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.faith_same_rate_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.faith_time_and_half_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.faith_two_pay_readings_differ
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.backpacks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.restaurant_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.shells_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.chips_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.candies_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.eggs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.breakfast_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.lychees_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.cards_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.wave_additive_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.wave_fourfold_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.wave_two_readings_differ
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.badges_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.flowers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A08.commission_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.dreams_365_solution to "work/lw-preserved-LemmaWeave.Tests.GSM8KSprint0923A08.dreams_365_solution-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.faith_same_rate_solution to "work/lw-preserved-LemmaWeave.Tests.GSM8KSprint0923A08.faith_same_rate_solution-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.backpacks_solution to "work/gsm8k-sprint100-backpacks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.restaurant_solution to "work/gsm8k-sprint100-restaurant-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.shells_solution to "work/gsm8k-sprint100-shells-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.chips_solution to "work/gsm8k-sprint100-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.candies_solution to "work/gsm8k-sprint100-candies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.eggs_solution to "work/gsm8k-sprint100-easter-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.breakfast_solution to "work/gsm8k-sprint100-breakfast-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.lychees_solution to "work/gsm8k-sprint100-lychees-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.cards_solution to "work/gsm8k-sprint100-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.wave_additive_solution to "work/lw-preserved-LemmaWeave.Tests.GSM8KSprint0923A08.wave_additive_solution-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.badges_solution to "work/gsm8k-sprint100-badges-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.flowers_solution to "work/gsm8k-sprint100-flowers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.commission_solution to "work/gsm8k-sprint100-commission-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.wave_two_readings_differ to "work/gsm8k-sprint100-coronavirus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.dreams_two_calendar_readings_differ to "work/gsm8k-sprint100-dreams-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.faith_two_pay_readings_differ to "work/gsm8k-sprint100-faith-graph.json"
