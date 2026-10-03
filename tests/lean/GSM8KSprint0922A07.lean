import LemmaWeave.Problems.GSM8K.Sprint0922A07Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A07
open LemmaWeave.Problems.GSM8K.Sprint0922A07

theorem toilet_added_increase (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.ToiletPaper) : m.addedIncrease=21000 := LemmaWeave.Problems.GSM8K.Sprint0922A07.toilet_added_increase m
theorem toilet_added_total (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.ToiletPaper) : m.addedDaily=28000 := LemmaWeave.Problems.GSM8K.Sprint0922A07.toilet_added_total m
theorem toilet_solution_additive (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.ToiletPaper) : m.additiveTotal=868000 := LemmaWeave.Problems.GSM8K.Sprint0922A07.toilet_solution_additive m
theorem toilet_solution_multiplicative (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.ToiletPaper) : m.multiplicativeTotal=651000 := LemmaWeave.Problems.GSM8K.Sprint0922A07.toilet_solution_multiplicative m
theorem toilet_solution_both (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.ToiletPaper) : m.additiveTotal=868000 ∧ m.multiplicativeTotal=651000 := LemmaWeave.Problems.GSM8K.Sprint0922A07.toilet_solution_both m
theorem stairs_flight_inches (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Stairs) : m.flightInches=96 := LemmaWeave.Problems.GSM8K.Sprint0922A07.stairs_flight_inches m
theorem stairs_net_flights (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Stairs) : m.netFlights=3 := LemmaWeave.Problems.GSM8K.Sprint0922A07.stairs_net_flights m
theorem stairs_total_inches (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Stairs) : m.totalInches=288 := LemmaWeave.Problems.GSM8K.Sprint0922A07.stairs_total_inches m
theorem stairs_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Stairs) : m.feet=24 := LemmaWeave.Problems.GSM8K.Sprint0922A07.stairs_solution m
theorem dogs_per_minute (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Dogs) : m.perMinute=60 := LemmaWeave.Problems.GSM8K.Sprint0922A07.dogs_per_minute m
theorem dogs_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Dogs) : m.total=600 := LemmaWeave.Problems.GSM8K.Sprint0922A07.dogs_solution m
theorem caps_janine (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Caps) : m.janine=6 := LemmaWeave.Problems.GSM8K.Sprint0922A07.caps_janine m
theorem caps_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Caps) : m.sammy=8 := LemmaWeave.Problems.GSM8K.Sprint0922A07.caps_solution m
theorem walking_troy_daily (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Walking) : m.troyDaily=150 := LemmaWeave.Problems.GSM8K.Sprint0922A07.walking_troy_daily m
theorem walking_emily_daily (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Walking) : m.emilyDaily=196 := LemmaWeave.Problems.GSM8K.Sprint0922A07.walking_emily_daily m
theorem walking_daily_difference (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Walking) : m.dailyDifference=46 := LemmaWeave.Problems.GSM8K.Sprint0922A07.walking_daily_difference m
theorem walking_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Walking) : m.totalDifference=230 := LemmaWeave.Problems.GSM8K.Sprint0922A07.walking_solution m
theorem bags_per_bag (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.MarbleBags) : m.perBag=7 := LemmaWeave.Problems.GSM8K.Sprint0922A07.bags_per_bag m
theorem bags_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.MarbleBags) : m.left=21 := LemmaWeave.Problems.GSM8K.Sprint0922A07.bags_solution m
theorem jogging_regular (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Jogging) : m.regular=90 := LemmaWeave.Problems.GSM8K.Sprint0922A07.jogging_regular m
theorem jogging_tuesday (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Jogging) : m.tuesday=35 := LemmaWeave.Problems.GSM8K.Sprint0922A07.jogging_tuesday m
theorem jogging_friday (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Jogging) : m.friday=55 := LemmaWeave.Problems.GSM8K.Sprint0922A07.jogging_friday m
theorem jogging_total_minutes (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Jogging) : m.totalMinutes=180 := LemmaWeave.Problems.GSM8K.Sprint0922A07.jogging_total_minutes m
theorem jogging_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Jogging) : m.hours=3 := LemmaWeave.Problems.GSM8K.Sprint0922A07.jogging_solution m
theorem bills_tens_relation (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Bills) : m.tens=2*m.twenties := LemmaWeave.Problems.GSM8K.Sprint0922A07.bills_tens_relation m
theorem bills_value_equation (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Bills) : 20*m.twenties+10*m.tens=120 := LemmaWeave.Problems.GSM8K.Sprint0922A07.bills_value_equation m
theorem bills_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Bills) : m.twenties=3 := LemmaWeave.Problems.GSM8K.Sprint0922A07.bills_solution m
theorem debt_returned (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Debt) : m.returned=60 := LemmaWeave.Problems.GSM8K.Sprint0922A07.debt_returned m
theorem debt_current (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Debt) : m.currentOwed=60 := LemmaWeave.Problems.GSM8K.Sprint0922A07.debt_current m
theorem debt_future_payment (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Debt) : m.futurePayment=40 := LemmaWeave.Problems.GSM8K.Sprint0922A07.debt_future_payment m
theorem debt_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Debt) : m.futureOwed=20 := LemmaWeave.Problems.GSM8K.Sprint0922A07.debt_solution m
theorem books_total (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Books) : m.total=48 := LemmaWeave.Problems.GSM8K.Sprint0922A07.books_total m
theorem books_first_two (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Books) : m.firstTwo=31 := LemmaWeave.Problems.GSM8K.Sprint0922A07.books_first_two m
theorem books_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Books) : m.march=17 := LemmaWeave.Problems.GSM8K.Sprint0922A07.books_solution m
theorem television_total (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Television) : m.total=30 := LemmaWeave.Problems.GSM8K.Sprint0922A07.television_total m
theorem television_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Television) : m.average=10 := LemmaWeave.Problems.GSM8K.Sprint0922A07.television_solution m
theorem trade_blue (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.MarbleTrade) : m.blue=4 := LemmaWeave.Problems.GSM8K.Sprint0922A07.trade_blue m
theorem trade_red_percent (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.MarbleTrade) : m.redPercent=60 := LemmaWeave.Problems.GSM8K.Sprint0922A07.trade_red_percent m
theorem trade_red (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.MarbleTrade) : m.red=6 := LemmaWeave.Problems.GSM8K.Sprint0922A07.trade_red m
theorem trade_traded (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.MarbleTrade) : m.traded=5 := LemmaWeave.Problems.GSM8K.Sprint0922A07.trade_traded m
theorem trade_new_blue (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.MarbleTrade) : m.newBlue=10 := LemmaWeave.Problems.GSM8K.Sprint0922A07.trade_new_blue m
theorem trade_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.MarbleTrade) : m.final=15 := LemmaWeave.Problems.GSM8K.Sprint0922A07.trade_solution m
theorem bridge_percent : 100-15=85 := LemmaWeave.Problems.GSM8K.Sprint0922A07.bridge_percent
theorem bridge_megan (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Bridge) : m.megan=40 := LemmaWeave.Problems.GSM8K.Sprint0922A07.bridge_megan m
theorem bridge_mike (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Bridge) : m.mike=45 := LemmaWeave.Problems.GSM8K.Sprint0922A07.bridge_mike m
theorem bridge_total (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Bridge) : m.total=119 := LemmaWeave.Problems.GSM8K.Sprint0922A07.bridge_total m
theorem bridge_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Bridge) : m.excess=19 := LemmaWeave.Problems.GSM8K.Sprint0922A07.bridge_solution m
theorem hunting_months (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Hunting) : m.months=3 := LemmaWeave.Problems.GSM8K.Sprint0922A07.hunting_months m
theorem hunting_trips (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Hunting) : m.trips=18 := LemmaWeave.Problems.GSM8K.Sprint0922A07.hunting_trips m
theorem hunting_deer (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Hunting) : m.deer=36 := LemmaWeave.Problems.GSM8K.Sprint0922A07.hunting_deer m
theorem hunting_total_weight (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Hunting) : m.totalWeight=21600 := LemmaWeave.Problems.GSM8K.Sprint0922A07.hunting_total_weight m
theorem hunting_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Hunting) : m.kept=10800 := LemmaWeave.Problems.GSM8K.Sprint0922A07.hunting_solution m
theorem racket_other (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Racket) : m.other=450 := LemmaWeave.Problems.GSM8K.Sprint0922A07.racket_other m
theorem racket_solution (m:LemmaWeave.Problems.GSM8K.Sprint0922A07.Racket) : m.racket=300 := LemmaWeave.Problems.GSM8K.Sprint0922A07.racket_solution m

