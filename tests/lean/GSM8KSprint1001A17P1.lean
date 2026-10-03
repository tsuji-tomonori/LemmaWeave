import LemmaWeave.Problems.GSM8K.Sprint1001A17P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A17P1

#check strong_coffee_rate
#check weak_coffee_amount
#check strong_coffee_amount
#lw_dependencies coffee_each_total to "work/gsm8k-sprint278-coffee-amount-readings-graph.json"
#lw_dependencies coffee_split_total to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A17P1.coffee_split_total-graph.json"
#lw_dependencies coffee_readings_differ to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A17P1.coffee_readings_differ-graph.json"
#print axioms coffee_each_total
#check twenty_bill_amount
#check ten_bill_count
#check five_bill_amount
#check five_bill_count
#lw_dependencies bill_count to "work/gsm8k-sprint278-bill-count-graph.json"
#print axioms bill_count
#check doubled_whiskers
#lw_dependencies catman_whiskers to "work/gsm8k-sprint278-catman-whiskers-graph.json"
#print axioms catman_whiskers
#check mop_total_area
#lw_dependencies mop_minutes to "work/gsm8k-sprint278-mop-minutes-graph.json"
#print axioms mop_minutes
#check brother_goals_per_game
#check brother_games
#check brother_goal_total
#check louie_goal_total
#lw_dependencies hockey_combined_goals to "work/gsm8k-sprint278-hockey-combined-goals-graph.json"
#print axioms hockey_combined_goals
