import LemmaWeave.Problems.GSM8K.Sprint1001A03P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A03P2

#lw_dependencies fish_bad
#lw_dependencies fish_usable
#lw_dependencies fish_rolls to "work/gsm8k-sprint240-fish-graph.json"
#lw_dependencies dessert_cone_cost
#lw_dependencies dessert_pudding_cost
#lw_dependencies dessert_difference to "work/gsm8k-sprint240-dessert-graph.json"
#lw_dependencies apples_bella_weekly
#lw_dependencies apples_grace_picked
#lw_dependencies apples_grace_kept
#lw_dependencies apples_final to "work/gsm8k-sprint240-apples-graph.json"
#lw_dependencies radio_total
#lw_dependencies radio_talk
#lw_dependencies radio_ads
#lw_dependencies radio_songs to "work/gsm8k-sprint240-radio-graph.json"
#lw_dependencies tree_twigs
#lw_dependencies tree_four_twigs
#lw_dependencies tree_five_twigs
#lw_dependencies tree_four_leaves
#lw_dependencies tree_five_leaves
#lw_dependencies tree_total_leaves to "work/gsm8k-sprint240-tree-graph.json"
#print axioms fish_rolls
#print axioms dessert_difference
#print axioms apples_final
#print axioms radio_songs
#print axioms tree_total_leaves
