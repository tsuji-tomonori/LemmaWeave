import LemmaWeave.Problems.GSM8K.Sprint1002A02P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A02P1

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A02P1.no_lunch_students to "work/gsm8k-sprint291-lunch-non-eaters-graph.json"
#print axioms no_lunch_students
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A02P1.invited_attendees to "work/gsm8k-sprint291-dance-invited-attendees-graph.json"
#print axioms invited_attendees
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A02P1.purchase_total to "work/gsm8k-sprint291-pen-briefcase-total-graph.json"
#print axioms purchase_total
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A02P1.tank_final_liters to "work/gsm8k-sprint291-tank-after-rain-graph.json"
#print axioms tank_final_liters
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint1002A02P1.second_test_grade to "work/gsm8k-sprint291-second-test-grade-graph.json"
#print axioms second_test_grade
