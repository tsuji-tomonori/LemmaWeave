import LemmaWeave.Problems.GSM8K.Sprint1001A08P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A08P2

#lw_dependencies candies_shelly_original
#lw_dependencies candies_brought_if_shelly
#lw_dependencies candies_each_if_shelly
#lw_dependencies candies_after_if_shelly
#lw_dependencies candies_other_antecedent_example
#lw_dependencies candies_not_unique_without_antecedent to "work/gsm8k-sprint255-candies-graph.json"
#print axioms candies_after_if_shelly
#print axioms candies_not_unique_without_antecedent
#lw_dependencies school_allowed
#lw_dependencies school_more to "work/gsm8k-sprint255-school-graph.json"
#print axioms school_more
#lw_dependencies fruits_old_total
#lw_dependencies fruits_new_counts
#lw_dependencies fruits_new_total
#lw_dependencies fruits_total to "work/gsm8k-sprint255-fruits-graph.json"
#print axioms fruits_total
#lw_dependencies yarn_part
#lw_dependencies yarn_used to "work/gsm8k-sprint255-yarn-graph.json"
#print axioms yarn_used
#lw_dependencies garden_counts
#lw_dependencies garden_planted
#lw_dependencies garden_capacity
#lw_dependencies garden_remaining to "work/gsm8k-sprint255-garden-graph.json"
#print axioms garden_remaining
