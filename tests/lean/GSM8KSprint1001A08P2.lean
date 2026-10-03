import LemmaWeave.Problems.GSM8K.Sprint1001A08P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A08P2

#check candies_shelly_original
#check candies_brought_if_shelly
#check candies_each_if_shelly
#check candies_after_if_shelly
#check candies_other_antecedent_example
#lw_dependencies candies_not_unique_without_antecedent to "work/gsm8k-sprint255-candies-graph.json"
#print axioms candies_after_if_shelly
#print axioms candies_not_unique_without_antecedent
#check school_allowed
#lw_dependencies school_more to "work/gsm8k-sprint255-school-graph.json"
#print axioms school_more
#check fruits_old_total
#check fruits_new_counts
#check fruits_new_total
#lw_dependencies fruits_total to "work/gsm8k-sprint255-fruits-graph.json"
#print axioms fruits_total
#check yarn_part
#lw_dependencies yarn_used to "work/gsm8k-sprint255-yarn-graph.json"
#print axioms yarn_used
#check garden_counts
#check garden_planted
#check garden_capacity
#lw_dependencies garden_remaining to "work/gsm8k-sprint255-garden-graph.json"
#print axioms garden_remaining
