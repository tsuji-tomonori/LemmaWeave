import LemmaWeave.Problems.GSM8K.Sprint1001A12P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A12P2

#lw_dependencies age_equation
#lw_dependencies age_years to "work/gsm8k-sprint264-ages-graph.json"
#print axioms age_years
#lw_dependencies swallow_european_count
#lw_dependencies swallow_american_count
#lw_dependencies swallow_european_capacity
#lw_dependencies swallow_combined to "work/gsm8k-sprint264-swallows-graph.json"
#print axioms swallow_combined
#lw_dependencies socks_red_pairs
#lw_dependencies socks_white
#lw_dependencies socks_blue
#lw_dependencies socks_black
#lw_dependencies socks_total to "work/gsm8k-sprint264-socks-graph.json"
#print axioms socks_total
#lw_dependencies shirts_regular
#lw_dependencies shirts_discount
#lw_dependencies shirts_paid to "work/gsm8k-sprint264-discount-shirts-graph.json"
#print axioms shirts_paid
#lw_dependencies tax_subtotal
#lw_dependencies tax_amount
#lw_dependencies tax_total to "work/gsm8k-sprint264-tax-shirts-graph.json"
#print axioms tax_total
