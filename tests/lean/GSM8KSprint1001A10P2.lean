import LemmaWeave.Problems.GSM8K.Sprint1001A10P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A10P2

#lw_dependencies plates_limit
#lw_dependencies plates_remaining
#lw_dependencies plates_removed to "work/gsm8k-sprint258-plates-graph.json"
#print axioms plates_removed
#lw_dependencies dance_relation
#lw_dependencies dance_jason to "work/gsm8k-sprint258-dance-graph.json"
#print axioms dance_jason
#lw_dependencies records_total
#lw_dependencies records_days to "work/gsm8k-sprint258-records-graph.json"
#print axioms records_days
#lw_dependencies animals_counts
#lw_dependencies animals_sold
#lw_dependencies animals_incomes
#lw_dependencies animals_total_income
#lw_dependencies animals_reference_8600_is_wrong to "work/gsm8k-sprint258-animals-graph.json"
#print axioms animals_reference_8600_is_wrong
#lw_dependencies scores_reduction
#lw_dependencies scores_marco
#lw_dependencies scores_margaret to "work/gsm8k-sprint258-scores-graph.json"
#print axioms scores_margaret
