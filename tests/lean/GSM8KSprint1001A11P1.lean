import LemmaWeave.Problems.GSM8K.Sprint1001A11P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A11P1

#lw_dependencies weekly_cases_second
#lw_dependencies weekly_cases_total to "work/gsm8k-sprint260-weekly-cases-graph.json"
#print axioms weekly_cases_total
#lw_dependencies pizza_daria
#lw_dependencies pizza_total to "work/gsm8k-sprint260-pizza-graph.json"
#print axioms pizza_total
#lw_dependencies jumping_sidney
#lw_dependencies jumping_brooke to "work/gsm8k-sprint260-jumping-graph.json"
#print axioms jumping_brooke
#lw_dependencies coins_spent_and_total
#lw_dependencies coins_nonquarter
#lw_dependencies coins_quarters to "work/gsm8k-sprint260-coins-graph.json"
#print axioms coins_quarters
#lw_dependencies prize_kept_fraction
#lw_dependencies prize_rica
#lw_dependencies prize_total to "work/gsm8k-sprint260-prize-graph.json"
#print axioms prize_total
