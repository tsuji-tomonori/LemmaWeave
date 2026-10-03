import LemmaWeave.Problems.GSM8K.Sprint1001A10P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A10P1

#check whale_pounds
#lw_dependencies whale_tons to "work/gsm8k-sprint257-whale-graph.json"
#print axioms whale_tons
#check gems_base
#check gems_bonus
#lw_dependencies gems_total to "work/gsm8k-sprint257-gems-graph.json"
#print axioms gems_total
#check dogs_total
#check dogs_second
#lw_dependencies dogs_third to "work/gsm8k-sprint257-dogs-graph.json"
#print axioms dogs_third
#check glass_total
#lw_dependencies glass_clear to "work/gsm8k-sprint257-glass-graph.json"
#print axioms glass_clear
#check pens_initial
#check pens_remaining
#lw_dependencies pens_each to "work/gsm8k-sprint257-pens-graph.json"
#print axioms pens_each
