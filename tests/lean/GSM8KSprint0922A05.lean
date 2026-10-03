import LemmaWeave.Problems.GSM8K.Sprint0922A05Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A05
open LemmaWeave.Problems.GSM8K.Sprint0922A05

theorem tennis_games : ∀ (m:TennisBalls), m.games=15 := LemmaWeave.Problems.GSM8K.Sprint0922A05.tennis_games
theorem tennis_cans : ∀ (m:TennisBalls), m.cans=75 := LemmaWeave.Problems.GSM8K.Sprint0922A05.tennis_cans
theorem tennis_solution : ∀ (m:TennisBalls), m.balls=225 := LemmaWeave.Problems.GSM8K.Sprint0922A05.tennis_solution
theorem coins_quarters : ∀ (m:Coins), m.quarters=250 := LemmaWeave.Problems.GSM8K.Sprint0922A05.coins_quarters
theorem coins_dimes : ∀ (m:Coins), m.dimes=30 := LemmaWeave.Problems.GSM8K.Sprint0922A05.coins_dimes
theorem coins_nickels : ∀ (m:Coins), m.nickels=15 := LemmaWeave.Problems.GSM8K.Sprint0922A05.coins_nickels
theorem coins_pennies : ∀ (m:Coins), m.pennies=5 := LemmaWeave.Problems.GSM8K.Sprint0922A05.coins_pennies
theorem coins_solution : ∀ (m:Coins), m.totalCents=300 ∧ m.dollars=3 := LemmaWeave.Problems.GSM8K.Sprint0922A05.coins_solution
theorem instruments_charlie : ∀ (m:Instruments), m.charlie=4 := LemmaWeave.Problems.GSM8K.Sprint0922A05.instruments_charlie
theorem instruments_carli_flutes : ∀ (m:Instruments), m.carliFlutes=2 := LemmaWeave.Problems.GSM8K.Sprint0922A05.instruments_carli_flutes
theorem instruments_carli_horns : ∀ (m:Instruments), m.carliHorns=1 := LemmaWeave.Problems.GSM8K.Sprint0922A05.instruments_carli_horns
theorem instruments_carli : ∀ (m:Instruments), m.carli=3 := LemmaWeave.Problems.GSM8K.Sprint0922A05.instruments_carli
theorem instruments_solution : ∀ (m:Instruments), m.total=7 := LemmaWeave.Problems.GSM8K.Sprint0922A05.instruments_solution
theorem deck_area : ∀ (m:DeckCost), m.area=1200 := LemmaWeave.Problems.GSM8K.Sprint0922A05.deck_area
theorem deck_rate : ∀ (m:DeckCost), m.rate=4 := LemmaWeave.Problems.GSM8K.Sprint0922A05.deck_rate
theorem deck_solution : ∀ (m:DeckCost), m.total=4800 := LemmaWeave.Problems.GSM8K.Sprint0922A05.deck_solution
theorem soup_day_one : ∀ (m:Soup), m.d1=40 := LemmaWeave.Problems.GSM8K.Sprint0922A05.soup_day_one
theorem soup_day_two : ∀ (m:Soup), m.d2=20 := LemmaWeave.Problems.GSM8K.Sprint0922A05.soup_day_two
theorem soup_day_three : ∀ (m:Soup), m.d3=10 := LemmaWeave.Problems.GSM8K.Sprint0922A05.soup_day_three
theorem soup_solution : ∀ (m:Soup), m.d4=5 := LemmaWeave.Problems.GSM8K.Sprint0922A05.soup_solution
theorem pizza_cost : ∀ (m:Pizza), m.cost=40 := LemmaWeave.Problems.GSM8K.Sprint0922A05.pizza_cost
theorem pizza_total : ∀ (m:Pizza), m.total=45 := LemmaWeave.Problems.GSM8K.Sprint0922A05.pizza_total
theorem pizza_solution : ∀ (m:Pizza), m.change=5 := LemmaWeave.Problems.GSM8K.Sprint0922A05.pizza_solution
theorem soccer_decided : ∀ (m:Soccer), m.decided=16 := LemmaWeave.Problems.GSM8K.Sprint0922A05.soccer_decided
theorem soccer_draws : ∀ (m:Soccer), m.draws=4 := LemmaWeave.Problems.GSM8K.Sprint0922A05.soccer_draws
theorem soccer_win_points : ∀ (m:Soccer), m.winPoints=42 := LemmaWeave.Problems.GSM8K.Sprint0922A05.soccer_win_points
theorem soccer_draw_points : ∀ (m:Soccer), m.drawPoints=4 := LemmaWeave.Problems.GSM8K.Sprint0922A05.soccer_draw_points
theorem soccer_solution : ∀ (m:Soccer), m.total=46 := LemmaWeave.Problems.GSM8K.Sprint0922A05.soccer_solution
theorem spinning_minutes : ∀ (m:Spinning), m.minutes=90 := LemmaWeave.Problems.GSM8K.Sprint0922A05.spinning_minutes
theorem spinning_class : ∀ (m:Spinning), m.classCalories=630 := LemmaWeave.Problems.GSM8K.Sprint0922A05.spinning_class
theorem spinning_solution : ∀ (m:Spinning), m.weekly=1890 := LemmaWeave.Problems.GSM8K.Sprint0922A05.spinning_solution
theorem cards_weekly : ∀ (m:CardTearing), m.weekly=90 := LemmaWeave.Problems.GSM8K.Sprint0922A05.cards_weekly
theorem cards_total : ∀ (m:CardTearing), m.cards=990 := LemmaWeave.Problems.GSM8K.Sprint0922A05.cards_total
theorem cards_solution : ∀ (m:CardTearing), m.weeks=11 := LemmaWeave.Problems.GSM8K.Sprint0922A05.cards_solution
theorem jeans_sale_discount : ∀ (m:Jeans), m.saleDiscount=25 := LemmaWeave.Problems.GSM8K.Sprint0922A05.jeans_sale_discount
theorem jeans_after_sale : ∀ (m:Jeans), m.afterSale=100 := LemmaWeave.Problems.GSM8K.Sprint0922A05.jeans_after_sale
theorem jeans_after_coupon : ∀ (m:Jeans), m.afterCoupon=90 := LemmaWeave.Problems.GSM8K.Sprint0922A05.jeans_after_coupon
theorem jeans_card_discount : ∀ (m:Jeans), m.cardDiscount=9 := LemmaWeave.Problems.GSM8K.Sprint0922A05.jeans_card_discount
theorem jeans_paid : ∀ (m:Jeans), m.paid=81 := LemmaWeave.Problems.GSM8K.Sprint0922A05.jeans_paid
theorem jeans_solution : ∀ (m:Jeans), m.saved=44 := LemmaWeave.Problems.GSM8K.Sprint0922A05.jeans_solution
theorem credits_aria : ∀ (m:Credits), m.aria=40 := LemmaWeave.Problems.GSM8K.Sprint0922A05.credits_aria
theorem credits_spencer : ∀ (m:Credits), m.spencer=10 := LemmaWeave.Problems.GSM8K.Sprint0922A05.credits_spencer
theorem credits_total : ∀ (m:Credits), m.total=70 := LemmaWeave.Problems.GSM8K.Sprint0922A05.credits_total
theorem credits_solution : ∀ (m:Credits), m.twiceTotal=140 := LemmaWeave.Problems.GSM8K.Sprint0922A05.credits_solution
theorem reading_total_words : ∀ (m:ReadingTime), m.words=900 := LemmaWeave.Problems.GSM8K.Sprint0922A05.reading_total_words
theorem reading_hours : ∀ (m:ReadingTime), m.hours=9 := LemmaWeave.Problems.GSM8K.Sprint0922A05.reading_hours
theorem reading_minutes : ∀ (m:ReadingTime), m.minutes=540 := LemmaWeave.Problems.GSM8K.Sprint0922A05.reading_minutes
theorem reading_solution : ∀ (m:ReadingTime), m.daily=54 := LemmaWeave.Problems.GSM8K.Sprint0922A05.reading_solution
theorem inventory_shirts : ∀ (m:Inventory), m.shirts=105 := LemmaWeave.Problems.GSM8K.Sprint0922A05.inventory_shirts
theorem inventory_jeans : ∀ (m:Inventory), m.jeans=70 := LemmaWeave.Problems.GSM8K.Sprint0922A05.inventory_jeans
theorem inventory_accessories : ∀ (m:Inventory), m.accessories=74 := LemmaWeave.Problems.GSM8K.Sprint0922A05.inventory_accessories
theorem inventory_scarves : ∀ (m:Inventory), m.scarves=37 := LemmaWeave.Problems.GSM8K.Sprint0922A05.inventory_scarves
theorem inventory_solution : ∀ (m:Inventory), m.difference=33 := LemmaWeave.Problems.GSM8K.Sprint0922A05.inventory_solution
theorem sled_mary : ∀ (m:Sledding), m.mary=7 := LemmaWeave.Problems.GSM8K.Sprint0922A05.sled_mary
theorem sled_ann : ∀ (m:Sledding), m.ann=20 := LemmaWeave.Problems.GSM8K.Sprint0922A05.sled_ann
theorem sled_solution : ∀ (m:Sledding), m.difference=13 := LemmaWeave.Problems.GSM8K.Sprint0922A05.sled_solution
theorem notebooks_half : ∀ (m:Notebooks), m.half=14 := LemmaWeave.Problems.GSM8K.Sprint0922A05.notebooks_half
theorem notebooks_three : ∀ (m:Notebooks), m.three=42 := LemmaWeave.Problems.GSM8K.Sprint0922A05.notebooks_three
theorem notebooks_five : ∀ (m:Notebooks), m.five=70 := LemmaWeave.Problems.GSM8K.Sprint0922A05.notebooks_five
theorem notebooks_solution : ∀ (m:Notebooks), m.total=112 := LemmaWeave.Problems.GSM8K.Sprint0922A05.notebooks_solution

