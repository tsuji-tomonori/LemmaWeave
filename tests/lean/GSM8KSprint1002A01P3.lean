import LemmaWeave.Problems.GSM8K.Sprint1002A01P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A01P3

#lw_dependencies novel_pages
#lw_dependencies science_pages to "work/gsm8k-sprint290-science-pages-graph.json"
#print axioms science_pages
#lw_dependencies kj_stamps
#lw_dependencies cj_stamps
#lw_dependencies aj_stamps to "work/gsm8k-sprint290-aj-stamps-graph.json"
#print axioms aj_stamps
#lw_dependencies blue_fruits
#lw_dependencies red_fruits to "work/gsm8k-sprint290-fruit-basket-graph.json"
#print axioms red_fruits
#lw_dependencies ham_bread_cost
#lw_dependencies purchase_total_cost
#lw_dependencies ham_bread_half_total
#lw_dependencies ham_bread_percent to "work/gsm8k-sprint290-ham-bread-percent-graph.json"
#print axioms ham_bread_percent
#lw_dependencies patio_width
#lw_dependencies patio_length to "work/gsm8k-sprint290-patio-length-graph.json"
#print axioms patio_length
