import LemmaWeave.Problems.GSM8K.Sprint1001A04P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A04P3

#check pie_price_cost
#check pie_price_revenue
#check pie_price_total_pies
#lw_dependencies pie_price_each to "work/gsm8k-sprint247-pie-price-graph.json"
#print axioms pie_price_each
#check curtain_height_inches
#lw_dependencies curtain_total_inches to "work/gsm8k-sprint247-curtain-graph.json"
#print axioms curtain_total_inches
#check cavities_given
#check cavities_bought
#check cavities_total_canes
#check cavities_count
#lw_dependencies cavities_source_terminal_inconsistent to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A04P3.cavities_source_terminal_inconsistent-graph.json"
#lw_dependencies cavities_answer to "work/gsm8k-sprint247-cavities-graph.json"
#print axioms cavities_answer
#check ribbon_used
#check ribbon_left_half_meters
#lw_dependencies ribbon_left_meters to "work/gsm8k-sprint247-ribbon-graph.json"
#print axioms ribbon_left_meters
#check brush_carmen_inches
#check brush_half_centimeters
#lw_dependencies brush_centimeters to "work/gsm8k-sprint247-brush-graph.json"
#print axioms brush_centimeters
