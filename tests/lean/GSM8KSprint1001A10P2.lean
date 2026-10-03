import LemmaWeave.Problems.GSM8K.Sprint1001A10P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A10P2

#check plates_limit
#check plates_remaining
#lw_dependencies plates_removed to "work/gsm8k-sprint258-plates-graph.json"
#print axioms plates_removed
#check dance_relation
#lw_dependencies dance_jason to "work/gsm8k-sprint258-dance-graph.json"
#print axioms dance_jason
#check records_total
#lw_dependencies records_days to "work/gsm8k-sprint258-records-graph.json"
#print axioms records_days
#lw_dependencies animals_counts to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A10P2.animals_counts-graph.json"
#lw_dependencies animals_sold to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A10P2.animals_sold-graph.json"
#lw_dependencies animals_incomes to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A10P2.animals_incomes-graph.json"
#lw_dependencies animals_total_income to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A10P2.animals_total_income-graph.json"
#lw_dependencies animals_reference_8600_is_wrong to "work/gsm8k-sprint258-animals-graph.json"
#print axioms animals_reference_8600_is_wrong
#check scores_reduction
#check scores_marco
#lw_dependencies scores_margaret to "work/gsm8k-sprint258-scores-graph.json"
#print axioms scores_margaret
