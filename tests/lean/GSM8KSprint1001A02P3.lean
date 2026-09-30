import LemmaWeave.Problems.GSM8K.Sprint1001A02P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A02P3

#lw_dependencies bread_after_day1
#lw_dependencies bread_after_day2
#lw_dependencies bread_after_day3 to "work/gsm8k-sprint238-bread-graph.json"
#lw_dependencies house_profit
#lw_dependencies house_purchase
#lw_dependencies house_loss
#lw_dependencies house_sale to "work/gsm8k-sprint238-house-sale-graph.json"
#lw_dependencies popcorn_first
#lw_dependencies popcorn_second
#lw_dependencies popcorn_third
#lw_dependencies popcorn_average
#lw_dependencies popcorn_weighted_rate_not_82 to "work/gsm8k-sprint238-popcorn-graph.json"
#lw_dependencies will_shelby
#lw_dependencies will_remainder
#lw_dependencies will_each_other to "work/gsm8k-sprint238-will-graph.json"
#lw_dependencies novel_after_saturday
#lw_dependencies novel_remaining to "work/gsm8k-sprint238-novel-graph.json"
#print axioms bread_after_day3
#print axioms house_sale
#print axioms popcorn_average
#print axioms popcorn_weighted_rate_not_82
#print axioms will_each_other
#print axioms novel_remaining
