import LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A13RecoveryP2

#check monday_texts
#check tuesday_texts
#lw_dependencies text_total to "work/gsm8k-sprint267-text-total-graph.json"
#print axioms text_total
#check saved_per_flush
#check daily_savings
#lw_dependencies toilet_savings to "work/gsm8k-sprint267-toilet-savings-graph.json"
#print axioms toilet_savings
#check corn_cost_per_ear
#check corn_profit_per_ear
#lw_dependencies corn_ears to "work/gsm8k-sprint267-corn-ears-graph.json"
#print axioms corn_ears
#check worm_days
#check worm_eaten
#check worm_available
#lw_dependencies worm_remaining to "work/gsm8k-sprint267-aquarium-worm-graph.json"
#print axioms worm_remaining
#check one_cake_part
#lw_dependencies pierre_cake to "work/gsm8k-sprint267-cake-grams-graph.json"
#print axioms pierre_cake
