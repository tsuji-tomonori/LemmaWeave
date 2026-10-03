import LemmaWeave.Problems.GSM8K.Sprint1001A19P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A19P1

#check jog_minutes
#check jog_calories
#lw_dependencies net_calories to "work/gsm8k-sprint284-net-calories-graph.json"
#print axioms net_calories
#check victory_savings
#lw_dependencies holiday_total to "work/gsm8k-sprint284-holiday-total-graph.json"
#print axioms holiday_total
#check female_students
#check female_brunettes
#lw_dependencies short_female_brunettes to "work/gsm8k-sprint284-short-female-brunettes-graph.json"
#print axioms short_female_brunettes
#check first_pair_weight
#check second_pair_weight
#check third_pair_weight
#lw_dependencies dumbbell_total_weight to "work/gsm8k-sprint284-dumbbell-total-weight-graph.json"
#print axioms dumbbell_total_weight
#check arm_tattoos
#check leg_tattoos
#check jason_tattoos
#lw_dependencies adam_tattoos to "work/gsm8k-sprint284-adam-tattoos-graph.json"
#print axioms adam_tattoos
