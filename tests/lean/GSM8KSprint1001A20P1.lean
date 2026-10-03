import LemmaWeave.Problems.GSM8K.Sprint1001A20P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A20P1

#lw_dependencies lemonade_combined
#lw_dependencies tina_lemonade
#lw_dependencies tina_more_than_katya to "work/gsm8k-sprint287-tina-more-graph.json"
#print axioms tina_more_than_katya
#lw_dependencies quilt_yards_each
#lw_dependencies quilt_yards_required to "work/gsm8k-sprint287-quilt-yards-graph.json"
#print axioms quilt_yards_required
#lw_dependencies trip_second_day
#lw_dependencies trip_total_miles
#lw_dependencies phone_charges to "work/gsm8k-sprint287-phone-charges-graph.json"
#print axioms phone_charges
#lw_dependencies conventional_older_age
#lw_dependencies literal_older_age
#lw_dependencies older_phrase_ambiguous to "work/gsm8k-sprint287-older-phrase-graph.json"
#print axioms older_phrase_ambiguous
#lw_dependencies cubs_home_runs
#lw_dependencies cardinals_home_runs
#lw_dependencies cubs_more_home_runs to "work/gsm8k-sprint287-baseball-more-graph.json"
#print axioms cubs_more_home_runs
