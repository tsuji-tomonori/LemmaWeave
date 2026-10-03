import LemmaWeave.Problems.GSM8K.Sprint1001A06P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A06P3

#check debts_total_owed
#check debts_derek
#lw_dependencies debts_each to "work/gsm8k-sprint250-debts-graph.json"
#print axioms debts_each
#check students_blind
#lw_dependencies students_total to "work/gsm8k-sprint250-students-graph.json"
#print axioms students_total
#check grade_first_three
#check grade_desired_total
#lw_dependencies grade_minimum to "work/gsm8k-sprint250-grade-graph.json"
#print axioms grade_minimum
#check cattle_after_one
#lw_dependencies cattle_after_two to "work/gsm8k-sprint250-cattle-graph.json"
#print axioms cattle_after_two
#check pool_total_people
#check pool_people_in
#lw_dependencies pool_people_not_in to "work/gsm8k-sprint250-pool-graph.json"
#print axioms pool_people_not_in
