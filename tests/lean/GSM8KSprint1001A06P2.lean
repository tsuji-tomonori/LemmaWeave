import LemmaWeave.Problems.GSM8K.Sprint1001A06P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A06P2

#check texts_unintended_daily
#lw_dependencies texts_unintended_weekly to "work/gsm8k-sprint249-texts-graph.json"
#print axioms texts_unintended_weekly
#check labor_construction
#check labor_electrician
#check labor_plumber
#lw_dependencies labor_total to "work/gsm8k-sprint249-labor-graph.json"
#print axioms labor_total
#check television_weekly_minutes
#check television_yearly_minutes
#lw_dependencies television_yearly_hours to "work/gsm8k-sprint249-television-graph.json"
#print axioms television_yearly_hours
#check hotel_first_wing
#check hotel_second_wing
#lw_dependencies hotel_total to "work/gsm8k-sprint249-hotel-graph.json"
#print axioms hotel_total
#check pugs_work
#lw_dependencies pugs_minutes to "work/gsm8k-sprint249-pugs-graph.json"
#print axioms pugs_minutes
