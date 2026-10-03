import LemmaWeave.Problems.GSM8K.Sprint1001A01P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A01P3

#check mothers_roses_this_year
#check mothers_roses_target
#check mothers_roses_needed
#lw_dependencies mothers_roses_spend to "work/gsm8k-sprint244-mothers-roses-graph.json"
#print axioms mothers_roses_spend
#check pens_julia
#check pens_dorothy
#check pens_total
#lw_dependencies pens_total_cost to "work/gsm8k-sprint244-pens-graph.json"
#print axioms pens_total_cost
#check shuffleboard_dave
#check shuffleboard_ken
#lw_dependencies shuffleboard_total to "work/gsm8k-sprint244-shuffleboard-graph.json"
#print axioms shuffleboard_total
#check patio_chairs_total
#lw_dependencies patio_each_chair to "work/gsm8k-sprint244-patio-graph.json"
#print axioms patio_each_chair
#check medication_visits
#check medication_doctor_cost
#check medication_daily_retail
#check medication_daily_patient
#check medication_yearly_cost
#lw_dependencies medication_total to "work/gsm8k-sprint244-medication-graph.json"
#print axioms medication_total
