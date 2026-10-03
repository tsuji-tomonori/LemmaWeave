import LemmaWeave.Problems.GSM8K.Sprint1001A12P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A12P1

#check envelope_large_letters
#lw_dependencies envelope_count to "work/gsm8k-sprint263-envelopes-graph.json"
#print axioms envelope_count
#check tennis_kept
#lw_dependencies tennis_each to "work/gsm8k-sprint263-tennis-balls-graph.json"
#print axioms tennis_each
#check bogo_paid_units
#lw_dependencies bogo_cost to "work/gsm8k-sprint263-bogo-spray-graph.json"
#print axioms bogo_cost
#check pizza_needed
#check pizza_remaining
#lw_dependencies pizza_large_count to "work/gsm8k-sprint263-pizza-order-graph.json"
#print axioms pizza_large_count
#check zoo_types
#lw_dependencies zoo_time to "work/gsm8k-sprint263-zoo-time-graph.json"
#print axioms zoo_time
