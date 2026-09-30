import LemmaWeave.Problems.GSM8K.Sprint0930A15P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A15P1

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.chapters_progression_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.chapters_first to "work/gsm8k-sprint218-chapters-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P1.chapters_first

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.boxer_wins_before_loss
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.boxer_final_wins
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.boxer_difference to "work/gsm8k-sprint218-boxer-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P1.boxer_difference

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.egg_hunt_total_eggs
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.egg_hunt_people
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.egg_hunt_per_person to "work/gsm8k-sprint218-egg_hunt-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P1.egg_hunt_per_person

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.insects_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.insects_per_group to "work/gsm8k-sprint218-insects-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P1.insects_per_group

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.varsity_girls
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.varsity_boys
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.varsity_joined
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P1.varsity_not_joined to "work/gsm8k-sprint218-varsity-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P1.varsity_not_joined
