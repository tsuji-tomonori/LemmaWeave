import LemmaWeave.Problems.GSM8K.Sprint0923A04Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A04

theorem salad_tomatoes (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.SaladBar) : m.tomatoes = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A04.salad_tomatoes m
theorem salad_pickles (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.SaladBar) : m.pickles = 24 := LemmaWeave.Problems.GSM8K.Sprint0923A04.salad_pickles m
theorem salad_bacon (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.SaladBar) : m.bacon = 96 := LemmaWeave.Problems.GSM8K.Sprint0923A04.salad_bacon m
theorem salad_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.SaladBar) : m.red = 32 := LemmaWeave.Problems.GSM8K.Sprint0923A04.salad_solution m
theorem flower_bought (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.FlowerPurchase) : m.bought = 36 := LemmaWeave.Problems.GSM8K.Sprint0923A04.flower_bought m
theorem flower_free (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.FlowerPurchase) : m.free = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A04.flower_free m
theorem flower_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.FlowerPurchase) : m.total = 42 := LemmaWeave.Problems.GSM8K.Sprint0923A04.flower_solution m
theorem soccer_athletes (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.SoccerStudents) : m.athletes = 208 := LemmaWeave.Problems.GSM8K.Sprint0923A04.soccer_athletes m
theorem soccer_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.SoccerStudents) : m.soccer = 26 := LemmaWeave.Problems.GSM8K.Sprint0923A04.soccer_solution m
theorem toys_equation (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.ToyBoxes) : 2 * m.kamari + 30 = 160 := LemmaWeave.Problems.GSM8K.Sprint0923A04.toys_equation m
theorem toys_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.ToyBoxes) : m.kamari = 65 := LemmaWeave.Problems.GSM8K.Sprint0923A04.toys_solution m
theorem basketball_mark_two (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.BasketballGame) : m.markTwo = 50 := LemmaWeave.Problems.GSM8K.Sprint0923A04.basketball_mark_two m
theorem basketball_mark_three (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.BasketballGame) : m.markThree = 24 := LemmaWeave.Problems.GSM8K.Sprint0923A04.basketball_mark_three m
theorem basketball_mark_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.BasketballGame) : m.markTotal = 84 := LemmaWeave.Problems.GSM8K.Sprint0923A04.basketball_mark_total m
theorem basketball_opponent_parts (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.BasketballGame) :
    m.oppTwo = 100 ∧ m.oppThree = 12 ∧ m.oppFree = 5 := LemmaWeave.Problems.GSM8K.Sprint0923A04.basketball_opponent_parts m
theorem basketball_opponent_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.BasketballGame) : m.oppTotal = 117 :=
  LemmaWeave.Problems.GSM8K.Sprint0923A04.basketball_opponent_total m
theorem basketball_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.BasketballGame) : m.total = 201 := LemmaWeave.Problems.GSM8K.Sprint0923A04.basketball_solution m
theorem messages_wednesday (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.GroupMessages) : m.wednesday = 500 := LemmaWeave.Problems.GSM8K.Sprint0923A04.messages_wednesday m
theorem messages_thursday (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.GroupMessages) : m.thursday = 1000 := LemmaWeave.Problems.GSM8K.Sprint0923A04.messages_thursday m
theorem messages_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.GroupMessages) : m.total = 2000 := LemmaWeave.Problems.GSM8K.Sprint0923A04.messages_solution m
theorem temperature_sum (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.TemperatureAverage) : m.sum = 420 := LemmaWeave.Problems.GSM8K.Sprint0923A04.temperature_sum m
theorem temperature_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.TemperatureAverage) : m.average = 84 := LemmaWeave.Problems.GSM8K.Sprint0923A04.temperature_solution m
theorem waterpark_counts (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.Waterpark) : m.adults = 6 ∧ m.childPrice = 15 :=
  LemmaWeave.Problems.GSM8K.Sprint0923A04.waterpark_counts m
