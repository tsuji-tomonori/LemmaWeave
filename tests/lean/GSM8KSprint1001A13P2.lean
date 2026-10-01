import LemmaWeave.Problems.GSM8K.Sprint1001A13P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A13P2

#lw_dependencies gym_squat_loss
#lw_dependencies gym_squat_new
#lw_dependencies gym_dead_new
#lw_dependencies gym_total to "work/gsm8k-sprint267-gym-total-graph.json"
#print axioms gym_total
#lw_dependencies practice_combined
#lw_dependencies practice_lifting to "work/gsm8k-sprint267-practice-graph.json"
#print axioms practice_lifting
#lw_dependencies hen_total_dozen
#lw_dependencies hen_per_four_weeks
#lw_dependencies hen_per_week_dozen
#lw_dependencies hen_eggs_per_week to "work/gsm8k-sprint267-hens-graph.json"
#print axioms hen_eggs_per_week
#lw_dependencies quiz_kim
#lw_dependencies quiz_cherry to "work/gsm8k-sprint267-quiz-graph.json"
#print axioms quiz_cherry
#lw_dependencies bag_first_discount
#lw_dependencies bag_second_discount
#lw_dependencies bag_total_reduction to "work/gsm8k-sprint267-bag-discount-graph.json"
#print axioms bag_total_reduction
