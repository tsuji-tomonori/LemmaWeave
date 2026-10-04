import LemmaWeave.Problems.GSM8K.Sprint0924A03Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A03
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A03

theorem allowance_middle (m : P.Allowance) : m.middle = 10 := P.allowance_middle m
theorem allowance_senior (m : P.Allowance) : m.senior = 25 := P.allowance_senior m
theorem allowance_increase (m : P.Allowance) : m.increase = 15 := P.allowance_increase m
theorem allowance_solution (m : P.Allowance) : m.percent = 150 := P.allowance_solution m
theorem savings_interest1 (m : P.Savings) : m.interest1 = 200 := P.savings_interest1 m
theorem savings_after1 (m : P.Savings) : m.after1 = 1200 := P.savings_after1 m
theorem savings_remaining (m : P.Savings) : m.remaining = 600 := P.savings_remaining m
theorem savings_interest2 (m : P.Savings) : m.interest2 = 90 := P.savings_interest2 m
theorem savings_solution (m : P.Savings) : m.final = 690 := P.savings_solution m
theorem boats_eaten (m : P.Boats) : m.eaten = 6 := P.boats_eaten m
theorem boats_solution (m : P.Boats) : m.left = 22 := P.boats_solution m
theorem charles_housesit : 15 * 10 = 150 := P.charles_housesit
theorem charles_conditional_216 (m : P.Charles) (h : m.dogHours = 3) : m.earned = 216 := P.charles_conditional_216 m h
theorem charles_alternate_282 (m : P.Charles) (h : m.dogHours = 6) : m.earned = 282 := P.charles_alternate_282 m h
theorem charles_source_not_unique : ∃ m1 m2 : P.Charles, m1.dogCount = 3 ∧ m2.dogCount = 3 ∧ m1.earned = 216 ∧ m2.earned = 282 ∧ m1.earned ≠ m2.earned := P.charles_source_not_unique
theorem walking_daily (m : P.Walking) : m.daily = 22 := P.walking_daily m
theorem walking_solution (m : P.Walking) : m.weekly = 110 := P.walking_solution m
theorem seeds_black (m : P.Watermelon) : m.black = 800 := P.seeds_black m
theorem seeds_white (m : P.Watermelon) : m.white = 800 := P.seeds_white m
theorem seeds_solution (m : P.Watermelon) : m.total = 1600 := P.seeds_solution m
theorem balloons_round (m : P.Balloons) : m.round = 100 := P.balloons_round m
theorem balloons_long (m : P.Balloons) : m.long = 120 := P.balloons_long m
theorem balloons_total (m : P.Balloons) : m.total = 220 := P.balloons_total m
theorem balloons_solution (m : P.Balloons) : m.left = 215 := P.balloons_solution m
theorem songs_total (m : P.Songs) : m.count = 28 := P.songs_total m
theorem songs_solution (m : P.Songs) : m.megabytes = 140 := P.songs_solution m
theorem tape_four_meter (m : P.Tape) : m.fourMeter = 8 := P.tape_four_meter m
theorem tape_six_meter (m : P.Tape) : m.sixMeter = 12 := P.tape_six_meter m
theorem tape_solution (m : P.Tape) : m.total = 20 := P.tape_solution m
theorem grocery_vegetables (m : P.Groceries) : m.vegetables = 1800 := P.grocery_vegetables m
theorem grocery_meat (m : P.Groceries) : m.meat = 900 := P.grocery_meat m
theorem grocery_total (m : P.Groceries) : m.total = 2700 := P.grocery_total m
theorem grocery_fraction (m : P.Groceries) : 100 * m.meat = 33 * m.total + 900 := P.grocery_fraction m
theorem grocery_solution (m : P.Groceries) : m.percent = 33 := P.grocery_solution m
theorem calories_total (m : P.Calories) : m.total = 2400 := P.calories_total m
theorem calories_solution (m : P.Calories) : m.excess = 600 := P.calories_solution m
theorem basin_net_rate (m : P.Basin) : m.netRate = 20 := P.basin_net_rate m
theorem basin_solution (m : P.Basin) : m.seconds = 13 := P.basin_solution m
theorem samuel_share (m : P.Samuel) : m.share = 180 := P.samuel_share m
theorem samuel_spent (m : P.Samuel) : m.spent = 48 := P.samuel_spent m
theorem samuel_solution (m : P.Samuel) : m.left = 132 := P.samuel_solution m
theorem cards_red (m : P.Cards) : m.red = 48 := P.cards_red m
theorem cards_remainder (m : P.Cards) : m.remainder = 72 := P.cards_remainder m
theorem cards_black (m : P.Cards) : m.black = 40 := P.cards_black m
theorem cards_solution (m : P.Cards) : m.green = 32 := P.cards_solution m
theorem investment_jackson (m : P.Investments) : m.jackson = 2000 := P.investment_jackson m
theorem investment_brandon (m : P.Investments) : m.brandon = 100 := P.investment_brandon m
theorem investment_solution (m : P.Investments) : m.difference = 1900 := P.investment_solution m

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
