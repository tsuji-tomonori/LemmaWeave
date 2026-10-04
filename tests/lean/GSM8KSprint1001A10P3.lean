import LemmaWeave.Problems.GSM8K.Sprint1001A10P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A10P3

#check wheels_bicycles
#check wheels_tricycles
#lw_dependencies wheels_total to "work/gsm8k-sprint259-wheels-graph.json"
#print axioms wheels_total
#lw_dependencies mushrooms_fixed_spotted to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A10P3.mushrooms_fixed_spotted-graph.json"
#lw_dependencies mushrooms_range to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A10P3.mushrooms_range-graph.json"
#lw_dependencies mushrooms_zero_green_example to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A10P3.mushrooms_zero_green_example-graph.json"
#lw_dependencies mushrooms_one_green_example to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A10P3.mushrooms_one_green_example-graph.json"
#lw_dependencies mushrooms_not_unique to "work/gsm8k-sprint259-mushrooms-graph.json"
#print axioms mushrooms_not_unique
#check dmv_called
#lw_dependencies dmv_total to "work/gsm8k-sprint259-dmv-graph.json"
#print axioms dmv_total
#check school_growth_equation
#lw_dependencies school_previous to "work/gsm8k-sprint259-school_growth-graph.json"
#print axioms school_previous
#check competition_individual
#check competition_team
#lw_dependencies competition_more to "work/gsm8k-sprint259-competition-graph.json"
#print axioms competition_more
