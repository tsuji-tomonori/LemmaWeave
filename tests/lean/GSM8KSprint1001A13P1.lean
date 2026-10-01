import LemmaWeave.Problems.GSM8K.Sprint1001A13P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A13P1

#lw_dependencies chapter_sum_equation
#lw_dependencies chapter_first to "work/gsm8k-sprint266-chapters-graph.json"
#print axioms chapter_first
#lw_dependencies boxer_before_first_loss
#lw_dependencies boxer_wins
#lw_dependencies boxer_difference to "work/gsm8k-sprint266-boxer-graph.json"
#print axioms boxer_difference
#lw_dependencies egg_total
#lw_dependencies egg_people
#lw_dependencies egg_each to "work/gsm8k-sprint266-egg-hunt-graph.json"
#print axioms egg_each
#lw_dependencies insect_total
#lw_dependencies insect_each to "work/gsm8k-sprint266-insects-graph.json"
#print axioms insect_each
#lw_dependencies varsity_boys
#lw_dependencies varsity_joined
#lw_dependencies varsity_not_joined to "work/gsm8k-sprint266-varsity-graph.json"
#print axioms varsity_not_joined
