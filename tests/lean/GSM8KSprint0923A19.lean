import LemmaWeave.Problems.GSM8K.Sprint0923A19Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A19
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A19

theorem electricity_usage (m : P.ElectricityBill) : m.usageCost = 1200 := P.electricity_usage m
theorem electricity_solution (m : P.ElectricityBill) : m.total = 1350 := P.electricity_solution m
theorem birdhouse_planks (m : P.Birdhouses) : m.plankCost = 2100 := P.birdhouse_planks m
theorem birdhouse_nails (m : P.Birdhouses) : m.nailCost = 100 := P.birdhouse_nails m
theorem birdhouse_one (m : P.Birdhouses) : m.oneHouse = 2200 := P.birdhouse_one m
theorem birdhouse_solution (m : P.Birdhouses) : m.fourHouses = 8800 := P.birdhouse_solution m
theorem babysitting_donaldsons (m : P.Babysitting) : m.donaldsons = 105 := P.babysitting_donaldsons m
theorem babysitting_merck (m : P.Babysitting) : m.merck = 108 := P.babysitting_merck m
theorem babysitting_hille (m : P.Babysitting) : m.hille = 60 := P.babysitting_hille m
theorem babysitting_solution (m : P.Babysitting) : m.total = 273 := P.babysitting_solution m
theorem salary_increase (m : P.SalaryIncrease) : m.increase = 200 := P.salary_increase m
theorem salary_solution (m : P.SalaryIncrease) : m.newSalary = 10200 := P.salary_solution m
theorem bounce_first (m : P.BallBounce) : m.first = 48 := P.bounce_first m
theorem bounce_second (m : P.BallBounce) : m.second = 24 := P.bounce_second m
theorem bounce_third (m : P.BallBounce) : m.third = 12 := P.bounce_third m
theorem bounce_fourth (m : P.BallBounce) : m.fourth = 6 := P.bounce_fourth m
theorem bounce_solution (m : P.BallBounce) : m.fifth = 3 := P.bounce_solution m
theorem house_down (m : P.HouseBalance) : m.down = 20000 := P.house_down m
theorem house_after_down (m : P.HouseBalance) : m.afterDown = 80000 := P.house_after_down m
theorem house_parents (m : P.HouseBalance) : m.parentsPayment = 24000 := P.house_parents m
theorem house_solution (m : P.HouseBalance) : m.owed = 56000 := P.house_solution m
theorem pizza_breakfast (m : P.PizzaSlices) : m.afterBreakfast = 11 := P.pizza_breakfast m
theorem pizza_lunch (m : P.PizzaSlices) : m.afterLunch = 9 := P.pizza_lunch m
theorem pizza_snack (m : P.PizzaSlices) : m.afterSnack = 7 := P.pizza_snack m
theorem pizza_solution (m : P.PizzaSlices) : m.remaining = 2 := P.pizza_solution m
theorem weekly_candy_amount (m : P.WeeklyCandy) : m.weekly = 9 := P.weekly_candy_amount m
theorem weekly_candy_solution (m : P.WeeklyCandy) : m.weeks = 4 := P.weekly_candy_solution m
theorem bicycle_cars (m : P.BicycleSavings) : m.carMoney = 30 := P.bicycle_cars m
theorem bicycle_lawns (m : P.BicycleSavings) : m.lawnMoney = 26 := P.bicycle_lawns m
theorem bicycle_earned (m : P.BicycleSavings) : m.earned = 56 := P.bicycle_earned m
theorem bicycle_solution (m : P.BicycleSavings) : m.needed = 24 := P.bicycle_solution m
theorem recycling_friends (m : P.RecyclingRewards) : m.friends = 12 := P.recycling_friends m
theorem recycling_friend_rewards (m : P.RecyclingRewards) : m.friendRewards = 60 := P.recycling_friend_rewards m
theorem recycling_referral_rewards (m : P.RecyclingRewards) : m.referralRewards = 60 := P.recycling_referral_rewards m
theorem recycling_solution (m : P.RecyclingRewards) : m.total = 125 := P.recycling_solution m
theorem game_reference_total : 5 * 30 = 150 := P.game_reference_total
theorem game_reference_taro_relation : 5 * (86 + 4) = 3 * 150 := P.game_reference_taro_relation
theorem game_reference_vlad : 150 - 86 = 64 := P.game_reference_vlad
theorem game_taro_not_multiple_of_five : ¬ ∃ w : ℕ, 5 * w = 86 := P.game_taro_not_multiple_of_five
theorem game_vlad_not_multiple_of_five : ¬ ∃ w : ℕ, 5 * w = 64 := P.game_vlad_not_multiple_of_five
theorem game_reference_scores_invalid : ¬ (∃ wt wv : ℕ, 5 * wt = 86 ∧ 5 * wv = 64) := P.game_reference_scores_invalid
theorem swim_races_each : 10 / 2 = 5 := P.swim_races_each
theorem swim_distance_each : 5 * 3 = 15 := P.swim_distance_each
theorem swim_lake_time : 3 * 5 = 15 := P.swim_lake_time
theorem swim_ocean_time : 5 * 6 = 2 * 15 := P.swim_ocean_time
theorem swim_solution : 5 + 6 = 11 := P.swim_solution
theorem juice_pouches (m : P.JuicePouches) : m.pouches = 60 := P.juice_pouches m
theorem juice_total_cents (m : P.JuicePouches) : m.cents = 1200 := P.juice_total_cents m
theorem juice_solution (m : P.JuicePouches) : m.costEach = 20 := P.juice_solution m
theorem pamphlets_mike_before (m : P.Pamphlets) : m.mikeBefore = 5400 := P.pamphlets_mike_before m
theorem pamphlets_mike_after_speed (m : P.Pamphlets) : m.mikeAfterSpeed = 200 := P.pamphlets_mike_after_speed m
theorem pamphlets_mike_after (m : P.Pamphlets) : m.mikeAfter = 400 := P.pamphlets_mike_after m
theorem pamphlets_leo_hours (m : P.Pamphlets) : m.leoHours = 3 := P.pamphlets_leo_hours m
theorem pamphlets_leo_speed (m : P.Pamphlets) : m.leoSpeed = 1200 := P.pamphlets_leo_speed m
theorem pamphlets_leo (m : P.Pamphlets) : m.leo = 3600 := P.pamphlets_leo m
theorem pamphlets_solution (m : P.Pamphlets) : m.total = 9400 := P.pamphlets_solution m
theorem train_per_round (m : P.TrainPassengers) : m.perRound = 160 := P.train_per_round m
theorem train_later_rounds (m : P.TrainPassengers) : m.laterRounds = 480 := P.train_later_rounds m
theorem train_solution (m : P.TrainPassengers) : m.total = 640 := P.train_solution m