theorem waterpark_adult_cost (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.Waterpark) : m.adultCost = 180 := LemmaWeave.Problems.GSM8K.Sprint0923A04.waterpark_adult_cost m
theorem waterpark_child_cost (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.Waterpark) : m.childCost = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A04.waterpark_child_cost m
theorem waterpark_ticket_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.Waterpark) : m.ticketTotal = 240 := LemmaWeave.Problems.GSM8K.Sprint0923A04.waterpark_ticket_total m
theorem waterpark_discounted (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.Waterpark) : m.discounted = 192 := LemmaWeave.Problems.GSM8K.Sprint0923A04.waterpark_discounted m
theorem waterpark_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.Waterpark) : m.total = 197 := LemmaWeave.Problems.GSM8K.Sprint0923A04.waterpark_solution m
theorem shirts_count (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.ShirtSale) : m.shirts = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A04.shirts_count m
theorem shirts_discount (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.ShirtSale) : m.discountEach = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A04.shirts_discount m
theorem shirts_sale_price (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.ShirtSale) : m.saleEach = 40 := LemmaWeave.Problems.GSM8K.Sprint0923A04.shirts_sale_price m
theorem shirts_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.ShirtSale) : m.total = 240 := LemmaWeave.Problems.GSM8K.Sprint0923A04.shirts_solution m
theorem cards_june (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.TradingCards) : m.june = 25044 := LemmaWeave.Problems.GSM8K.Sprint0923A04.cards_june m
theorem cards_july (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.TradingCards) : m.july = 21122 := LemmaWeave.Problems.GSM8K.Sprint0923A04.cards_july m
theorem cards_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.TradingCards) : m.total = 46166 := LemmaWeave.Problems.GSM8K.Sprint0923A04.cards_solution m
theorem warehouses_second (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.Warehouses) : m.second = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A04.warehouses_second m
theorem warehouses_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.Warehouses) : m.total = 600 := LemmaWeave.Problems.GSM8K.Sprint0923A04.warehouses_solution m
theorem jeremy_jerseys (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JeremyBudget) : m.jerseys = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A04.jeremy_jerseys m
theorem jeremy_spent (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JeremyBudget) : m.spent = 36 := LemmaWeave.Problems.GSM8K.Sprint0923A04.jeremy_spent m
theorem jeremy_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JeremyBudget) : m.left = 14 := LemmaWeave.Problems.GSM8K.Sprint0923A04.jeremy_solution m
theorem juggling_toby (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JugglingContest) : m.toby = 400 := LemmaWeave.Problems.GSM8K.Sprint0923A04.juggling_toby m
theorem juggling_friend (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JugglingContest) : m.friend = 404 := LemmaWeave.Problems.GSM8K.Sprint0923A04.juggling_friend m
theorem juggling_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JugglingContest) : m.winner = 404 := LemmaWeave.Problems.GSM8K.Sprint0923A04.juggling_solution m
theorem jeans_pair_cost (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JeansSale) : m.pairCost = 80 := LemmaWeave.Problems.GSM8K.Sprint0923A04.jeans_pair_cost m
theorem jeans_discount (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JeansSale) : m.discount = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A04.jeans_discount m
theorem jeans_discounted_pair (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JeansSale) : m.discountedPair = 72 :=
  LemmaWeave.Problems.GSM8K.Sprint0923A04.jeans_discounted_pair m
theorem jeans_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.JeansSale) : m.total = 112 := LemmaWeave.Problems.GSM8K.Sprint0923A04.jeans_solution m
theorem fish_kingfisher (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.FishCatch) : m.kingfisher = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A04.fish_kingfisher m
theorem fish_birds (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.FishCatch) : m.birds = 33 := LemmaWeave.Problems.GSM8K.Sprint0923A04.fish_birds m
theorem fish_fisherman (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.FishCatch) : m.fisherman = 99 := LemmaWeave.Problems.GSM8K.Sprint0923A04.fish_fisherman m
theorem fish_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A04.FishCatch) : m.difference = 86 := LemmaWeave.Problems.GSM8K.Sprint0923A04.fish_solution m

end LemmaWeave.Tests.GSM8KSprint0923A04

#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.salad_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.flower_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.soccer_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.toys_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.basketball_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.messages_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.temperature_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.waterpark_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.shirts_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.cards_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.warehouses_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.jeremy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.juggling_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.jeans_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A04.fish_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.salad_solution to "work/gsm8k-sprint95-salad-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.flower_solution to "work/gsm8k-sprint95-flower-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.soccer_solution to "work/gsm8k-sprint95-soccer-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.toys_solution to "work/gsm8k-sprint95-toys-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.basketball_solution to "work/gsm8k-sprint95-basketball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.messages_solution to "work/gsm8k-sprint95-messages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.temperature_solution to "work/gsm8k-sprint95-temperature-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.waterpark_solution to "work/gsm8k-sprint95-waterpark-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.shirts_solution to "work/gsm8k-sprint95-shirts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.cards_solution to "work/gsm8k-sprint95-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.warehouses_solution to "work/gsm8k-sprint95-warehouses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.jeremy_solution to "work/gsm8k-sprint95-jeremy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.juggling_solution to "work/gsm8k-sprint95-juggling-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.jeans_solution to "work/gsm8k-sprint95-jeans-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A04.fish_solution to "work/gsm8k-sprint95-fish-graph.json"
