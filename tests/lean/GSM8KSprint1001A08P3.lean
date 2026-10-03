import LemmaWeave.Problems.GSM8K.Sprint1001A08P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A08P3

#lw_dependencies test_first_correct
#lw_dependencies test_second_correct
#lw_dependencies test_total_correct to "work/gsm8k-sprint256-test-graph.json"
#print axioms test_total_correct
#lw_dependencies coaster_total
#lw_dependencies coaster_first_four
#lw_dependencies coaster_fifth to "work/gsm8k-sprint256-coaster-graph.json"
#print axioms coaster_fifth
#lw_dependencies car_segment_times
#lw_dependencies car_total_half_hours
#lw_dependencies car_total_hours to "work/gsm8k-sprint256-car-push-graph.json"
#print axioms car_total_hours
#lw_dependencies boots_spent_and_left
#lw_dependencies boots_pair_costs
#lw_dependencies boots_shortfall
#lw_dependencies boots_each_adds to "work/gsm8k-sprint256-boots-graph.json"
#print axioms boots_each_adds
#lw_dependencies spokes_wheels
#lw_dependencies spokes_total to "work/gsm8k-sprint256-spokes-graph.json"
#print axioms spokes_total
