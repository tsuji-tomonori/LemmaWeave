import LemmaWeave.Problems.GSM8K.Sprint1001A17P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A17P1

#lw_dependencies strong_coffee_rate
#lw_dependencies weak_coffee_amount
#lw_dependencies strong_coffee_amount
#lw_dependencies coffee_each_total to "work/gsm8k-sprint278-coffee-amount-readings-graph.json"
#lw_dependencies coffee_split_total
#lw_dependencies coffee_readings_differ
#print axioms coffee_each_total
#lw_dependencies twenty_bill_amount
#lw_dependencies ten_bill_count
#lw_dependencies five_bill_amount
#lw_dependencies five_bill_count
#lw_dependencies bill_count to "work/gsm8k-sprint278-bill-count-graph.json"
#print axioms bill_count
#lw_dependencies doubled_whiskers
#lw_dependencies catman_whiskers to "work/gsm8k-sprint278-catman-whiskers-graph.json"
#print axioms catman_whiskers
#lw_dependencies mop_total_area
#lw_dependencies mop_minutes to "work/gsm8k-sprint278-mop-minutes-graph.json"
#print axioms mop_minutes
#lw_dependencies brother_goals_per_game
#lw_dependencies brother_games
#lw_dependencies brother_goal_total
#lw_dependencies louie_goal_total
#lw_dependencies hockey_combined_goals to "work/gsm8k-sprint278-hockey-combined-goals-graph.json"
#print axioms hockey_combined_goals
