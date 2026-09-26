import LemmaWeave.Problems.GSM8K.Sprint0923A04Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A04
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A04

theorem salad_tomatoes (m : P.SaladBar) : m.tomatoes = 6 := P.salad_tomatoes m
theorem salad_pickles (m : P.SaladBar) : m.pickles = 24 := P.salad_pickles m
theorem salad_bacon (m : P.SaladBar) : m.bacon = 96 := P.salad_bacon m
theorem salad_solution (m : P.SaladBar) : m.red = 32 := P.salad_solution m
theorem flower_bought (m : P.FlowerPurchase) : m.bought = 36 := P.flower_bought m
theorem flower_free (m : P.FlowerPurchase) : m.free = 6 := P.flower_free m
theorem flower_solution (m : P.FlowerPurchase) : m.total = 42 := P.flower_solution m
theorem soccer_athletes (m : P.SoccerStudents) : m.athletes = 208 := P.soccer_athletes m
theorem soccer_solution (m : P.SoccerStudents) : m.soccer = 26 := P.soccer_solution m
theorem toys_equation (m : P.ToyBoxes) : 2 * m.kamari + 30 = 160 := P.toys_equation m
theorem toys_solution (m : P.ToyBoxes) : m.kamari = 65 := P.toys_solution m
theorem basketball_mark_two (m : P.BasketballGame) : m.markTwo = 50 := P.basketball_mark_two m
theorem basketball_mark_three (m : P.BasketballGame) : m.markThree = 24 := P.basketball_mark_three m
theorem basketball_mark_total (m : P.BasketballGame) : m.markTotal = 84 := P.basketball_mark_total m
theorem basketball_opponent_parts (m : P.BasketballGame) :
    m.oppTwo = 100 ∧ m.oppThree = 12 ∧ m.oppFree = 5 := P.basketball_opponent_parts m
theorem basketball_opponent_total (m : P.BasketballGame) : m.oppTotal = 117 :=
  P.basketball_opponent_total m
theorem basketball_solution (m : P.BasketballGame) : m.total = 201 := P.basketball_solution m
theorem messages_wednesday (m : P.GroupMessages) : m.wednesday = 500 := P.messages_wednesday m
theorem messages_thursday (m : P.GroupMessages) : m.thursday = 1000 := P.messages_thursday m
theorem messages_solution (m : P.GroupMessages) : m.total = 2000 := P.messages_solution m
theorem temperature_sum (m : P.TemperatureAverage) : m.sum = 420 := P.temperature_sum m
theorem temperature_solution (m : P.TemperatureAverage) : m.average = 84 := P.temperature_solution m
theorem waterpark_counts (m : P.Waterpark) : m.adults = 6 ∧ m.childPrice = 15 :=
  P.waterpark_counts m
theorem waterpark_adult_cost (m : P.Waterpark) : m.adultCost = 180 := P.waterpark_adult_cost m
theorem waterpark_child_cost (m : P.Waterpark) : m.childCost = 60 := P.waterpark_child_cost m
theorem waterpark_ticket_total (m : P.Waterpark) : m.ticketTotal = 240 := P.waterpark_ticket_total m
theorem waterpark_discounted (m : P.Waterpark) : m.discounted = 192 := P.waterpark_discounted m
theorem waterpark_solution (m : P.Waterpark) : m.total = 197 := P.waterpark_solution m
theorem shirts_count (m : P.ShirtSale) : m.shirts = 6 := P.shirts_count m
theorem shirts_discount (m : P.ShirtSale) : m.discountEach = 10 := P.shirts_discount m
theorem shirts_sale_price (m : P.ShirtSale) : m.saleEach = 40 := P.shirts_sale_price m
theorem shirts_solution (m : P.ShirtSale) : m.total = 240 := P.shirts_solution m
theorem cards_june (m : P.TradingCards) : m.june = 25044 := P.cards_june m
theorem cards_july (m : P.TradingCards) : m.july = 21122 := P.cards_july m
theorem cards_solution (m : P.TradingCards) : m.total = 46166 := P.cards_solution m
theorem warehouses_second (m : P.Warehouses) : m.second = 200 := P.warehouses_second m
theorem warehouses_solution (m : P.Warehouses) : m.total = 600 := P.warehouses_solution m
theorem jeremy_jerseys (m : P.JeremyBudget) : m.jerseys = 10 := P.jeremy_jerseys m
theorem jeremy_spent (m : P.JeremyBudget) : m.spent = 36 := P.jeremy_spent m
theorem jeremy_solution (m : P.JeremyBudget) : m.left = 14 := P.jeremy_solution m
theorem juggling_toby (m : P.JugglingContest) : m.toby = 400 := P.juggling_toby m
theorem juggling_friend (m : P.JugglingContest) : m.friend = 404 := P.juggling_friend m
theorem juggling_solution (m : P.JugglingContest) : m.winner = 404 := P.juggling_solution m
theorem jeans_pair_cost (m : P.JeansSale) : m.pairCost = 80 := P.jeans_pair_cost m
theorem jeans_discount (m : P.JeansSale) : m.discount = 8 := P.jeans_discount m
theorem jeans_discounted_pair (m : P.JeansSale) : m.discountedPair = 72 :=
  P.jeans_discounted_pair m
theorem jeans_solution (m : P.JeansSale) : m.total = 112 := P.jeans_solution m
theorem fish_kingfisher (m : P.FishCatch) : m.kingfisher = 20 := P.fish_kingfisher m
theorem fish_birds (m : P.FishCatch) : m.birds = 33 := P.fish_birds m
theorem fish_fisherman (m : P.FishCatch) : m.fisherman = 99 := P.fish_fisherman m
theorem fish_solution (m : P.FishCatch) : m.difference = 86 := P.fish_solution m

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
