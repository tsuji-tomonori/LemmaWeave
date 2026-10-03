import LemmaWeave.Problems.GSM8K.Sprint0924A13Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A13
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A13

theorem grocery_snickers (m : P.Grocery) : m.snickers = 300 := P.grocery_snickers m
theorem grocery_mms (m : P.Grocery) : m.mms = 900 := P.grocery_mms m
theorem grocery_total (m : P.Grocery) : m.total = 1200 := P.grocery_total m
theorem grocery_cash (m : P.Grocery) : m.cash = 2000 := P.grocery_cash m
theorem grocery_solution (m : P.Grocery) : m.change = 800 := P.grocery_solution m
theorem download_install (m : P.Download) : m.install = 5 := P.download_install m
theorem download_combined (m : P.Download) : m.combined = 15 := P.download_combined m
theorem download_tutorial (m : P.Download) : m.tutorial = 45 := P.download_tutorial m
theorem download_solution (m : P.Download) : m.total = 60 := P.download_solution m
theorem kona_with_stop (m : P.Kona) : m.withStop = 60 := P.kona_with_stop m
theorem kona_direct (m : P.Kona) : m.directRound = 54 := P.kona_direct m
theorem kona_solution (m : P.Kona) : m.extra = 6 := P.kona_solution m
theorem coins_before (m : P.Coins) : m.before = 120 := P.coins_before m
theorem coins_solution (m : P.Coins) : m.after = 100 := P.coins_solution m
theorem pages_miles (m : P.Pages) : m.miles = 1200 := P.pages_miles m
theorem pages_daphne (m : P.Pages) : m.daphne = 1250 := P.pages_daphne m
theorem pages_compare (m : P.Pages) : m.daphne = m.miles + 50 := P.pages_compare m
theorem pages_solution (m : P.Pages) : m.longest = 1250 := P.pages_solution m
theorem cookies_total (m : P.Cookies) : m.total = 75 := P.cookies_total m
theorem cookies_children (m : P.Cookies) : m.children = 5 := P.cookies_children m
theorem cookies_solution (m : P.Cookies) : m.each = 15 := P.cookies_solution m
theorem sales_total (m : P.Sales) : m.total = 7 := P.sales_total m
theorem sales_relation (m : P.Sales) : m.second = 2 * m.first := P.sales_relation m
theorem sales_first (m : P.Sales) : m.first = 2 := P.sales_first m
theorem sales_solution (m : P.Sales) : m.second = 4 := P.sales_solution m
theorem race_first_pace (m : P.Race) : m.firstPace = 7 := P.race_first_pace m
theorem race_second_pace (m : P.Race) : m.secondPace = 8 := P.race_second_pace m
theorem race_first_five (m : P.Race) : m.firstFive = 35 := P.race_first_five m
theorem race_second_five (m : P.Race) : m.secondFive = 40 := P.race_second_five m
theorem race_solution (m : P.Race) : m.total = 75 := P.race_solution m
theorem businesses_fired (m : P.Businesses) : m.fired = 36 := P.businesses_fired m
theorem businesses_quit (m : P.Businesses) : m.quit = 24 := P.businesses_quit m
theorem businesses_formula (m : P.Businesses) : m.remaining = 12 + m.overlap := P.businesses_formula m
theorem businesses_solution (m : P.Businesses) : 12 ≤ m.remaining ∧ m.remaining ≤ 36 := P.businesses_solution m
theorem businesses_disjoint_solution (m : P.Businesses) : m.overlap = 0 → m.remaining = 12 := P.businesses_disjoint_solution m
theorem businesses_overlap_counterexample (m : P.Businesses) : m.overlap = 24 → m.remaining = 36 := P.businesses_overlap_counterexample m
theorem oranges_original (m : P.Oranges) : m.original = 9 := P.oranges_original m
theorem oranges_left (m : P.Oranges) : m.left = 72 := P.oranges_left m
theorem oranges_now (m : P.Oranges) : m.now = 6 := P.oranges_now m
theorem oranges_solution (m : P.Oranges) : m.fewer = 3 := P.oranges_solution m
theorem bowling_richard_first (m : P.Bowling) : m.richardFirst = 85 := P.bowling_richard_first m
theorem bowling_patrick_second (m : P.Bowling) : m.patrickSecond = 170 := P.bowling_patrick_second m
theorem bowling_richard_second (m : P.Bowling) : m.richardSecond = 167 := P.bowling_richard_second m
theorem bowling_patrick_total (m : P.Bowling) : m.patrickTotal = 240 := P.bowling_patrick_total m
theorem bowling_richard_total (m : P.Bowling) : m.richardTotal = 252 := P.bowling_richard_total m
theorem bowling_solution (m : P.Bowling) : m.difference = 12 := P.bowling_solution m
theorem almond_jar (m : P.Almond) : m.almondJar = 900 := P.almond_jar m
theorem almond_half (m : P.Almond) : m.almondHalf = 450 := P.almond_half m
theorem almond_peanut_half (m : P.Almond) : m.peanutHalf = 150 := P.almond_peanut_half m
theorem almond_solution (m : P.Almond) : m.difference = 300 := P.almond_solution m
theorem salon_customer_cans (m : P.Salon) : m.customerCans = 28 := P.salon_customer_cans m
theorem salon_per_customer (m : P.Salon) : m.perCustomer = 2 := P.salon_per_customer m
theorem salon_solution (m : P.Salon) : m.customers = 14 := P.salon_solution m
theorem bags_crayons (m : P.Bags) : m.crayons = 25 := P.bags_crayons m
theorem bags_books (m : P.Bags) : m.books = 50 := P.bags_books m
theorem bags_calculators (m : P.Bags) : m.calculators = 15 := P.bags_calculators m
theorem bags_change (m : P.Bags) : m.change = 110 := P.bags_change m
theorem bags_solution (m : P.Bags) : m.bags = 11 := P.bags_solution m
theorem allowance_saved (m : P.Allowance) : m.saved = 40 := P.allowance_saved m
theorem allowance_after_game (m : P.Allowance) : m.afterGame = 20 := P.allowance_after_game m
theorem allowance_book (m : P.Allowance) : m.book = 5 := P.allowance_book m
theorem allowance_solution (m : P.Allowance) : m.left = 15 := P.allowance_solution m

end LemmaWeave.Tests.GSM8KSprint0924A13

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.grocery_solution to "work/gsm8k-sprint122-grocery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.download_solution to "work/gsm8k-sprint122-download-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.kona_solution to "work/gsm8k-sprint122-kona-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.coins_solution to "work/gsm8k-sprint122-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.pages_solution to "work/gsm8k-sprint122-pages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.cookies_solution to "work/gsm8k-sprint122-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.sales_solution to "work/gsm8k-sprint122-sales-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.race_solution to "work/gsm8k-sprint122-race-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.businesses_solution to "work/gsm8k-sprint122-businesses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.oranges_solution to "work/gsm8k-sprint122-oranges-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.bowling_solution to "work/gsm8k-sprint122-bowling-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.almond_solution to "work/gsm8k-sprint122-almond-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.salon_solution to "work/gsm8k-sprint122-salon-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.bags_solution to "work/gsm8k-sprint122-bags-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A13.allowance_solution to "work/gsm8k-sprint122-allowance-graph.json"
