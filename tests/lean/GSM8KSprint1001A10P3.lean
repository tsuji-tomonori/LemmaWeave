import LemmaWeave.Problems.GSM8K.Sprint1001A10P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A10P3

#lw_dependencies wheels_bicycles
#lw_dependencies wheels_tricycles
#lw_dependencies wheels_total to "work/gsm8k-sprint259-wheels-graph.json"
#print axioms wheels_total
#lw_dependencies mushrooms_fixed_spotted
#lw_dependencies mushrooms_range
#lw_dependencies mushrooms_zero_green_example
#lw_dependencies mushrooms_one_green_example
#lw_dependencies mushrooms_not_unique to "work/gsm8k-sprint259-mushrooms-graph.json"
#print axioms mushrooms_not_unique
#lw_dependencies dmv_called
#lw_dependencies dmv_total to "work/gsm8k-sprint259-dmv-graph.json"
#print axioms dmv_total
#lw_dependencies school_growth_equation
#lw_dependencies school_previous to "work/gsm8k-sprint259-school_growth-graph.json"
#print axioms school_previous
#lw_dependencies competition_individual
#lw_dependencies competition_team
#lw_dependencies competition_more to "work/gsm8k-sprint259-competition-graph.json"
#print axioms competition_more
