import LemmaWeave.Problems.GSM8K.Sprint1001A08P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A08P1

#lw_dependencies porter_comparison
#lw_dependencies porter_conventional
#lw_dependencies porter_literal
#lw_dependencies porter_nonunique to "work/gsm8k-sprint254-porter-graph.json"
#print axioms porter_nonunique
#lw_dependencies tv_minor_total
#lw_dependencies tv_main_pay
#lw_dependencies tv_main_total
#lw_dependencies tv_total to "work/gsm8k-sprint254-tv-pay-graph.json"
#print axioms tv_total
#lw_dependencies tea_days
#lw_dependencies tea_weeks to "work/gsm8k-sprint254-tea-graph.json"
#print axioms tea_weeks
#lw_dependencies paper_reams
#lw_dependencies paper_cost to "work/gsm8k-sprint254-paper-graph.json"
#print axioms paper_cost
#lw_dependencies factory_after_shortage
#lw_dependencies factory_after_pandemic
#lw_dependencies factory_doors to "work/gsm8k-sprint254-factory-graph.json"
#print axioms factory_doors
