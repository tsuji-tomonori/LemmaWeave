import LemmaWeave.Problems.GSM8K.Sprint1002A03P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A03P2

#lw_dependencies wire_part_length
#lw_dependencies used_wire_meters
#lw_dependencies unused_wire_meters to "work/gsm8k-sprint293-unused-wire-meters-graph.json"
#print axioms unused_wire_meters
#lw_dependencies prom_dancers
#lw_dependencies dancers_not_slow to "work/gsm8k-sprint293-dancers-not-slow-graph.json"
#print axioms dancers_not_slow
#lw_dependencies bedbugs_day_two
#lw_dependencies bedbugs_day_three
#lw_dependencies initial_bedbugs_day_one to "work/gsm8k-sprint293-initial-bedbugs-day-one-graph.json"
#print axioms initial_bedbugs_day_one
#lw_dependencies big_sail_hours
#lw_dependencies small_sail_hours
#lw_dependencies sail_hours_faster to "work/gsm8k-sprint293-sail-hours-faster-graph.json"
#print axioms sail_hours_faster
#lw_dependencies reading_day_two
#lw_dependencies reading_day_three
#lw_dependencies reading_day_four to "work/gsm8k-sprint293-reading-day-four-graph.json"
#print axioms reading_day_four
