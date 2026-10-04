import LemmaWeave.Problems.GSM8K.Sprint0930A18P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A18P3

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.bills_fifties
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.bills_tens
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.bills_fives
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.bills_total to "work/gsm8k-sprint226-bills-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P3.bills_total

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.ages_hans_future
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.ages_annika_future
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.ages_annika_now to "work/gsm8k-sprint226-ages-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P3.ages_annika_now

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.tickets_subtotal
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.tickets_spent to "work/gsm8k-sprint226-tickets-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P3.tickets_spent

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.piano_weekday_minutes
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.piano_saturday_minutes
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.piano_weekly_minutes
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.piano_weekly_hours to "work/gsm8k-sprint226-piano-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P3.piano_weekly_hours

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.sleep_baby_daily
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.sleep_father_daily
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P3.sleep_father_weekly to "work/gsm8k-sprint226-sleep-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P3.sleep_father_weekly
