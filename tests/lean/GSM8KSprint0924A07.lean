import LemmaWeave.Problems.GSM8K.Sprint0924A07Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A07
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A07

theorem trip_pretrain (m : P.Trip) : m.pretrain=120 := P.trip_pretrain m
theorem trip_wait (m : P.Trip) : m.wait=30 := P.trip_wait m
theorem trip_solution (m : P.Trip) : m.bus=75 := P.trip_solution m
theorem kittens_twice (m : P.Kittens) : m.twice=64 := P.kittens_twice m
theorem kittens_solution (m : P.Kittens) : m.kittens=78 := P.kittens_solution m
theorem pills_used_days (m : P.Pills) : m.used=24 := P.pills_used_days m
theorem pills_remaining_days (m : P.Pills) : m.remaining=6 := P.pills_remaining_days m
theorem pills_solution (m : P.Pills) : m.dose=2 := P.pills_solution m
theorem relay_sally (m : P.Relay) : m.sally=26 := P.relay_sally m
theorem relay_diane (m : P.Relay) : m.diane=21 := P.relay_diane m
theorem relay_solution (m : P.Relay) : m.total=71 := P.relay_solution m
theorem hair_women (m : P.Hair) : m.women=150 := P.hair_women m
theorem hair_men (m : P.Hair) : m.men=30 := P.hair_men m
theorem hair_kids (m : P.Hair) : m.kids=75 := P.hair_kids m
theorem hair_solution (m : P.Hair) : m.total=255 := P.hair_solution m
theorem marbles_packs (m : P.Marbles) : m.packs=40 := P.marbles_packs m
theorem marbles_manny (m : P.Marbles) : m.manny=10 := P.marbles_manny m
theorem marbles_neil (m : P.Marbles) : m.neil=5 := P.marbles_neil m
theorem marbles_solution (m : P.Marbles) : m.kept=25 := P.marbles_solution m
theorem pizza_total (m : P.Pizza) : m.total=22 := P.pizza_total m
theorem pizza_eaten (m : P.Pizza) : m.eaten=18 := P.pizza_eaten m
theorem pizza_left (m : P.Pizza) : m.left=4 := P.pizza_left m
theorem pizza_solution (m : P.Pizza) : m.each=2 := P.pizza_solution m
theorem sandbox_volume (m : P.Sandbox) : m.volume=40 := P.sandbox_volume m
theorem sandbox_weight (m : P.Sandbox) : m.weight=120 := P.sandbox_weight m
theorem sandbox_trips (m : P.Sandbox) : m.trips=60 := P.sandbox_trips m
theorem sandbox_drinks (m : P.Sandbox) : m.drinks=15 := P.sandbox_drinks m
theorem sandbox_ounces (m : P.Sandbox) : m.ounces=45 := P.sandbox_ounces m
theorem sandbox_bottles (m : P.Sandbox) : m.bottles=3 := P.sandbox_bottles m
theorem sandbox_cost (m : P.Sandbox) : m.cost=6 := P.sandbox_cost m
theorem sandbox_solution (m : P.Sandbox) : m.change=4 := P.sandbox_solution m
theorem pta_supplies (m : P.PTA) : m.supplies=100 := P.pta_supplies m
theorem pta_after_supplies (m : P.PTA) : m.after=300 := P.pta_after_supplies m
theorem pta_food (m : P.PTA) : m.food=150 := P.pta_food m
theorem pta_solution (m : P.PTA) : m.left=150 := P.pta_solution m
theorem books_brad_last (m : P.Books) : m.bradLast=18 := P.books_brad_last m
theorem books_william_now (m : P.Books) : m.williamNow=16 := P.books_william_now m
theorem books_brad_total (m : P.Books) : m.bradTotal=26 := P.books_brad_total m
theorem books_william_total (m : P.Books) : m.williamTotal=22 := P.books_william_total m
theorem books_solution (m : P.Books) : m.difference=4 := P.books_solution m
theorem age_conventional (m:P.AgeConventional):m.now=44:=P.age_conventional m
theorem age_literal (m:P.AgeLiteral):m.now=56:=P.age_literal m
theorem age_solution (c:P.AgeConventional) (l:P.AgeLiteral):c.now=44 ∧ l.now=56 ∧ c.now≠l.now:=P.age_solution c l
theorem travel_train (m : P.Travel) : m.train=20 := P.travel_train m
theorem travel_before_bike (m : P.Travel) : m.before=30 := P.travel_before_bike m
theorem travel_solution (m : P.Travel) : m.total=38 := P.travel_solution m
theorem coins_per_teller (m : P.Coins) : m.each=250 := P.coins_per_teller m
theorem coins_solution (m : P.Coins) : m.total=1000 := P.coins_solution m
theorem purchase_total (m : P.Purchase) : m.total=700 := P.purchase_total m
theorem purchase_solution (m : P.Purchase) : m.paid=625 := P.purchase_solution m
theorem forum_answers_hour (m : P.Forum) : m.answersHour=9 := P.forum_answers_hour m
theorem forum_questions_day (m : P.Forum) : m.questionsDay=72 := P.forum_questions_day m
theorem forum_questions_total (m : P.Forum) : m.questionsTotal=14400 := P.forum_questions_total m
theorem forum_answers_day (m : P.Forum) : m.answersDay=216 := P.forum_answers_day m
theorem forum_answers_total (m : P.Forum) : m.answersTotal=43200 := P.forum_answers_total m
theorem forum_solution (m : P.Forum) : m.total=57600 := P.forum_solution m

end LemmaWeave.Tests.GSM8KSprint0924A07

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.trip_solution to "work/gsm8k-sprint117-trip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.kittens_solution to "work/gsm8k-sprint117-kittens-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.pills_solution to "work/gsm8k-sprint117-pills-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.relay_solution to "work/gsm8k-sprint117-relay-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.hair_solution to "work/gsm8k-sprint117-hair-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.marbles_solution to "work/gsm8k-sprint117-marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.pizza_solution to "work/gsm8k-sprint117-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.sandbox_solution to "work/gsm8k-sprint117-sandbox-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.pta_solution to "work/gsm8k-sprint117-pta-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.books_solution to "work/gsm8k-sprint117-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.age_solution to "work/gsm8k-sprint117-age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.travel_solution to "work/gsm8k-sprint117-travel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.coins_solution to "work/gsm8k-sprint117-coins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.purchase_solution to "work/gsm8k-sprint117-purchase-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A07.forum_solution to "work/gsm8k-sprint117-forum-graph.json"
