import LemmaWeave.Problems.GSM8K.Sprint1001A02P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A02P3

#check bread_after_day1
#check bread_after_day2
#lw_dependencies bread_after_day3 to "work/gsm8k-sprint238-bread-graph.json"
#check house_profit
#check house_purchase
#check house_loss
#lw_dependencies house_sale to "work/gsm8k-sprint238-house-sale-graph.json"
#check popcorn_first
#check popcorn_second
#check popcorn_third
#check popcorn_weighted_rate_not_82
#lw_dependencies popcorn_average to "work/gsm8k-sprint238-popcorn-graph.json"
#check will_shelby
#check will_remainder
#lw_dependencies will_each_other to "work/gsm8k-sprint238-will-graph.json"
#lw_dependencies novel_after_saturday to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A02P3.novel_after_saturday-graph.json"
#lw_dependencies novel_remaining to "work/gsm8k-sprint238-novel-graph.json"
#print axioms bread_after_day3
#print axioms house_sale
#print axioms popcorn_average
#print axioms popcorn_weighted_rate_not_82
#print axioms will_each_other
#print axioms novel_remaining
