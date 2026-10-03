import LemmaWeave.Problems.GSM8K.Sprint0923A08Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A08
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A08

theorem dreams_365_this_year (m : P.Dreams365) : m.thisYear = 1460 := P.dreams_365_this_year m
theorem dreams_365_last_year (m : P.Dreams365) : m.lastYear = 2920 := P.dreams_365_last_year m
theorem dreams_365_solution (m : P.Dreams365) : m.total = 4380 := P.dreams_365_solution m
theorem dreams_366_this_year (m : P.Dreams366) : m.thisYear = 1464 := P.dreams_366_this_year m
theorem dreams_366_last_year (m : P.Dreams366) : m.lastYear = 2928 := P.dreams_366_last_year m
theorem dreams_366_solution (m : P.Dreams366) : m.total = 4392 := P.dreams_366_solution m
theorem dreams_two_calendar_readings_differ : (4380 : ℕ) ≠ 4392 := P.dreams_two_calendar_readings_differ
theorem faith_same_regular_hours (m : P.FaithSameRate) : m.regularHours = 40 := P.faith_same_regular_hours m
theorem faith_same_overtime_hours (m : P.FaithSameRate) : m.overtimeHours = 10 := P.faith_same_overtime_hours m
theorem faith_same_regular_pay (m : P.FaithSameRate) : m.regularPay = 54000 := P.faith_same_regular_pay m
theorem faith_same_overtime_pay (m : P.FaithSameRate) : m.overtimePay = 13500 := P.faith_same_overtime_pay m
theorem faith_same_rate_solution (m : P.FaithSameRate) : m.totalPay = 67500 := P.faith_same_rate_solution m
theorem faith_premium_regular_pay (m : P.FaithTimeAndHalf) : m.regularPay = 54000 := P.faith_premium_regular_pay m
theorem faith_premium_overtime_hours (m : P.FaithTimeAndHalf) : m.overtimeHours = 10 := P.faith_premium_overtime_hours m
theorem faith_premium_overtime_pay (m : P.FaithTimeAndHalf) : m.overtimePay = 20250 := P.faith_premium_overtime_pay m
theorem faith_time_and_half_solution (m : P.FaithTimeAndHalf) : m.totalPay = 74250 := P.faith_time_and_half_solution m
theorem faith_two_pay_readings_differ : (67500 : ℕ) ≠ 74250 := P.faith_two_pay_readings_differ
theorem backpacks_first_revenue (m : P.BackpackSales) : m.firstRevenue = 306 := P.backpacks_first_revenue m
theorem backpacks_second_revenue (m : P.BackpackSales) : m.secondRevenue = 250 := P.backpacks_second_revenue m
theorem backpacks_first_two_sold (m : P.BackpackSales) : m.firstTwoSold = 27 := P.backpacks_first_two_sold m
theorem backpacks_remainder (m : P.BackpackSales) : m.remainder = 21 := P.backpacks_remainder m
theorem backpacks_remainder_revenue (m : P.BackpackSales) : m.remainderRevenue = 462 := P.backpacks_remainder_revenue m
theorem backpacks_revenue (m : P.BackpackSales) : m.revenue = 1018 := P.backpacks_revenue m
theorem backpacks_solution (m : P.BackpackSales) : m.profit = 442 := P.backpacks_solution m
theorem restaurant_pizza (m : P.RestaurantOrder) : m.pizza = 18 := P.restaurant_pizza m
theorem restaurant_burgers (m : P.RestaurantOrder) : m.burgers = 27 := P.restaurant_burgers m
theorem restaurant_solution (m : P.RestaurantOrder) : m.total = 45 := P.restaurant_solution m
theorem shells_mia (m : P.ShellCounts) : m.mia = 60 := P.shells_mia m
theorem shells_ava (m : P.ShellCounts) : m.ava = 80 := P.shells_ava m
theorem shells_alice (m : P.ShellCounts) : m.alice = 40 := P.shells_alice m
theorem shells_solution (m : P.ShellCounts) : m.total = 195 := P.shells_solution m
theorem chips_given (m : P.TortillaChips) : m.given = 12 := P.chips_given m
theorem chips_solution (m : P.TortillaChips) : m.kept = 10 := P.chips_solution m
theorem candies_lollipops (m : P.CandySharing) : m.lollipops = 30 := P.candies_lollipops m
theorem candies_canes (m : P.CandySharing) : m.canes = 60 := P.candies_canes m
theorem candies_boys (m : P.CandySharing) : m.boys = 10 := P.candies_boys m
theorem candies_girls (m : P.CandySharing) : m.girls = 30 := P.candies_girls m
theorem candies_solution (m : P.CandySharing) : m.totalChildren = 40 := P.candies_solution m
theorem eggs_blue (m : P.EasterEggChance) : m.blue = 80 := P.eggs_blue m
theorem eggs_purple (m : P.EasterEggChance) : m.purple = 20 := P.eggs_purple m
theorem eggs_partition (m : P.EasterEggChance) : m.blue + m.purple = 100 := P.eggs_partition m
theorem eggs_blue_five (m : P.EasterEggChance) : m.blueFive = 20 := P.eggs_blue_five m
theorem eggs_purple_five (m : P.EasterEggChance) : m.purpleFive = 10 := P.eggs_purple_five m
theorem eggs_solution (m : P.EasterEggChance) : m.favorable = 30 := P.eggs_solution m
theorem breakfast_sausages (m : P.BreakfastTime) : m.sausageTime = 15 := P.breakfast_sausages m
theorem breakfast_eggs (m : P.BreakfastTime) : m.eggTime = 24 := P.breakfast_eggs m
theorem breakfast_solution (m : P.BreakfastTime) : m.totalTime = 39 := P.breakfast_solution m
theorem lychees_sold (m : P.LycheeRemainder) : m.sold = 250 := P.lychees_sold m
theorem lychees_brought_home (m : P.LycheeRemainder) : m.broughtHome = 250 := P.lychees_brought_home m
theorem lychees_eaten (m : P.LycheeRemainder) : m.eaten = 150 := P.lychees_eaten m
theorem lychees_solution (m : P.LycheeRemainder) : m.remaining = 100 := P.lychees_solution m
theorem cards_padma_out (m : P.CardTrades) : m.padmaOut = 17 := P.cards_padma_out m
theorem cards_robert_out (m : P.CardTrades) : m.robertOut = 18 := P.cards_robert_out m
theorem cards_feasible (m : P.CardTrades) : m.padmaOut ≤ 75 ∧ m.robertOut ≤ 88 := P.cards_feasible m
theorem cards_solution (m : P.CardTrades) : m.totalTraded = 35 := P.cards_solution m
theorem wave_additive_extra (m : P.WaveAdditive) : m.extra = 1200 := P.wave_additive_extra m
theorem wave_additive_per_day (m : P.WaveAdditive) : m.perDay = 1500 := P.wave_additive_per_day m
theorem wave_additive_solution (m : P.WaveAdditive) : m.total = 21000 := P.wave_additive_solution m
theorem wave_fourfold_per_day (m : P.WaveFourfold) : m.perDay = 1200 := P.wave_fourfold_per_day m
theorem wave_fourfold_solution (m : P.WaveFourfold) : m.total = 16800 := P.wave_fourfold_solution m
theorem wave_two_readings_differ : (21000 : ℕ) ≠ 16800 := P.wave_two_readings_differ
theorem badges_no_preprinted (m : P.NameBadges) : m.noPreprinted = 20 := P.badges_no_preprinted m
theorem badges_handwritten (m : P.NameBadges) : m.handwritten = 10 := P.badges_handwritten m
theorem badges_solution (m : P.NameBadges) : m.noBadge = 10 := P.badges_solution m
theorem flowers_lilies (m : P.FloralOrder) : m.lilies = 6 := P.flowers_lilies m
theorem flowers_per_arrangement (m : P.FloralOrder) : m.perArrangement = 29 := P.flowers_per_arrangement m
theorem flowers_solution (m : P.FloralOrder) : m.total = 290 := P.flowers_solution m
theorem commission_hours (m : P.PaintingCommission) : m.hours = 24 := P.commission_hours m
theorem commission_solution (m : P.PaintingCommission) : m.hourlyPay = 150 := P.commission_solution m

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

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.dreams_365_solution to "work/gsm8k-sprint100-dreams-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.faith_same_rate_solution to "work/gsm8k-sprint100-faith-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.backpacks_solution to "work/gsm8k-sprint100-backpacks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.restaurant_solution to "work/gsm8k-sprint100-restaurant-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.shells_solution to "work/gsm8k-sprint100-shells-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.chips_solution to "work/gsm8k-sprint100-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.candies_solution to "work/gsm8k-sprint100-candies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.eggs_solution to "work/gsm8k-sprint100-easter-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.breakfast_solution to "work/gsm8k-sprint100-breakfast-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.lychees_solution to "work/gsm8k-sprint100-lychees-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.cards_solution to "work/gsm8k-sprint100-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.wave_additive_solution to "work/gsm8k-sprint100-coronavirus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.badges_solution to "work/gsm8k-sprint100-badges-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.flowers_solution to "work/gsm8k-sprint100-flowers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.commission_solution to "work/gsm8k-sprint100-commission-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.wave_two_readings_differ to "work/gsm8k-sprint100-coronavirus-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.dreams_two_calendar_readings_differ to "work/gsm8k-sprint100-dreams-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A08.faith_two_pay_readings_differ to "work/gsm8k-sprint100-faith-graph.json"
