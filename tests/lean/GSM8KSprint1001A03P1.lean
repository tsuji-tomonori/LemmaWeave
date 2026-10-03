import LemmaWeave.Problems.GSM8K.Sprint1001A03P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A03P1

#check roses_remaining
#lw_dependencies roses_each to "work/gsm8k-sprint239-roses-graph.json"
#check pancakes_needed
#lw_dependencies pancakes_additional to "work/gsm8k-sprint239-pancakes-graph.json"
#check hill_up_time
#check hill_down_time
#lw_dependencies hill_total_time to "work/gsm8k-sprint239-hill-graph.json"
#check insurance_total
#lw_dependencies insurance_owed to "work/gsm8k-sprint239-insurance-graph.json"
#check leila_total
#check leila_after_sweater
#check leila_jewelry
#lw_dependencies leila_difference to "work/gsm8k-sprint239-leila-graph.json"
#print axioms roses_each
#print axioms pancakes_additional
#print axioms hill_total_time
#print axioms insurance_owed
#print axioms leila_difference
