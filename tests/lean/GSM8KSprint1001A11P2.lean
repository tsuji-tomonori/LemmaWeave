import LemmaWeave.Problems.GSM8K.Sprint1001A11P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A11P2

#lw_dependencies savings_fraction_spending
#lw_dependencies savings_original to "work/gsm8k-sprint261-savings-graph.json"
#print axioms savings_original
#lw_dependencies stuffed_barbara_revenue
#lw_dependencies stuffed_trish_revenue
#lw_dependencies stuffed_total_revenue to "work/gsm8k-sprint261-stuffed-graph.json"
#print axioms stuffed_total_revenue
#lw_dependencies songs_disjoint_example
#lw_dependencies songs_nested_example
#lw_dependencies songs_not_unique to "work/gsm8k-sprint261-songs-graph.json"
#print axioms songs_not_unique
#lw_dependencies house_relation
#lw_dependencies house_nada to "work/gsm8k-sprint261-house-graph.json"
#print axioms house_nada
#lw_dependencies soda_after_one
#lw_dependencies soda_after_two
#lw_dependencies soda_after_three
#lw_dependencies soda_first_reaches_six to "work/gsm8k-sprint261-soda-graph.json"
#print axioms soda_first_reaches_six