end LemmaWeave.Tests.GSM8KSprint0922A05

#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.cards_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.coins_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.credits_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.deck_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.instruments_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.inventory_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.jeans_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.notebooks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.pizza_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.reading_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.sled_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.soccer_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.soup_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.spinning_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A05.tennis_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.cards_solution to "work/gsm8k-sprint77-card_tearing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.coins_solution to "work/gsm8k-sprint77-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.credits_solution to "work/gsm8k-sprint77-credits-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.deck_solution to "work/gsm8k-sprint77-deck_cost-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.instruments_solution to "work/gsm8k-sprint77-instruments-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.inventory_solution to "work/gsm8k-sprint77-inventory-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.jeans_solution to "work/gsm8k-sprint77-jeans_savings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.notebooks_solution to "work/gsm8k-sprint77-notebooks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.pizza_solution to "work/gsm8k-sprint77-pizza_change-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.reading_solution to "work/gsm8k-sprint77-reading_time-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.sled_solution to "work/gsm8k-sprint77-sledding-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.soccer_solution to "work/gsm8k-sprint77-soccer_points-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.soup_solution to "work/gsm8k-sprint77-soup-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.spinning_solution to "work/gsm8k-sprint77-spinning-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A05.tennis_solution to "work/gsm8k-sprint77-tennis_balls-graph.json"
