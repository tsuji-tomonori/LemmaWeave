import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0924A10
structure Eggs where daily week afterNeighbor final : ℕ; hD : daily = 3*3; hW : week = daily*7; hN : afterNeighbor+12=week; hF : final+5=afterNeighbor
theorem eggs_daily (m:Eggs) : m.daily=9 := by omega
theorem eggs_week (m:Eggs) : m.week=63 := by omega
theorem eggs_after_neighbor (m:Eggs) : m.afterNeighbor=51 := by omega
theorem eggs_solution (m:Eggs) : m.final=46 := by omega
structure Restaurant where customerTotal blocks donation : ℕ; hT:customerTotal=40*3; hB:10*blocks=customerTotal; hD:donation=2*blocks
theorem restaurant_customer_total (m:Restaurant) : m.customerTotal=120 := by omega
theorem restaurant_blocks (m:Restaurant) : m.blocks=12 := by omega
theorem restaurant_solution (m:Restaurant) : m.donation=24 := by omega
structure Trip where goal firstThree nextFour week remaining perPerson : ℕ; hG:goal=6*450+3000; hF:firstThree=600+900+400; hN:2*nextFour=firstThree; hW:week=firstThree+nextFour; hR:remaining+week=goal; hP:6*perPerson=remaining
theorem trip_goal (m:Trip) : m.goal=5700 := by omega
theorem trip_first_three (m:Trip) : m.firstThree=1900 := by omega
theorem trip_next_four (m:Trip) : m.nextFour=950 := by omega
theorem trip_week (m:Trip) : m.week=2850 := by omega
theorem trip_remaining (m:Trip) : m.remaining=2850 := by omega
theorem trip_solution (m:Trip) : m.perPerson=475 := by omega
structure Cards where initial all usable kept : ℕ; hI:initial=4+13; hA:all=initial+36; hU:usable+4=all; hK:kept+29=usable
theorem cards_initial (m:Cards) : m.initial=17 := by omega
theorem cards_all (m:Cards) : m.all=53 := by omega
theorem cards_usable (m:Cards) : m.usable=49 := by omega
theorem cards_solution (m:Cards) : m.kept=20 := by omega
structure Shoes where donated remaining finalPairs finalShoes : ℕ; hD:10*donated=3*80; hR:remaining+donated=80; hP:finalPairs=remaining+6; hS:finalShoes=2*finalPairs
theorem shoes_donated (m:Shoes) : m.donated=24 := by omega
theorem shoes_remaining (m:Shoes) : m.remaining=56 := by omega
theorem shoes_pairs (m:Shoes) : m.finalPairs=62 := by omega
theorem shoes_solution (m:Shoes) : m.finalPairs=62 ∧ m.finalShoes=124 := by omega
structure Yogurt where expired refund : ℕ; hE:5*expired=2*80; hR:refund=12*expired
theorem yogurt_expired (m:Yogurt) : m.expired=32 := by omega
theorem yogurt_solution (m:Yogurt) : m.refund=384 := by omega
structure Pushups where breaks active secondsEach count : ℕ; hB:breaks=2*8; hA:active+breaks=60; hS:5*secondsEach=10; hC:secondsEach*count=active
theorem pushups_breaks (m:Pushups) : m.breaks=16 := by omega
theorem pushups_active (m:Pushups) : m.active=44 := by omega
theorem pushups_seconds_each (m:Pushups) : m.secondsEach=2 := by omega
theorem pushups_solution (m:Pushups) : m.count=22 := by omega
structure Popsicles where second third fourth fifth sixth : ℕ; h2:second=2; h3:third=2*second; h4:fourth=2*third; h5:fifth=2*fourth; h6:sixth=2*fifth
theorem popsicles_second (m:Popsicles) : m.second=2 := by omega
theorem popsicles_third (m:Popsicles) : m.third=4 := by omega
theorem popsicles_fourth (m:Popsicles) : m.fourth=8 := by omega
theorem popsicles_fifth (m:Popsicles) : m.fifth=16 := by omega
theorem popsicles_solution (m:Popsicles) : m.sixth=32 := by omega
structure Jelly where remaining each : ℕ; hR:remaining+6=36; hE:3*each=remaining
theorem jelly_remaining (m:Jelly) : m.remaining=30 := by omega
theorem jelly_solution (m:Jelly) : m.each=10 := by omega
structure Gift where guests fund price : ℕ; hG:guests=12*5; hF:fund=guests+10; hP:price+15=fund
theorem gift_guests (m:Gift) : m.guests=60 := by omega
theorem gift_fund (m:Gift) : m.fund=70 := by omega
theorem gift_solution (m:Gift) : m.price=55 := by omega
structure Hallway where sonDistance fatherDistance : ℕ; hR:fatherDistance=3*sonDistance; hT:fatherDistance+sonDistance=16
theorem hallway_ratio (m:Hallway) : m.fatherDistance=3*m.sonDistance := m.hR
theorem hallway_son (m:Hallway) : m.sonDistance=4 := by omega
theorem hallway_solution (m:Hallway) : m.fatherDistance=12 := by omega
structure Cars where mater sally : ℕ; hM:10*mater=140000; hS:sally=3*mater
theorem cars_mater (m:Cars) : m.mater=14000 := by omega
theorem cars_solution (m:Cars) : m.sally=42000 := by omega
structure Shopping where dish ingredients apron total : ℕ; hD:dish=2*6; hI:ingredients=5*3; hA:apron=6+1; hT:total=6+dish+ingredients+apron
theorem shopping_dish (m:Shopping) : m.dish=12 := by omega
theorem shopping_ingredients (m:Shopping) : m.ingredients=15 := by omega
theorem shopping_apron (m:Shopping) : m.apron=7 := by omega
theorem shopping_solution (m:Shopping) : m.total=40 := by omega
structure Ducks where muscovy female : ℕ; hM:2*muscovy=40; hF:10*female=3*muscovy
theorem ducks_muscovy (m:Ducks) : m.muscovy=20 := by omega
theorem ducks_solution (m:Ducks) : m.female=6 := by omega
structure Cookies where beforeThird beforeSecond beforeFirst beforeBrother baked : ℕ; h3:beforeThird=6+5; h2:beforeSecond=beforeThird+5; h1:beforeFirst=beforeSecond+3; hB:beforeBrother=beforeFirst+1; hK:baked=beforeBrother+2
theorem cookies_before_third (m:Cookies) : m.beforeThird=11 := by omega
theorem cookies_before_second (m:Cookies) : m.beforeSecond=16 := by omega
theorem cookies_before_first (m:Cookies) : m.beforeFirst=19 := by omega
theorem cookies_before_brother (m:Cookies) : m.beforeBrother=20 := by omega
theorem cookies_solution (m:Cookies) : m.baked=22 := by omega
end LemmaWeave.Problems.GSM8K.Sprint0924A10
