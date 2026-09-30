import LemmaWeave.Problems.GSM8K.Sprint1001A06P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A06P3

#lw_dependencies debts_total_owed
#lw_dependencies debts_derek
#lw_dependencies debts_each to "work/gsm8k-sprint250-debts-graph.json"
#print axioms debts_each
#lw_dependencies students_blind
#lw_dependencies students_total to "work/gsm8k-sprint250-students-graph.json"
#print axioms students_total
#lw_dependencies grade_first_three
#lw_dependencies grade_desired_total
#lw_dependencies grade_minimum to "work/gsm8k-sprint250-grade-graph.json"
#print axioms grade_minimum
#lw_dependencies cattle_after_one
#lw_dependencies cattle_after_two to "work/gsm8k-sprint250-cattle-graph.json"
#print axioms cattle_after_two
#lw_dependencies pool_total_people
#lw_dependencies pool_people_in
#lw_dependencies pool_people_not_in to "work/gsm8k-sprint250-pool-graph.json"
#print axioms pool_people_not_in
