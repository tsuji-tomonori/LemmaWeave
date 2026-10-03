import LemmaWeave.Problems.GSM8K.Sprint1002A01P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A01P2

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A01P2.savings_remaining to "work/gsm8k-sprint290-savings-graph.json"
#print axioms savings_remaining
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A01P2.pool_safe_jump_count to "work/gsm8k-sprint290-pool-jumps-graph.json"
#print axioms pool_safe_jump_count
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A01P2.first_round_knockouts to "work/gsm8k-sprint290-first-round-knockouts-graph.json"
#print axioms first_round_knockouts
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A01P2.bread_slice_cost to "work/gsm8k-sprint290-bread-slice-cost-graph.json"
#print axioms bread_slice_cost
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A01P2.lettuce_plants_to_grow to "work/gsm8k-sprint290-lettuce-plants-graph.json"
#print axioms lettuce_plants_to_grow
