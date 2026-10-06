import LemmaWeave.Problems.GSM8K.Sprint1002A01P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A01P2

#lw_dependencies savings_total
#lw_dependencies savings_threshold_not_met
#lw_dependencies savings_bonus_zero
#lw_dependencies savings_spent
#lw_dependencies savings_remaining to "work/gsm8k-sprint290-savings-graph.json"
#print axioms savings_remaining
#lw_dependencies pool_capacity_ml
#lw_dependencies pool_threshold_ml
#lw_dependencies pool_allowed_loss_ml
#lw_dependencies pool_safe_jump_count to "work/gsm8k-sprint290-pool-jumps-graph.json"
#print axioms pool_safe_jump_count
#lw_dependencies knockout_count
#lw_dependencies first_round_knockouts to "work/gsm8k-sprint290-first-round-knockouts-graph.json"
#print axioms first_round_knockouts
#lw_dependencies bread_total_slices
#lw_dependencies bread_total_cost_dollars
#lw_dependencies bread_total_cost_cents
#lw_dependencies bread_slice_cost to "work/gsm8k-sprint290-bread-slice-cost-graph.json"
#print axioms bread_slice_cost
#lw_dependencies lettuce_surviving_plants
#lw_dependencies lettuce_plants_to_grow to "work/gsm8k-sprint290-lettuce-plants-graph.json"
#print axioms lettuce_plants_to_grow
