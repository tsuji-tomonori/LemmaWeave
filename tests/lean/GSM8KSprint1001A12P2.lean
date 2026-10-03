import LemmaWeave.Problems.GSM8K.Sprint1001A12P2Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A12P2

#check age_equation
#lw_dependencies age_years to "work/gsm8k-sprint264-ages-graph.json"
#print axioms age_years
#check swallow_european_count
#check swallow_american_count
#check swallow_european_capacity
#lw_dependencies swallow_combined to "work/gsm8k-sprint264-swallows-graph.json"
#print axioms swallow_combined
#check socks_red_pairs
#check socks_white
#check socks_blue
#check socks_black
#lw_dependencies socks_total to "work/gsm8k-sprint264-socks-graph.json"
#print axioms socks_total
#check shirts_regular
#check shirts_discount
#lw_dependencies shirts_paid to "work/gsm8k-sprint264-discount-shirts-graph.json"
#print axioms shirts_paid
#check tax_subtotal
#check tax_amount
#lw_dependencies tax_total to "work/gsm8k-sprint264-tax-shirts-graph.json"
#print axioms tax_total
