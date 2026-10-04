import LemmaWeave.Problems.GSM8K.Sprint0922A08Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A08
open LemmaWeave.Problems.GSM8K.Sprint0922A08

theorem jerky_needed (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Jerky) : m.needed=40 := LemmaWeave.Problems.GSM8K.Sprint0922A08.jerky_needed m
theorem jerky_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Jerky) : m.days=4 := LemmaWeave.Problems.GSM8K.Sprint0922A08.jerky_solution m
theorem banana_twice_as_many (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.BananaSplit) : m.twiceTotal=8 := LemmaWeave.Problems.GSM8K.Sprint0922A08.banana_twice_as_many m
theorem banana_difference_twice (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.BananaSplit) : m.twiceDifference=4 := LemmaWeave.Problems.GSM8K.Sprint0922A08.banana_difference_twice m
theorem banana_additive_total (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.BananaSplit) : m.additiveTotal=12 := LemmaWeave.Problems.GSM8K.Sprint0922A08.banana_additive_total m
theorem banana_difference_additive (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.BananaSplit) : m.additiveDifference=8 := LemmaWeave.Problems.GSM8K.Sprint0922A08.banana_difference_additive m
theorem banana_solution_both (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.BananaSplit) : m.twiceDifference=4 ∧ m.additiveDifference=8 := LemmaWeave.Problems.GSM8K.Sprint0922A08.banana_solution_both m
theorem activities_game_daily (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Activities) : m.gameDaily=2 := LemmaWeave.Problems.GSM8K.Sprint0922A08.activities_game_daily m
theorem activities_tv_week (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Activities) : m.tvWeek=28 := LemmaWeave.Problems.GSM8K.Sprint0922A08.activities_tv_week m
theorem activities_game_week (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Activities) : m.gameWeek=6 := LemmaWeave.Problems.GSM8K.Sprint0922A08.activities_game_week m
theorem activities_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Activities) : m.total=34 := LemmaWeave.Problems.GSM8K.Sprint0922A08.activities_solution m
theorem episodes_weekdays (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Episodes) : m.weekdays=40 := LemmaWeave.Problems.GSM8K.Sprint0922A08.episodes_weekdays m
theorem episodes_weekend_daily (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Episodes) : m.weekendDaily=24 := LemmaWeave.Problems.GSM8K.Sprint0922A08.episodes_weekend_daily m
theorem episodes_weekend (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Episodes) : m.weekend=48 := LemmaWeave.Problems.GSM8K.Sprint0922A08.episodes_weekend m
theorem episodes_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Episodes) : m.total=88 := LemmaWeave.Problems.GSM8K.Sprint0922A08.episodes_solution m
theorem gifts_siblings (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Gifts) : m.siblings=90 := LemmaWeave.Problems.GSM8K.Sprint0922A08.gifts_siblings m
theorem gifts_parents_total (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Gifts) : m.parentsTotal=60 := LemmaWeave.Problems.GSM8K.Sprint0922A08.gifts_parents_total m
theorem gifts_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Gifts) : m.eachParent=30 := LemmaWeave.Problems.GSM8K.Sprint0922A08.gifts_solution m
theorem lucy_after_spending (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.LucyMoney) : m.afterSpending=20 := LemmaWeave.Problems.GSM8K.Sprint0922A08.lucy_after_spending m
theorem lucy_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.LucyMoney) : m.initial=30 := LemmaWeave.Problems.GSM8K.Sprint0922A08.lucy_solution m
theorem balls_remaining (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Balls) : m.remaining=20 := LemmaWeave.Problems.GSM8K.Sprint0922A08.balls_remaining m
theorem balls_relation (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Balls) : m.pink=3*m.orange := LemmaWeave.Problems.GSM8K.Sprint0922A08.balls_relation m
theorem balls_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Balls) : m.orange=5 := LemmaWeave.Problems.GSM8K.Sprint0922A08.balls_solution m
theorem haircuts_earned_cycles (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Haircuts) : m.earnedCycles=70 := LemmaWeave.Problems.GSM8K.Sprint0922A08.haircuts_earned_cycles m
theorem haircuts_current_cycle (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Haircuts) : m.currentCycle=9 := LemmaWeave.Problems.GSM8K.Sprint0922A08.haircuts_current_cycle m
theorem haircuts_paid_total (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Haircuts) : m.paidTotal=79 := LemmaWeave.Problems.GSM8K.Sprint0922A08.haircuts_paid_total m
theorem haircuts_all_services (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Haircuts) : m.allServices=84 := LemmaWeave.Problems.GSM8K.Sprint0922A08.haircuts_all_services m
theorem haircuts_solution_both (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Haircuts) : m.paidTotal=79 ∧ m.allServices=84 := LemmaWeave.Problems.GSM8K.Sprint0922A08.haircuts_solution_both m
theorem hens_total (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Hens) : m.totalHens=25 := LemmaWeave.Problems.GSM8K.Sprint0922A08.hens_total m
theorem hens_rate_block (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Hens) : m.eggsPerHenFive=4 := LemmaWeave.Problems.GSM8K.Sprint0922A08.hens_rate_block m
theorem hens_each_fifteen (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Hens) : m.eggsPerHenFifteen=12 := LemmaWeave.Problems.GSM8K.Sprint0922A08.hens_each_fifteen m
theorem hens_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Hens) : m.totalEggs=300 := LemmaWeave.Problems.GSM8K.Sprint0922A08.hens_solution m
theorem earrings_monica (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Earrings) : m.monica=40 := LemmaWeave.Problems.GSM8K.Sprint0922A08.earrings_monica m
theorem earrings_rachel (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Earrings) : m.rachel=20 := LemmaWeave.Problems.GSM8K.Sprint0922A08.earrings_rachel m
theorem earrings_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Earrings) : m.total=70 := LemmaWeave.Problems.GSM8K.Sprint0922A08.earrings_solution m
theorem loss_seth_halves (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.WeightLoss) : m.sethHalves=35 := LemmaWeave.Problems.GSM8K.Sprint0922A08.loss_seth_halves m
theorem loss_jerome_halves (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.WeightLoss) : m.jeromeHalves=105 := LemmaWeave.Problems.GSM8K.Sprint0922A08.loss_jerome_halves m
theorem loss_veronica_halves (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.WeightLoss) : m.veronicaHalves=38 := LemmaWeave.Problems.GSM8K.Sprint0922A08.loss_veronica_halves m
theorem loss_total_halves (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.WeightLoss) : m.totalHalves=178 := LemmaWeave.Problems.GSM8K.Sprint0922A08.loss_total_halves m
theorem loss_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.WeightLoss) : m.totalPounds=89 := LemmaWeave.Problems.GSM8K.Sprint0922A08.loss_solution m
theorem strawberries_known (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Strawberries) : m.known=7 := LemmaWeave.Problems.GSM8K.Sprint0922A08.strawberries_known m
theorem strawberries_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Strawberries) : m.strawberry=3 := LemmaWeave.Problems.GSM8K.Sprint0922A08.strawberries_solution m
theorem store_sold (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.StoreMarbles) : m.sold=300 := LemmaWeave.Problems.GSM8K.Sprint0922A08.store_sold m
theorem store_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.StoreMarbles) : m.remaining=100 := LemmaWeave.Problems.GSM8K.Sprint0922A08.store_solution m
theorem shoes_riley (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Shoes) : m.riley=5 := LemmaWeave.Problems.GSM8K.Sprint0922A08.shoes_riley m
theorem shoes_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Shoes) : m.total=13 := LemmaWeave.Problems.GSM8K.Sprint0922A08.shoes_solution m
theorem travel_first (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Travel) : m.first=1 := LemmaWeave.Problems.GSM8K.Sprint0922A08.travel_first m
theorem travel_same_speed_rest (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Travel) : m.sameSpeedRest=3 := LemmaWeave.Problems.GSM8K.Sprint0922A08.travel_same_speed_rest m
theorem travel_solution_same_speed (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Travel) : m.sameSpeedTotal=4 := LemmaWeave.Problems.GSM8K.Sprint0922A08.travel_solution_same_speed m
theorem travel_slower_rest (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Travel) : m.slowerRest=6 := LemmaWeave.Problems.GSM8K.Sprint0922A08.travel_slower_rest m
theorem travel_solution_slower (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Travel) : m.slowerTotal=7 := LemmaWeave.Problems.GSM8K.Sprint0922A08.travel_solution_slower m
theorem travel_solution_nonunique (m:LemmaWeave.Problems.GSM8K.Sprint0922A08.Travel) : m.sameSpeedTotal=4 ∧ m.slowerTotal=7 := LemmaWeave.Problems.GSM8K.Sprint0922A08.travel_solution_nonunique m

