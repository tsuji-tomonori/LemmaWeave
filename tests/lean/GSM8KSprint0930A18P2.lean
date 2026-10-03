import LemmaWeave.Problems.GSM8K.Sprint0930A18P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint0930A18P2

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.dogs_shepherds
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.dogs_bulldogs
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.dogs_total to "work/gsm8k-sprint225-dogs-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P2.dogs_total

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.puzzles_total_pieces
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.puzzles_minutes to "work/gsm8k-sprint225-puzzles-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P2.puzzles_minutes

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.chickens_run
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.chickens_free_range to "work/gsm8k-sprint225-chickens-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P2.chickens_free_range

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.larry_spent
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.larry_initial to "work/gsm8k-sprint225-larry_money-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P2.larry_initial

#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.mojave_conventional_current
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.mojave_conventional_future
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.mojave_literal_current
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.mojave_literal_future
#lw_dependencies LemmaWeave.Problems.GSM8K.Sprint0930A18P2.mojave_readings_differ to "work/gsm8k-sprint225-mojave-graph.json"
#print axioms LemmaWeave.Problems.GSM8K.Sprint0930A18P2.mojave_readings_differ
