import LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP2

#lw_dependencies monday_texts
#lw_dependencies tuesday_texts
#lw_dependencies text_total to "work/gsm8k-sprint267-text-total-graph.json"
#print axioms text_total
#lw_dependencies saved_per_flush
#lw_dependencies daily_savings
#lw_dependencies toilet_savings to "work/gsm8k-sprint267-toilet-savings-graph.json"
#print axioms toilet_savings
#lw_dependencies corn_cost_per_ear
#lw_dependencies corn_profit_per_ear
#lw_dependencies corn_ears to "work/gsm8k-sprint267-corn-ears-graph.json"
#print axioms corn_ears
#lw_dependencies worm_days
#lw_dependencies worm_eaten
#lw_dependencies worm_available
#lw_dependencies worm_remaining to "work/gsm8k-sprint267-aquarium-worm-graph.json"
#print axioms worm_remaining
#lw_dependencies one_cake_part
#lw_dependencies pierre_cake to "work/gsm8k-sprint267-cake-grams-graph.json"
#print axioms pierre_cake