end LemmaWeave.Tests.GSM8KSprint0922A08

#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.balls_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.banana_solution_both
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.earrings_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.episodes_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.gifts_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.haircuts_solution_both
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.hens_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.jerky_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.lucy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.shoes_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.store_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.strawberries_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.travel_solution_nonunique
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.activities_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A08.loss_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.balls_solution to "work/gsm8k-sprint80-balls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.banana_solution_both to "work/gsm8k-sprint80-banana_split-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.earrings_solution to "work/gsm8k-sprint80-earrings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.episodes_solution to "work/gsm8k-sprint80-episodes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.gifts_solution to "work/gsm8k-sprint80-gifts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.haircuts_solution_both to "work/gsm8k-sprint80-haircuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.hens_solution to "work/gsm8k-sprint80-hens-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.jerky_solution to "work/gsm8k-sprint80-jerky-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.lucy_solution to "work/gsm8k-sprint80-lucy_money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.shoes_solution to "work/gsm8k-sprint80-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.store_solution to "work/gsm8k-sprint80-store_marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.strawberries_solution to "work/gsm8k-sprint80-strawberries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.travel_solution_nonunique to "work/gsm8k-sprint80-travel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.activities_solution to "work/gsm8k-sprint80-tv_games-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A08.loss_solution to "work/gsm8k-sprint80-weight_loss-graph.json"
