import LemmaWeave.Problems.GSM8K.Sprint1001A04P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A04P2

#lw_dependencies sandwich_first_day
#lw_dependencies sandwich_second_day
#lw_dependencies sandwich_left to "work/gsm8k-sprint246-sandwich-graph.json"
#print axioms sandwich_left
#lw_dependencies bus_after_first
#lw_dependencies bus_after_off
#lw_dependencies bus_final to "work/gsm8k-sprint246-bus-graph.json"
#print axioms bus_final
#lw_dependencies sausage_monday_remaining
#lw_dependencies sausage_tuesday_remaining
#lw_dependencies sausage_friday_eaten
#lw_dependencies sausage_left to "work/gsm8k-sprint246-sausages-graph.json"
#print axioms sausage_left
#lw_dependencies brother_gift
#lw_dependencies brother_before_candy
#lw_dependencies brother_initial to "work/gsm8k-sprint246-brother-money-graph.json"
#print axioms brother_initial
#lw_dependencies coffee_weekly
#lw_dependencies coffee_yearly
#lw_dependencies coffee_savings to "work/gsm8k-sprint246-coffee-graph.json"
#print axioms coffee_savings
