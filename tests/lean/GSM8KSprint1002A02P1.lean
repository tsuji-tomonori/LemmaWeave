import LemmaWeave.Problems.GSM8K.Sprint1002A02P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1002A02P1

#lw_dependencies cafeteria_students
#lw_dependencies bring_students
#lw_dependencies eating_students
#lw_dependencies no_lunch_students to "work/gsm8k-sprint291-lunch-non-eaters-graph.json"
#print axioms no_lunch_students
#lw_dependencies invited_students
#lw_dependencies revoked_students
#lw_dependencies invited_attendees to "work/gsm8k-sprint291-dance-invited-attendees-graph.json"
#print axioms invited_attendees
#lw_dependencies briefcase_cost
#lw_dependencies purchase_total to "work/gsm8k-sprint291-pen-briefcase-total-graph.json"
#print axioms purchase_total
#lw_dependencies tank_after_evaporation
#lw_dependencies tank_after_drain
#lw_dependencies rain_intervals
#lw_dependencies rain_added
#lw_dependencies tank_final_liters to "work/gsm8k-sprint291-tank-after-rain-graph.json"
#print axioms tank_final_liters
#lw_dependencies two_test_points
#lw_dependencies second_test_grade to "work/gsm8k-sprint291-second-test-grade-graph.json"
#print axioms second_test_grade
