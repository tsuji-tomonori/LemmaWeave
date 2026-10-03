import LemmaWeave.Problems.GSM8K.Sprint1001A03P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A03P3

#check iron_one_bar
#check iron_total
#lw_dependencies iron_balls to "work/gsm8k-sprint241-iron-graph.json"
#check healing_graft
#lw_dependencies healing_total to "work/gsm8k-sprint241-healing-graph.json"
#check finals_bombed
#check finals_after_bombed
#check finals_absent
#lw_dependencies finals_passed to "work/gsm8k-sprint241-finals-graph.json"
#check fruit_cherry_price
#check fruit_strawberries
#check fruit_cherries
#lw_dependencies fruit_total to "work/gsm8k-sprint241-fruit-graph.json"
#check stickers_count
#check stickers_total
#lw_dependencies stickers_james to "work/gsm8k-sprint241-stickers-graph.json"
#print axioms iron_balls
#print axioms healing_total
#print axioms finals_passed
#print axioms fruit_total
#print axioms stickers_james
