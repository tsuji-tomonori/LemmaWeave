import LemmaWeave.Problems.GSM8K.Sprint1001A04P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A04P2

#check sandwich_first_day
#check sandwich_second_day
#lw_dependencies sandwich_left to "work/gsm8k-sprint246-sandwich-graph.json"
#print axioms sandwich_left
#check bus_after_first
#check bus_after_off
#lw_dependencies bus_final to "work/gsm8k-sprint246-bus-graph.json"
#print axioms bus_final
#check sausage_monday_remaining
#check sausage_tuesday_remaining
#check sausage_friday_eaten
#lw_dependencies sausage_left to "work/gsm8k-sprint246-sausages-graph.json"
#print axioms sausage_left
#check brother_gift
#check brother_before_candy
#lw_dependencies brother_initial to "work/gsm8k-sprint246-brother-money-graph.json"
#print axioms brother_initial
#check coffee_weekly
#check coffee_yearly
#lw_dependencies coffee_savings to "work/gsm8k-sprint246-coffee-graph.json"
#print axioms coffee_savings