end LemmaWeave.Tests.GSM8KSprint0922A07

#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.bills_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.books_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.bridge_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.caps_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.debt_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.dogs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.hunting_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.jogging_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.bags_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.trade_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.racket_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.stairs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.television_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.toilet_solution_both
#print axioms LemmaWeave.Tests.GSM8KSprint0922A07.walking_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.bills_solution to "work/gsm8k-sprint79-bills-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.books_solution to "work/gsm8k-sprint79-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.bridge_solution to "work/gsm8k-sprint79-bridge-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.caps_solution to "work/gsm8k-sprint79-caps-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.debt_solution to "work/gsm8k-sprint79-debt-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.dogs_solution to "work/gsm8k-sprint79-dogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.hunting_solution to "work/gsm8k-sprint79-hunting-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.jogging_solution to "work/gsm8k-sprint79-jogging-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.bags_solution to "work/gsm8k-sprint79-marble_bags-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.trade_solution to "work/gsm8k-sprint79-marble_trade-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.racket_solution to "work/gsm8k-sprint79-racket-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.stairs_solution to "work/gsm8k-sprint79-stairs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.television_solution to "work/gsm8k-sprint79-television-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.toilet_solution_both to "work/gsm8k-sprint79-toilet_paper-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A07.walking_solution to "work/gsm8k-sprint79-walking-graph.json"
