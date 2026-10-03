import LemmaWeave.Problems.GSM8K.Sprint0924A03Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A03


theorem allowance_middle (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Allowance) : m.middle = 10 := LemmaWeave.Problems.GSM8K.Sprint0924A03.allowance_middle m
theorem allowance_senior (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Allowance) : m.senior = 25 := LemmaWeave.Problems.GSM8K.Sprint0924A03.allowance_senior m
theorem allowance_increase (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Allowance) : m.increase = 15 := LemmaWeave.Problems.GSM8K.Sprint0924A03.allowance_increase m
theorem allowance_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Allowance) : m.percent = 150 := LemmaWeave.Problems.GSM8K.Sprint0924A03.allowance_solution m
theorem savings_interest1 (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Savings) : m.interest1 = 200 := LemmaWeave.Problems.GSM8K.Sprint0924A03.savings_interest1 m
theorem savings_after1 (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Savings) : m.after1 = 1200 := LemmaWeave.Problems.GSM8K.Sprint0924A03.savings_after1 m
theorem savings_remaining (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Savings) : m.remaining = 600 := LemmaWeave.Problems.GSM8K.Sprint0924A03.savings_remaining m
theorem savings_interest2 (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Savings) : m.interest2 = 90 := LemmaWeave.Problems.GSM8K.Sprint0924A03.savings_interest2 m
theorem savings_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Savings) : m.final = 690 := LemmaWeave.Problems.GSM8K.Sprint0924A03.savings_solution m
theorem boats_eaten (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Boats) : m.eaten = 6 := LemmaWeave.Problems.GSM8K.Sprint0924A03.boats_eaten m
theorem boats_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Boats) : m.left = 22 := LemmaWeave.Problems.GSM8K.Sprint0924A03.boats_solution m
theorem charles_housesit : 15 * 10 = 150 := LemmaWeave.Problems.GSM8K.Sprint0924A03.charles_housesit
theorem charles_conditional_216 (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Charles) (h : m.dogHours = 3) : m.earned = 216 := LemmaWeave.Problems.GSM8K.Sprint0924A03.charles_conditional_216 m h
theorem charles_alternate_282 (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Charles) (h : m.dogHours = 6) : m.earned = 282 := LemmaWeave.Problems.GSM8K.Sprint0924A03.charles_alternate_282 m h
theorem charles_source_not_unique : ∃ m1 m2 : LemmaWeave.Problems.GSM8K.Sprint0924A03.Charles, m1.dogCount = 3 ∧ m2.dogCount = 3 ∧ m1.earned = 216 ∧ m2.earned = 282 ∧ m1.earned ≠ m2.earned := LemmaWeave.Problems.GSM8K.Sprint0924A03.charles_source_not_unique
theorem walking_daily (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Walking) : m.daily = 22 := LemmaWeave.Problems.GSM8K.Sprint0924A03.walking_daily m
theorem walking_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Walking) : m.weekly = 110 := LemmaWeave.Problems.GSM8K.Sprint0924A03.walking_solution m
theorem seeds_black (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Watermelon) : m.black = 800 := LemmaWeave.Problems.GSM8K.Sprint0924A03.seeds_black m
theorem seeds_white (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Watermelon) : m.white = 800 := LemmaWeave.Problems.GSM8K.Sprint0924A03.seeds_white m
theorem seeds_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Watermelon) : m.total = 1600 := LemmaWeave.Problems.GSM8K.Sprint0924A03.seeds_solution m
theorem balloons_round (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Balloons) : m.round = 100 := LemmaWeave.Problems.GSM8K.Sprint0924A03.balloons_round m
theorem balloons_long (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Balloons) : m.long = 120 := LemmaWeave.Problems.GSM8K.Sprint0924A03.balloons_long m
theorem balloons_total (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Balloons) : m.total = 220 := LemmaWeave.Problems.GSM8K.Sprint0924A03.balloons_total m
theorem balloons_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Balloons) : m.left = 215 := LemmaWeave.Problems.GSM8K.Sprint0924A03.balloons_solution m
theorem songs_total (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Songs) : m.count = 28 := LemmaWeave.Problems.GSM8K.Sprint0924A03.songs_total m
theorem songs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Songs) : m.megabytes = 140 := LemmaWeave.Problems.GSM8K.Sprint0924A03.songs_solution m
theorem tape_four_meter (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Tape) : m.fourMeter = 8 := LemmaWeave.Problems.GSM8K.Sprint0924A03.tape_four_meter m
theorem tape_six_meter (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Tape) : m.sixMeter = 12 := LemmaWeave.Problems.GSM8K.Sprint0924A03.tape_six_meter m
theorem tape_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Tape) : m.total = 20 := LemmaWeave.Problems.GSM8K.Sprint0924A03.tape_solution m
theorem grocery_vegetables (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Groceries) : m.vegetables = 1800 := LemmaWeave.Problems.GSM8K.Sprint0924A03.grocery_vegetables m
theorem grocery_meat (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Groceries) : m.meat = 900 := LemmaWeave.Problems.GSM8K.Sprint0924A03.grocery_meat m
theorem grocery_total (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Groceries) : m.total = 2700 := LemmaWeave.Problems.GSM8K.Sprint0924A03.grocery_total m
theorem grocery_fraction (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Groceries) : 100 * m.meat = 33 * m.total + 900 := LemmaWeave.Problems.GSM8K.Sprint0924A03.grocery_fraction m
theorem grocery_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Groceries) : m.percent = 33 := LemmaWeave.Problems.GSM8K.Sprint0924A03.grocery_solution m
theorem calories_total (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Calories) : m.total = 2400 := LemmaWeave.Problems.GSM8K.Sprint0924A03.calories_total m
theorem calories_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Calories) : m.excess = 600 := LemmaWeave.Problems.GSM8K.Sprint0924A03.calories_solution m
theorem basin_net_rate (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Basin) : m.netRate = 20 := LemmaWeave.Problems.GSM8K.Sprint0924A03.basin_net_rate m
theorem basin_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Basin) : m.seconds = 13 := LemmaWeave.Problems.GSM8K.Sprint0924A03.basin_solution m
theorem samuel_share (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Samuel) : m.share = 180 := LemmaWeave.Problems.GSM8K.Sprint0924A03.samuel_share m
theorem samuel_spent (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Samuel) : m.spent = 48 := LemmaWeave.Problems.GSM8K.Sprint0924A03.samuel_spent m
theorem samuel_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Samuel) : m.left = 132 := LemmaWeave.Problems.GSM8K.Sprint0924A03.samuel_solution m
theorem cards_red (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Cards) : m.red = 48 := LemmaWeave.Problems.GSM8K.Sprint0924A03.cards_red m
theorem cards_remainder (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Cards) : m.remainder = 72 := LemmaWeave.Problems.GSM8K.Sprint0924A03.cards_remainder m
theorem cards_black (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Cards) : m.black = 40 := LemmaWeave.Problems.GSM8K.Sprint0924A03.cards_black m
theorem cards_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Cards) : m.green = 32 := LemmaWeave.Problems.GSM8K.Sprint0924A03.cards_solution m
theorem investment_jackson (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Investments) : m.jackson = 2000 := LemmaWeave.Problems.GSM8K.Sprint0924A03.investment_jackson m
theorem investment_brandon (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Investments) : m.brandon = 100 := LemmaWeave.Problems.GSM8K.Sprint0924A03.investment_brandon m
theorem investment_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A03.Investments) : m.difference = 1900 := LemmaWeave.Problems.GSM8K.Sprint0924A03.investment_solution m

end LemmaWeave.Tests.GSM8KSprint0924A03

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.allowance_solution to "work/gsm8k-sprint113-allowance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.savings_solution to "work/gsm8k-sprint113-savings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.boats_solution to "work/gsm8k-sprint113-boats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.charles_source_not_unique to "work/gsm8k-sprint113-charles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.walking_solution to "work/gsm8k-sprint113-walking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.seeds_solution to "work/gsm8k-sprint113-watermelon-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.balloons_solution to "work/gsm8k-sprint113-balloons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.songs_solution to "work/gsm8k-sprint113-songs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.tape_solution to "work/gsm8k-sprint113-tape-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.grocery_solution to "work/gsm8k-sprint113-groceries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.calories_solution to "work/gsm8k-sprint113-calories-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.basin_solution to "work/gsm8k-sprint113-basin-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.samuel_solution to "work/gsm8k-sprint113-samuel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.cards_solution to "work/gsm8k-sprint113-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A03.investment_solution to "work/gsm8k-sprint113-investments-graph.json"
