import LemmaWeave.Problems.GSM8K.Sprint0924A01Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A01
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A01

theorem cans_prikya (m : P.Cans) : m.prikya = 50 := P.cans_prikya m
theorem cans_solution (m : P.Cans) : m.yoki = 10 := P.cans_solution m
theorem apples_other (m : P.Apples) : m.other = 3 := P.apples_other m
theorem apples_solution (m : P.Apples) : m.apples = 17 := P.apples_solution m
theorem piggy_monthly (m : P.PiggyBank) : m.monthly = 8 := P.piggy_monthly m
theorem piggy_yearly (m : P.PiggyBank) : m.yearly = 96 := P.piggy_yearly m
theorem piggy_solution (m : P.PiggyBank) : m.left = 104 := P.piggy_solution m
theorem jelly_caleb (m : P.Jellybeans) : m.caleb = 36 := P.jelly_caleb m
theorem jelly_sophie (m : P.Jellybeans) : m.sophie = 18 := P.jelly_sophie m
theorem jelly_solution (m : P.Jellybeans) : m.total = 54 := P.jelly_solution m
theorem lemonade_small_medium (m : P.Lemonade) : m.smallMedium = 35 := P.lemonade_small_medium m
theorem lemonade_large_revenue (m : P.Lemonade) : m.largeRevenue = 15 := P.lemonade_large_revenue m
theorem lemonade_solution (m : P.Lemonade) : m.largeCups = 5 := P.lemonade_solution m
theorem art_total (m : P.ArtSupplies) : m.total = 1850 := P.art_total m
theorem art_needed_cents (m : P.ArtSupplies) : m.neededCents = 1200 := P.art_needed_cents m
theorem art_solution (m : P.ArtSupplies) : m.neededDollars = 12 := P.art_solution m
theorem chips_purchase (m : P.ChipsPurchase) : m.purchase = 16 := P.chips_purchase m
theorem chips_bars (m : P.ChipsPurchase) : m.bars = 10 := P.chips_bars m
theorem chips_bags_total (m : P.ChipsPurchase) : m.bagsTotal = 6 := P.chips_bags_total m
theorem chips_solution (m : P.ChipsPurchase) : m.bagEach = 3 := P.chips_solution m
theorem bag_first_day (m : P.BagChips) : m.firstDay = 10 := P.bag_first_day m
theorem bag_remaining (m : P.BagChips) : m.remaining = 90 := P.bag_remaining m
theorem bag_later_days (m : P.BagChips) : m.laterDays = 9 := P.bag_later_days m
theorem bag_solution (m : P.BagChips) : m.totalDays = 10 := P.bag_solution m
theorem candy_day2 (m : P.CandyBars) : m.d2 = 14 := P.candy_day2 m
theorem candy_day3 (m : P.CandyBars) : m.d3 = 18 := P.candy_day3 m
theorem candy_day4 (m : P.CandyBars) : m.d4 = 22 := P.candy_day4 m
theorem candy_day5 (m : P.CandyBars) : m.d5 = 26 := P.candy_day5 m
theorem candy_day6 (m : P.CandyBars) : m.d6 = 30 := P.candy_day6 m
theorem candy_total (m : P.CandyBars) : m.total = 120 := P.candy_total m
theorem candy_cents (m : P.CandyBars) : m.cents = 1200 := P.candy_cents m
theorem candy_solution (m : P.CandyBars) : m.dollars = 12 := P.candy_solution m
theorem dino_elementary (m : P.DinosaurModels) : m.elementary = 4 := P.dino_elementary m
theorem dino_total (m : P.DinosaurModels) : m.total = 6 ∧ 5 < m.total := P.dino_total m
theorem dino_discount (m : P.DinosaurModels) : m.discount = 5 := P.dino_discount m
theorem dino_price (m : P.DinosaurModels) : m.price = 95 := P.dino_price m
theorem dino_solution (m : P.DinosaurModels) : m.paid = 570 := P.dino_solution m
theorem fur_ticks (m : P.DogFur) : m.ticks = 72 := P.fur_ticks m
theorem fur_solution (m : P.DogFur) : m.total = 84 := P.fur_solution m
theorem mice_markup (m : P.MiceSales) : m.markup = 36 := P.mice_markup m
theorem mice_price (m : P.MiceSales) : m.price = 156 := P.mice_price m
theorem mice_daily (m : P.MiceSales) : m.daily = 3900 := P.mice_daily m
theorem mice_days (m : P.MiceSales) : m.days = 4 := P.mice_days m
theorem mice_solution (m : P.MiceSales) : m.weekly = 15600 := P.mice_solution m
theorem calc_per_problem (m : P.Calculator) : m.perProblem = 3 := P.calc_per_problem m
theorem calc_solution (m : P.Calculator) : m.total = 60 := P.calc_solution m
theorem news_sold (m : P.Newspapers) : m.sold = 400 := P.news_sold m
theorem news_revenue (m : P.Newspapers) : m.revenue = 800 := P.news_revenue m
theorem news_discount (m : P.Newspapers) : m.discountCents = 150 := P.news_discount m
theorem news_cost_each (m : P.Newspapers) : m.costCents = 50 := P.news_cost_each m
theorem news_cost_total (m : P.Newspapers) : m.costTotal = 250 := P.news_cost_total m
theorem news_solution (m : P.Newspapers) : m.profit = 550 := P.news_solution m
theorem race_inverse_ratio (m : P.RaceTimes) : 3 * m.prejean = 4 * m.rickey := P.race_inverse_ratio m
theorem race_prejean (m : P.RaceTimes) : m.prejean = 40 := P.race_prejean m
theorem race_solution (m : P.RaceTimes) : m.rickey = 30 := P.race_solution m
theorem race_reference_forty_impossible : ¬ ∃ prejean : ℕ, prejean + 40 = 70 ∧ 3 * prejean = 4 * 40 := P.race_reference_forty_impossible

end LemmaWeave.Tests.GSM8KSprint0924A01

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.cans_solution to "work/gsm8k-sprint111-cans-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.apples_solution to "work/gsm8k-sprint111-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.piggy_solution to "work/gsm8k-sprint111-piggy-bank-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.jelly_solution to "work/gsm8k-sprint111-jellybeans-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.lemonade_solution to "work/gsm8k-sprint111-lemonade-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.art_solution to "work/gsm8k-sprint111-art-supplies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.chips_solution to "work/gsm8k-sprint111-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.bag_solution to "work/gsm8k-sprint111-bag-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.candy_solution to "work/gsm8k-sprint111-candy-bars-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.dino_solution to "work/gsm8k-sprint111-dinosaur-models-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.fur_solution to "work/gsm8k-sprint111-dog-fur-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.mice_solution to "work/gsm8k-sprint111-mice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.calc_solution to "work/gsm8k-sprint111-calculator-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.news_solution to "work/gsm8k-sprint111-newspapers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A01.race_solution to "work/gsm8k-sprint111-race-speed-graph.json"
