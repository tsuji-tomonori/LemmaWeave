import LemmaWeave.Problems.GSM8K.Sprint1002A01P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A01P1

#lw_dependencies museum_group_students
#lw_dependencies museum_group_minutes to "work/gsm8k-sprint290-museum-time-graph.json"
#print axioms museum_group_minutes
#lw_dependencies vinyl_capacity
#lw_dependencies vinyl_occupied_records
#lw_dependencies vinyl_total_ridges to "work/gsm8k-sprint290-vinyl-ridges-graph.json"
#print axioms vinyl_total_ridges
#lw_dependencies pool_drain_rate
#lw_dependencies pool_hose_rate
#lw_dependencies pool_drained_three_hours
#lw_dependencies pool_added_three_hours
#lw_dependencies pool_water_remaining to "work/gsm8k-sprint290-pool-water-graph.json"
#print axioms pool_water_remaining
#lw_dependencies pufferfish_count to "work/gsm8k-sprint290-pufferfish-graph.json"
#print axioms pufferfish_count
#lw_dependencies pens_week2
#lw_dependencies pens_week3
#lw_dependencies pens_week4
#lw_dependencies pens_difference to "work/gsm8k-sprint290-pen-difference-graph.json"
#print axioms pens_difference
