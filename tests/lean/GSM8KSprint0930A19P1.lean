import LemmaWeave.Problems.GSM8K.Sprint0930A19P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A19P1

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.race_distance
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.race_total_reward
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.race_average_reward to "work/gsm8k-sprint227-race-reward-graph.json"
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.balloons_total_packs
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.balloons_total_balloons
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.balloons_equal_share
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.balloons_floretta_left to "work/gsm8k-sprint227-balloons-graph.json"
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.runners_first_distance
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.runners_second_distance
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.runners_gap
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.runners_stop_time to "work/gsm8k-sprint227-runners-graph.json"
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.flour_after_use
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.flour_after_spill
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.flour_needed to "work/gsm8k-sprint227-flour-graph.json"
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.calories_burrito_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.calories_burrito_rate
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.calories_burger_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.calories_burger_rate
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P1.calories_extra_rate to "work/gsm8k-sprint227-calories-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P1.race_average_reward
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P1.balloons_floretta_left
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P1.runners_stop_time
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P1.flour_needed
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P1.calories_extra_rate
