import LemmaWeave.Problems.GSM8K.Sprint0930A19P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A19P3

#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.geckos_sale_price
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P3.geckos_profit to "work/gsm8k-sprint229-geckos-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.bake_cakes
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.bake_cupcakes
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.bake_cake_revenue
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P3.bake_total_revenue to "work/gsm8k-sprint229-bake-sale-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.pay_gross
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.pay_deduction
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P3.pay_net to "work/gsm8k-sprint229-pay-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.shopping_milk
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.shopping_detergent
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.shopping_bananas
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.shopping_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P3.shopping_left to "work/gsm8k-sprint229-shopping-graph.json"
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.meals_regular_individual
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.meals_regular_saving
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.meals_kid_individual
#check LemmaWeave.Problems.GSM8K.Sprint0930A19P3.meals_kid_saving
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A19P3.meals_total_saving to "work/gsm8k-sprint229-meals-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P3.geckos_profit
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P3.bake_total_revenue
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P3.pay_net
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P3.shopping_left
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A19P3.meals_total_saving
