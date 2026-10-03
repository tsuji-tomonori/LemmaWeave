import LemmaWeave.Problems.GSM8K.Sprint1001A01P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A01P3

#lw_dependencies mothers_roses_this_year
#lw_dependencies mothers_roses_target
#lw_dependencies mothers_roses_needed
#lw_dependencies mothers_roses_spend to "work/gsm8k-sprint244-mothers-roses-graph.json"
#print axioms mothers_roses_spend
#lw_dependencies pens_julia
#lw_dependencies pens_dorothy
#lw_dependencies pens_total
#lw_dependencies pens_total_cost to "work/gsm8k-sprint244-pens-graph.json"
#print axioms pens_total_cost
#lw_dependencies shuffleboard_dave
#lw_dependencies shuffleboard_ken
#lw_dependencies shuffleboard_total to "work/gsm8k-sprint244-shuffleboard-graph.json"
#print axioms shuffleboard_total
#lw_dependencies patio_chairs_total
#lw_dependencies patio_each_chair to "work/gsm8k-sprint244-patio-graph.json"
#print axioms patio_each_chair
#lw_dependencies medication_visits
#lw_dependencies medication_doctor_cost
#lw_dependencies medication_daily_retail
#lw_dependencies medication_daily_patient
#lw_dependencies medication_yearly_cost
#lw_dependencies medication_total to "work/gsm8k-sprint244-medication-graph.json"
#print axioms medication_total
