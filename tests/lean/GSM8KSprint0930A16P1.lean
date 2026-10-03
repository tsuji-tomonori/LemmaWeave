import LemmaWeave.Problems.GSM8K.Sprint0930A16P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A16P1

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.bark_terrier
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.bark_poodle to "work/gsm8k-sprint221-bark-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P1.bark_poodle

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.milk_small_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.milk_small_liters
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.milk_total_liters to "work/gsm8k-sprint221-milk-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P1.milk_total_liters

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.suitcase_perfume_ounces
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.suitcase_soap_ounces
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.suitcase_jam_ounces
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.suitcase_other_ounces
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.suitcase_other_pounds
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.suitcase_total to "work/gsm8k-sprint221-suitcase-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P1.suitcase_total

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.ram_increase
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.ram_raised_price
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.ram_decrease
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.ram_current_price to "work/gsm8k-sprint221-ram-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P1.ram_current_price

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.pizza_cheese_paid
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.pizza_cheese_cost
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.pizza_meat_paid
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.pizza_meat_cost
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A16P1.pizza_total_cost to "work/gsm8k-sprint221-pizza-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A16P1.pizza_total_cost
