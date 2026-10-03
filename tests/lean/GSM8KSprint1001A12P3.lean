import LemmaWeave.Problems.GSM8K.Sprint1001A12P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A12P3

#check stamp_red_revenue
#check stamp_white_revenue
#check stamp_difference_cents
#lw_dependencies stamp_difference_dollars to "work/gsm8k-sprint265-stamp-revenue-graph.json"
#print axioms stamp_difference_dollars
#check theatre_adults
#check theatre_adult_revenue
#check theatre_child_revenue
#lw_dependencies theatre_total to "work/gsm8k-sprint265-theatre-revenue-graph.json"
#print axioms theatre_total
#check strawberry_individual
#check strawberry_pickers
#lw_dependencies strawberry_total to "work/gsm8k-sprint265-strawberries-graph.json"
#print axioms strawberry_total
#check berry_total
#check berry_fresh
#check berry_kept
#lw_dependencies berry_sold to "work/gsm8k-sprint265-berries-graph.json"
#print axioms berry_sold
#check melon_one_and_three
#check melon_two_melons
#lw_dependencies melon_two_customers to "work/gsm8k-sprint265-watermelons-graph.json"
#print axioms melon_two_customers
