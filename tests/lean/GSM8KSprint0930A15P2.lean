import LemmaWeave.Problems.GSM8K.Sprint0930A15P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A15P2

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.lifts_squat_loss
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.lifts_new_squat
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.lifts_new_deadlift
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.lifts_total to "work/gsm8k-sprint219-lifts-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P2.lifts_total

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.practice_other_minutes
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.practice_running_relation
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.practice_lifting_minutes to "work/gsm8k-sprint219-practice-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P2.practice_lifting_minutes

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.hens_dozens
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.hens_eggs
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.hens_per_week to "work/gsm8k-sprint219-hens-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P2.hens_per_week

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.quiz_kim
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.quiz_cherry to "work/gsm8k-sprint219-quiz-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P2.quiz_cherry

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.bag_first_reduction
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.bag_after_first
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.bag_second_reduction
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.bag_final_price
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A15P2.bag_total_reduction to "work/gsm8k-sprint219-bag-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A15P2.bag_total_reduction
