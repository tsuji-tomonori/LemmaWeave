import LemmaWeave.Problems.GSM8K.Sprint1001A18P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A18P3

#lw_dependencies student_remaining_total
#lw_dependencies student_contribution to "work/gsm8k-sprint283-student-contribution-graph.json"
#print axioms student_contribution
#lw_dependencies nuts_discounted_price
#lw_dependencies nuts_serving_count
#lw_dependencies nuts_cost_per_serving to "work/gsm8k-sprint283-nuts-serving-cost-graph.json"
#print axioms nuts_cost_per_serving
#lw_dependencies kitchen_wall_area
#lw_dependencies kitchen_coated_area
#lw_dependencies kitchen_paint_hours to "work/gsm8k-sprint283-paint-hours-graph.json"
#print axioms kitchen_paint_hours
#lw_dependencies ice_cream_bars_needed
#lw_dependencies ice_cream_boxes
#lw_dependencies ice_cream_total_cost
#lw_dependencies ice_cream_per_person to "work/gsm8k-sprint283-ice-cream-per-person-graph.json"
#print axioms ice_cream_per_person
#lw_dependencies comet_shopping_minutes
#lw_dependencies comet_snack_minutes
#lw_dependencies comet_total_minutes
#lw_dependencies comet_watching_nearest_percent to "work/gsm8k-sprint283-comet-percent-graph.json"
#print axioms comet_watching_nearest_percent