end LemmaWeave.Tests.GSM8KSprint0923A19

#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.electricity_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.birdhouse_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.babysitting_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.salary_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.bounce_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.house_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.pizza_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.weekly_candy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.bicycle_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.recycling_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.game_reference_scores_invalid
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.swim_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.juice_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.pamphlets_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A19.train_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.electricity_solution to "work/gsm8k-sprint109-electricity-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.birdhouse_solution to "work/gsm8k-sprint109-birdhouse-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.babysitting_solution to "work/gsm8k-sprint109-babysitting-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.salary_solution to "work/gsm8k-sprint109-salary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.bounce_solution to "work/gsm8k-sprint109-bounce-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.house_solution to "work/gsm8k-sprint109-house-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.pizza_solution to "work/gsm8k-sprint109-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.weekly_candy_solution to "work/gsm8k-sprint109-weekly-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.bicycle_solution to "work/gsm8k-sprint109-bicycle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.recycling_solution to "work/gsm8k-sprint109-recycling-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.game_reference_scores_invalid to "work/gsm8k-sprint109-game-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.swim_solution to "work/gsm8k-sprint109-swim-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.juice_solution to "work/gsm8k-sprint109-juice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.pamphlets_solution to "work/gsm8k-sprint109-pamphlets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A19.train_solution to "work/gsm8k-sprint109-train-graph.json"
