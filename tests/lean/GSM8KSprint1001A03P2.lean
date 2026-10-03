import LemmaWeave.Problems.GSM8K.Sprint1001A03P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A03P2

#check fish_bad
#check fish_usable
#lw_dependencies fish_rolls to "work/gsm8k-sprint240-fish-graph.json"
#check dessert_cone_cost
#check dessert_pudding_cost
#lw_dependencies dessert_difference to "work/gsm8k-sprint240-dessert-graph.json"
#check apples_bella_weekly
#check apples_grace_picked
#check apples_grace_kept
#lw_dependencies apples_final to "work/gsm8k-sprint240-apples-graph.json"
#check radio_total
#check radio_talk
#check radio_ads
#lw_dependencies radio_songs to "work/gsm8k-sprint240-radio-graph.json"
#check tree_twigs
#check tree_four_twigs
#check tree_five_twigs
#check tree_four_leaves
#check tree_five_leaves
#lw_dependencies tree_total_leaves to "work/gsm8k-sprint240-tree-graph.json"
#print axioms fish_rolls
#print axioms dessert_difference
#print axioms apples_final
#print axioms radio_songs
#print axioms tree_total_leaves
