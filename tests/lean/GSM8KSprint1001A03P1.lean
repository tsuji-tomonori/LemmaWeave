import LemmaWeave.Problems.GSM8K.Sprint1001A03P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A03P1

#lw_dependencies roses_remaining
#lw_dependencies roses_each to "work/gsm8k-sprint239-roses-graph.json"
#lw_dependencies pancakes_needed
#lw_dependencies pancakes_additional to "work/gsm8k-sprint239-pancakes-graph.json"
#lw_dependencies hill_up_time
#lw_dependencies hill_down_time
#lw_dependencies hill_total_time to "work/gsm8k-sprint239-hill-graph.json"
#lw_dependencies insurance_total
#lw_dependencies insurance_owed to "work/gsm8k-sprint239-insurance-graph.json"
#lw_dependencies leila_total
#lw_dependencies leila_after_sweater
#lw_dependencies leila_jewelry
#lw_dependencies leila_difference to "work/gsm8k-sprint239-leila-graph.json"
#print axioms roses_each
#print axioms pancakes_additional
#print axioms hill_total_time
#print axioms insurance_owed
#print axioms leila_difference
