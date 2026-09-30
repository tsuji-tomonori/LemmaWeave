import LemmaWeave.Problems.GSM8K.Sprint1001A03P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A03P3

#lw_dependencies iron_one_bar
#lw_dependencies iron_total
#lw_dependencies iron_balls to "work/gsm8k-sprint241-iron-graph.json"
#lw_dependencies healing_graft
#lw_dependencies healing_total to "work/gsm8k-sprint241-healing-graph.json"
#lw_dependencies finals_bombed
#lw_dependencies finals_after_bombed
#lw_dependencies finals_absent
#lw_dependencies finals_passed to "work/gsm8k-sprint241-finals-graph.json"
#lw_dependencies fruit_cherry_price
#lw_dependencies fruit_strawberries
#lw_dependencies fruit_cherries
#lw_dependencies fruit_total to "work/gsm8k-sprint241-fruit-graph.json"
#lw_dependencies stickers_count
#lw_dependencies stickers_total
#lw_dependencies stickers_james to "work/gsm8k-sprint241-stickers-graph.json"
#print axioms iron_balls
#print axioms healing_total
#print axioms finals_passed
#print axioms fruit_total
#print axioms stickers_james
