import LemmaWeave.Problems.GSM8K.Sprint1002A03P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A03P1

#lw_dependencies machine_total_cost
#lw_dependencies break_even_machine_count to "work/gsm8k-sprint292-break-even-machine-count-graph.json"
#print axioms break_even_machine_count
#lw_dependencies camera_increase
#lw_dependencies new_camera_price
#lw_dependencies discounted_lens_price
#lw_dependencies camera_and_lens_total to "work/gsm8k-sprint292-camera-and-lens-total-graph.json"
#print axioms camera_and_lens_total
#lw_dependencies fertilizer_gallons
#lw_dependencies seed_gallons to "work/gsm8k-sprint292-seed-gallons-graph.json"
#print axioms seed_gallons
#lw_dependencies monthly_savings
#lw_dependencies months_to_save to "work/gsm8k-sprint292-months-to-save-graph.json"
#print axioms months_to_save
#lw_dependencies total_meals
#lw_dependencies remaining_meals to "work/gsm8k-sprint292-remaining-meals-graph.json"
#print axioms remaining_meals
