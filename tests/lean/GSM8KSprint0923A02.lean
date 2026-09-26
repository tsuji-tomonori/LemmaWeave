import LemmaWeave.Problems.GSM8K.Sprint0923A02Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A02
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A02

theorem silver_gold_silver (m : P.SilverGoldFiftyFold) : m.silverCost = 30 := P.silver_gold_silver m
theorem silver_gold_amount (m : P.SilverGoldFiftyFold) : m.goldHalfOunces = 6 := P.silver_gold_amount m
theorem silver_gold_price_fifty (m : P.SilverGoldFiftyFold) : m.goldPrice = 1000 := P.silver_gold_price_fifty m
theorem silver_gold_cost_fifty (m : P.SilverGoldFiftyFold) : m.goldCost = 3000 := P.silver_gold_cost_fifty m
theorem silver_gold_solution_fifty (m : P.SilverGoldFiftyFold) : m.total = 3030 := P.silver_gold_solution_fifty m
theorem silver_gold_price_more (m : P.SilverGoldFiftyMore) : m.goldPrice = 1020 := P.silver_gold_price_more m
theorem silver_gold_solution_more (m : P.SilverGoldFiftyMore) : m.total = 3090 := P.silver_gold_solution_more m
theorem lorry_load (m : P.Lorry) : m.load = 1200 := P.lorry_load m
theorem lorry_solution (m : P.Lorry) : m.total = 1700 := P.lorry_solution m
theorem paint_per_wall (m : P.Paint) : m.perWall = 4 := P.paint_per_wall m
theorem paint_used (m : P.Paint) : m.used = 13 := P.paint_used m
theorem paint_solution (m : P.Paint) : m.left = 3 := P.paint_solution m
theorem delivery_burgers (m : P.Delivery) : m.burgers = 640 := P.delivery_burgers m
theorem delivery_fries (m : P.Delivery) : m.fries = 380 := P.delivery_fries m
theorem delivery_shakes (m : P.Delivery) : m.shakes = 480 := P.delivery_shakes m
theorem delivery_current (m : P.Delivery) : m.current = 1500 := P.delivery_current m
theorem delivery_solution (m : P.Delivery) : m.needed = 300 := P.delivery_solution m
theorem shipping_bottles (m : P.Shipping) : m.bottles = 2000 := P.shipping_bottles m
theorem shipping_lotion (m : P.Shipping) : m.lotion = 1800 := P.shipping_lotion m
theorem shipping_current (m : P.Shipping) : m.current = 3800 := P.shipping_current m
theorem shipping_solution (m : P.Shipping) : m.needed = 1200 := P.shipping_solution m
theorem park_area (m : P.Park) : m.area = 2000000 := P.park_area m
theorem park_solution (m : P.Park) : m.trees = 100000 := P.park_solution m
theorem candy_after_talitha (m : P.Candy) : m.afterTalitha = 241 := P.candy_after_talitha m
theorem candy_solution (m : P.Candy) : m.left = 88 := P.candy_solution m
theorem car_soap_bottles (m : P.CarSoap) : m.bottles = 5 := P.car_soap_bottles m
theorem car_soap_solution (m : P.CarSoap) : m.cost = 20 := P.car_soap_solution m
theorem author_yearly (m : P.Author) : m.yearly = 6 := P.author_yearly m
theorem author_books (m : P.Author) : m.books = 120 := P.author_books m
theorem author_solution (m : P.Author) : m.earnings = 3600000 := P.author_solution m
theorem highlighters_pink (m : P.Highlighters) : m.pink = 14 := P.highlighters_pink m
theorem highlighters_blue (m : P.Highlighters) : m.blue = 19 := P.highlighters_blue m
theorem highlighters_solution (m : P.Highlighters) : m.total = 40 := P.highlighters_solution m
theorem weekly_chips_second (m : P.WeeklyChips) : m.second = 45 := P.weekly_chips_second m
theorem weekly_chips_pair (m : P.WeeklyChips) : m.laterPair = 40 := P.weekly_chips_pair m
theorem weekly_chips_solution (m : P.WeeklyChips) : m.eachLater = 20 := P.weekly_chips_solution m
theorem clinton_daily (m : P.Clinton) : m.dailyCents = 700 := P.clinton_daily m
theorem clinton_solution (m : P.Clinton) : m.totalCents = 3500 := P.clinton_solution m
theorem bob_weekly_hours : (10 : ℕ) * 5 = 50 := P.bob_weekly_hours
theorem bob_four_week_solution : (10 : ℕ) * 5 * 4 = 200 := P.bob_four_week_solution
theorem bob_five_week_example : (10 : ℕ) * 5 * 5 = 250 := P.bob_five_week_example
theorem lemons_load (m : P.Lemons) : m.load = 800 := P.lemons_load m
theorem lemons_solution (m : P.Lemons) : m.remaining = 100 := P.lemons_solution m
theorem liquids_half_pints (m : P.Liquids) : m.halfPints = 36 := P.liquids_half_pints m
theorem liquids_pints (m : P.Liquids) : m.pints = 18 := P.liquids_pints m
theorem liquids_solution (m : P.Liquids) : m.cups = 36 := P.liquids_solution m

end LemmaWeave.Tests.GSM8KSprint0923A02

#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.silver_gold_solution_fifty
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.silver_gold_solution_more
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.lorry_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.paint_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.delivery_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.shipping_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.park_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.candy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.car_soap_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.author_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.highlighters_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.weekly_chips_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.clinton_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.bob_four_week_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.bob_five_week_example
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.lemons_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A02.liquids_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.silver_gold_solution_fifty to "work/gsm8k-sprint93-silver-gold-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.lorry_solution to "work/gsm8k-sprint93-lorry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.paint_solution to "work/gsm8k-sprint93-paint-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.delivery_solution to "work/gsm8k-sprint93-delivery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.shipping_solution to "work/gsm8k-sprint93-shipping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.park_solution to "work/gsm8k-sprint93-park-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.candy_solution to "work/gsm8k-sprint93-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.car_soap_solution to "work/gsm8k-sprint93-car-soap-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.author_solution to "work/gsm8k-sprint93-author-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.highlighters_solution to "work/gsm8k-sprint93-highlighters-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.weekly_chips_solution to "work/gsm8k-sprint93-weekly-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.clinton_solution to "work/gsm8k-sprint93-clinton-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.bob_four_week_solution to "work/gsm8k-sprint93-bob-hours-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.lemons_solution to "work/gsm8k-sprint93-lemons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A02.liquids_solution to "work/gsm8k-sprint93-liquids-graph.json"
