import LemmaWeave.Problems.GSM8K.Sprint1001A04P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A04P1

#check rubber_used
#check rubber_remaining
#lw_dependencies rubber_large_balls to "work/gsm8k-sprint245-rubber-band-graph.json"
#print axioms rubber_large_balls
#check musicians_orchestra
#check musicians_band
#check musicians_choir
#lw_dependencies musicians_total to "work/gsm8k-sprint245-musicians-graph.json"
#print axioms musicians_total
#check cats_combined
#check cats_cougars
#lw_dependencies cats_total to "work/gsm8k-sprint245-cats-graph.json"
#print axioms cats_total
#check postage_standard_total
#check postage_international_total
#lw_dependencies postage_extra_each to "work/gsm8k-sprint245-postage-graph.json"
#print axioms postage_extra_each
#check audience_under_thirty
#check audience_second_band
#lw_dependencies audience_total to "work/gsm8k-sprint245-audience-graph.json"
#print axioms audience_total
