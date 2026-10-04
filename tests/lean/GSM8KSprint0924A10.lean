import LemmaWeave.Problems.GSM8K.Sprint0924A10Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A10
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A10

theorem eggs_daily (m:P.Eggs) : m.daily=9 := P.eggs_daily m
theorem eggs_week (m:P.Eggs) : m.week=63 := P.eggs_week m
theorem eggs_after_neighbor (m:P.Eggs) : m.afterNeighbor=51 := P.eggs_after_neighbor m
theorem eggs_solution (m:P.Eggs) : m.final=46 := P.eggs_solution m
theorem restaurant_customer_total (m:P.Restaurant) : m.customerTotal=120 := P.restaurant_customer_total m
theorem restaurant_blocks (m:P.Restaurant) : m.blocks=12 := P.restaurant_blocks m
theorem restaurant_solution (m:P.Restaurant) : m.donation=24 := P.restaurant_solution m
theorem trip_goal (m:P.Trip) : m.goal=5700 := P.trip_goal m
theorem trip_first_three (m:P.Trip) : m.firstThree=1900 := P.trip_first_three m
theorem trip_next_four (m:P.Trip) : m.nextFour=950 := P.trip_next_four m
theorem trip_week (m:P.Trip) : m.week=2850 := P.trip_week m
theorem trip_remaining (m:P.Trip) : m.remaining=2850 := P.trip_remaining m
theorem trip_solution (m:P.Trip) : m.perPerson=475 := P.trip_solution m
theorem cards_initial (m:P.Cards) : m.initial=17 := P.cards_initial m
theorem cards_all (m:P.Cards) : m.all=53 := P.cards_all m
theorem cards_usable (m:P.Cards) : m.usable=49 := P.cards_usable m
theorem cards_solution (m:P.Cards) : m.kept=20 := P.cards_solution m
theorem shoes_donated (m:P.Shoes) : m.donated=24 := P.shoes_donated m
theorem shoes_remaining (m:P.Shoes) : m.remaining=56 := P.shoes_remaining m
theorem shoes_pairs (m:P.Shoes) : m.finalPairs=62 := P.shoes_pairs m
theorem shoes_solution (m:P.Shoes) : m.finalPairs=62 ∧ m.finalShoes=124 := P.shoes_solution m
theorem yogurt_expired (m:P.Yogurt) : m.expired=32 := P.yogurt_expired m
theorem yogurt_solution (m:P.Yogurt) : m.refund=384 := P.yogurt_solution m
theorem pushups_breaks (m:P.Pushups) : m.breaks=16 := P.pushups_breaks m
theorem pushups_active (m:P.Pushups) : m.active=44 := P.pushups_active m
theorem pushups_seconds_each (m:P.Pushups) : m.secondsEach=2 := P.pushups_seconds_each m
theorem pushups_solution (m:P.Pushups) : m.count=22 := P.pushups_solution m
theorem popsicles_second (m:P.Popsicles) : m.second=2 := P.popsicles_second m
theorem popsicles_third (m:P.Popsicles) : m.third=4 := P.popsicles_third m
theorem popsicles_fourth (m:P.Popsicles) : m.fourth=8 := P.popsicles_fourth m
theorem popsicles_fifth (m:P.Popsicles) : m.fifth=16 := P.popsicles_fifth m
theorem popsicles_solution (m:P.Popsicles) : m.sixth=32 := P.popsicles_solution m
theorem jelly_remaining (m:P.Jelly) : m.remaining=30 := P.jelly_remaining m
theorem jelly_solution (m:P.Jelly) : m.each=10 := P.jelly_solution m
theorem gift_guests (m:P.Gift) : m.guests=60 := P.gift_guests m
theorem gift_fund (m:P.Gift) : m.fund=70 := P.gift_fund m
theorem gift_solution (m:P.Gift) : m.price=55 := P.gift_solution m
theorem hallway_ratio (m:P.Hallway) : m.fatherDistance=3*m.sonDistance := P.hallway_ratio m
theorem hallway_son (m:P.Hallway) : m.sonDistance=4 := P.hallway_son m
theorem hallway_solution (m:P.Hallway) : m.fatherDistance=12 := P.hallway_solution m
theorem cars_mater (m:P.Cars) : m.mater=14000 := P.cars_mater m
theorem cars_solution (m:P.Cars) : m.sally=42000 := P.cars_solution m
theorem shopping_dish (m:P.Shopping) : m.dish=12 := P.shopping_dish m
theorem shopping_ingredients (m:P.Shopping) : m.ingredients=15 := P.shopping_ingredients m
theorem shopping_apron (m:P.Shopping) : m.apron=7 := P.shopping_apron m
theorem shopping_solution (m:P.Shopping) : m.total=40 := P.shopping_solution m
theorem ducks_muscovy (m:P.Ducks) : m.muscovy=20 := P.ducks_muscovy m
theorem ducks_solution (m:P.Ducks) : m.female=6 := P.ducks_solution m
theorem cookies_before_third (m:P.Cookies) : m.beforeThird=11 := P.cookies_before_third m
theorem cookies_before_second (m:P.Cookies) : m.beforeSecond=16 := P.cookies_before_second m
theorem cookies_before_first (m:P.Cookies) : m.beforeFirst=19 := P.cookies_before_first m
theorem cookies_before_brother (m:P.Cookies) : m.beforeBrother=20 := P.cookies_before_brother m
theorem cookies_solution (m:P.Cookies) : m.baked=22 := P.cookies_solution m

end LemmaWeave.Tests.GSM8KSprint0924A10

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.eggs_solution to "work/gsm8k-sprint119-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.restaurant_solution to "work/gsm8k-sprint119-restaurant-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.trip_solution to "work/gsm8k-sprint119-trip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.cards_solution to "work/gsm8k-sprint119-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.shoes_solution to "work/gsm8k-sprint119-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.yogurt_solution to "work/gsm8k-sprint119-yogurt-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.pushups_solution to "work/gsm8k-sprint119-pushups-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.popsicles_solution to "work/gsm8k-sprint119-popsicles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.jelly_solution to "work/gsm8k-sprint119-jelly-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.gift_solution to "work/gsm8k-sprint119-gift-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.hallway_solution to "work/gsm8k-sprint119-hallway-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.cars_solution to "work/gsm8k-sprint119-cars-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.shopping_solution to "work/gsm8k-sprint119-shopping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.ducks_solution to "work/gsm8k-sprint119-ducks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A10.cookies_solution to "work/gsm8k-sprint119-cookies-graph.json"
