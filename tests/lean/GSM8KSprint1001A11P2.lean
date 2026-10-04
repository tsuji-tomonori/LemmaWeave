import LemmaWeave.Problems.GSM8K.Sprint1001A11P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A11P2

#check savings_fraction_spending
#lw_dependencies savings_original to "work/gsm8k-sprint261-savings-graph.json"
#print axioms savings_original
#check stuffed_barbara_revenue
#check stuffed_trish_revenue
#lw_dependencies stuffed_total_revenue to "work/gsm8k-sprint261-stuffed-graph.json"
#print axioms stuffed_total_revenue
#check songs_disjoint_example
#check songs_nested_example
#lw_dependencies songs_not_unique to "work/gsm8k-sprint261-songs-graph.json"
#print axioms songs_not_unique
#check house_relation
#lw_dependencies house_nada to "work/gsm8k-sprint261-house-graph.json"
#print axioms house_nada
#check soda_after_one
#check soda_after_two
#check soda_after_three
#lw_dependencies soda_first_reaches_six to "work/gsm8k-sprint261-soda-graph.json"
#print axioms soda_first_reaches_six
