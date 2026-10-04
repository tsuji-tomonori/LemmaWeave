import LemmaWeave.Problems.GSM8K.Sprint1001A08P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A08P3

#check test_first_correct
#check test_second_correct
#lw_dependencies test_total_correct to "work/gsm8k-sprint256-test-graph.json"
#print axioms test_total_correct
#check coaster_total
#check coaster_first_four
#lw_dependencies coaster_fifth to "work/gsm8k-sprint256-coaster-graph.json"
#print axioms coaster_fifth
#check car_segment_times
#check car_total_half_hours
#lw_dependencies car_total_hours to "work/gsm8k-sprint256-car-push-graph.json"
#print axioms car_total_hours
#check boots_spent_and_left
#check boots_pair_costs
#check boots_shortfall
#lw_dependencies boots_each_adds to "work/gsm8k-sprint256-boots-graph.json"
#print axioms boots_each_adds
#check spokes_wheels
#lw_dependencies spokes_total to "work/gsm8k-sprint256-spokes-graph.json"
#print axioms spokes_total
