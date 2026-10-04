import LemmaWeave.Problems.GSM8K.Sprint0922A02Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A02
open LemmaWeave.Problems.GSM8K.Sprint0922A02

theorem typing_before (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Typing) : m.beforeFive = 50 := LemmaWeave.Problems.GSM8K.Sprint0922A02.typing_before m
theorem typing_after (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Typing) : m.afterFive = 40 := LemmaWeave.Problems.GSM8K.Sprint0922A02.typing_after m
theorem typing_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Typing) : m.difference = 10 := LemmaWeave.Problems.GSM8K.Sprint0922A02.typing_solution m
theorem coffee_daily (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Coffee) : m.dailyCents = 550 := LemmaWeave.Problems.GSM8K.Sprint0922A02.coffee_daily m
theorem coffee_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Coffee) : m.totalCents = 11000 := LemmaWeave.Problems.GSM8K.Sprint0922A02.coffee_solution m
theorem siblings_arthur (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.SiblingAges) : m.arthur = 17 := LemmaWeave.Problems.GSM8K.Sprint0922A02.siblings_arthur m
theorem siblings_tom (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.SiblingAges) : m.tom = 8 := LemmaWeave.Problems.GSM8K.Sprint0922A02.siblings_tom m
theorem siblings_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.SiblingAges) : m.total = 51 := LemmaWeave.Problems.GSM8K.Sprint0922A02.siblings_solution m
theorem series_remaining (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.BookSeries) : m.remaining = 45 := LemmaWeave.Problems.GSM8K.Sprint0922A02.series_remaining m
theorem series_additional (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.BookSeries) : m.additionalWeeks = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A02.series_additional m
theorem series_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.BookSeries) : m.totalWeeks = 7 := LemmaWeave.Problems.GSM8K.Sprint0922A02.series_solution m
theorem jam_first (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.JamJars) : m.firstPacked = 120 := LemmaWeave.Problems.GSM8K.Sprint0922A02.jam_first m
theorem jam_second (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.JamJars) : m.secondPacked = 300 := LemmaWeave.Problems.GSM8K.Sprint0922A02.jam_second m
theorem jam_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.JamJars) : m.totalPacked = 420 := LemmaWeave.Problems.GSM8K.Sprint0922A02.jam_total m
theorem jam_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.JamJars) : m.left = 80 := LemmaWeave.Problems.GSM8K.Sprint0922A02.jam_solution m
theorem birds_chickens (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Birds) : m.chickens = 35 := LemmaWeave.Problems.GSM8K.Sprint0922A02.birds_chickens m
theorem birds_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Birds) : m.totalBirds = 185 := LemmaWeave.Problems.GSM8K.Sprint0922A02.birds_solution m
theorem dvd_online (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.DVD) : m.onlineCents = 1000 := LemmaWeave.Problems.GSM8K.Sprint0922A02.dvd_online m
theorem dvd_shipping (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.DVD) : m.shippingCents = 800 := LemmaWeave.Problems.GSM8K.Sprint0922A02.dvd_shipping m
theorem dvd_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.DVD) : m.totalCents = 1800 := LemmaWeave.Problems.GSM8K.Sprint0922A02.dvd_solution m
theorem milk_morning (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.MilkRevenue) : m.todayMorning = 50 := LemmaWeave.Problems.GSM8K.Sprint0922A02.milk_morning m
theorem milk_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.MilkRevenue) : m.totalMilk = 200 := LemmaWeave.Problems.GSM8K.Sprint0922A02.milk_total m
theorem milk_sold (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.MilkRevenue) : m.sold = 176 := LemmaWeave.Problems.GSM8K.Sprint0922A02.milk_sold m
theorem milk_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.MilkRevenue) : m.revenueCents = 61600 := LemmaWeave.Problems.GSM8K.Sprint0922A02.milk_solution m
theorem soup_stock (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Soup) : m.stock = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A02.soup_stock m
theorem soup_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Soup) : m.total = 9 := LemmaWeave.Problems.GSM8K.Sprint0922A02.soup_total m
theorem soup_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Soup) : m.bags = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A02.soup_solution m
theorem boots_discount (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Boots) : m.discountCents = 1800 := LemmaWeave.Problems.GSM8K.Sprint0922A02.boots_discount m
theorem boots_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Boots) : m.payCents = 7200 := LemmaWeave.Problems.GSM8K.Sprint0922A02.boots_solution m
theorem waves_shortest (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Waves) : m.shortest = 10 := LemmaWeave.Problems.GSM8K.Sprint0922A02.waves_shortest m
theorem waves_height (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Waves) : m.austinHeight = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A02.waves_height m
theorem waves_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Waves) : m.highest = 26 := LemmaWeave.Problems.GSM8K.Sprint0922A02.waves_solution m
theorem noah_now (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.NoahAge) : m.now = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A02.noah_now m
theorem noah_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.NoahAge) : m.later = 22 := LemmaWeave.Problems.GSM8K.Sprint0922A02.noah_solution m
theorem towels_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Towels) : m.total = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A02.towels_total m
theorem towels_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Towels) : m.loads = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A02.towels_solution m
theorem graves_adult (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Graves) : m.adultHours = 15 := LemmaWeave.Problems.GSM8K.Sprint0922A02.graves_adult m
theorem graves_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.Graves) : m.totalHours = 17 := LemmaWeave.Problems.GSM8K.Sprint0922A02.graves_solution m
theorem zip_first (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.ZipCode) : m.d1 = 1 := LemmaWeave.Problems.GSM8K.Sprint0922A02.zip_first m
theorem zip_second (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.ZipCode) : m.d2 = 1 := LemmaWeave.Problems.GSM8K.Sprint0922A02.zip_second m
theorem zip_fourth (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.ZipCode) : m.d4 = 2 := LemmaWeave.Problems.GSM8K.Sprint0922A02.zip_fourth m
theorem zip_fifth (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.ZipCode) : m.d5 = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A02.zip_fifth m
theorem zip_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A02.ZipCode) : m.code = 11026 := LemmaWeave.Problems.GSM8K.Sprint0922A02.zip_solution m

end LemmaWeave.Tests.GSM8KSprint0922A02

#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.birds_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.boots_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.coffee_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.dvd_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.graves_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.jam_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.milk_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.noah_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.series_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.siblings_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.soup_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.towels_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.typing_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.waves_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A02.zip_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.birds_solution to "work/gsm8k-sprint74-birds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.boots_solution to "work/gsm8k-sprint74-boots-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.coffee_solution to "work/gsm8k-sprint74-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.dvd_solution to "work/gsm8k-sprint74-dvd-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.graves_solution to "work/gsm8k-sprint74-graves-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.jam_solution to "work/gsm8k-sprint74-jam-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.milk_solution to "work/gsm8k-sprint74-milk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.noah_solution to "work/gsm8k-sprint74-noah-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.series_solution to "work/gsm8k-sprint74-series-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.siblings_solution to "work/gsm8k-sprint74-siblings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.soup_solution to "work/gsm8k-sprint74-soup-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.towels_solution to "work/gsm8k-sprint74-towels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.typing_solution to "work/gsm8k-sprint74-typing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.waves_solution to "work/gsm8k-sprint74-waves-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A02.zip_solution to "work/gsm8k-sprint74-zip_code-graph.json"
