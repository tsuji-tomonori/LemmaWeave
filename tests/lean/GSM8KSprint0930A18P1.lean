import LemmaWeave.Problems.GSM8K.Sprint0930A18P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A18P1

#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.temperature_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P1.temperature_average to "work/gsm8k-sprint224-temperature-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P1.temperature_average

#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.kittens_blue_total
#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.kittens_brown_total
#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.kittens_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P1.kittens_blue_percent to "work/gsm8k-sprint224-kittens-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P1.kittens_blue_percent

#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.stamps_first_page
#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.stamps_first_section
#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.stamps_remaining_pages
#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.stamps_remaining
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P1.stamps_total to "work/gsm8k-sprint224-stamps_album-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P1.stamps_total

#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.socks_red_cost
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P1.socks_blue_price to "work/gsm8k-sprint224-socks-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P1.socks_blue_price

#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.figures_ordinary_value
#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.figures_collection_value
#check LemmaWeave.Problems.GSM8K.Sprint0930A18P1.figures_discount_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P1.figures_earnings to "work/gsm8k-sprint224-figures-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P1.figures_earnings
