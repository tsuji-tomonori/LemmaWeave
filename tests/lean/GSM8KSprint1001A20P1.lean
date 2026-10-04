import LemmaWeave.Problems.GSM8K.Sprint1001A20P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A20P1

#check lemonade_combined
#check tina_lemonade
#lw_dependencies tina_more_than_katya to "work/gsm8k-sprint287-tina-more-graph.json"
#print axioms tina_more_than_katya
#check quilt_yards_each
#lw_dependencies quilt_yards_required to "work/gsm8k-sprint287-quilt-yards-graph.json"
#print axioms quilt_yards_required
#check trip_second_day
#check trip_total_miles
#lw_dependencies phone_charges to "work/gsm8k-sprint287-phone-charges-graph.json"
#print axioms phone_charges
#check conventional_older_age
#check literal_older_age
#lw_dependencies older_phrase_ambiguous to "work/gsm8k-sprint287-older-phrase-graph.json"
#print axioms older_phrase_ambiguous
#check cubs_home_runs
#check cardinals_home_runs
#lw_dependencies cubs_more_home_runs to "work/gsm8k-sprint287-baseball-more-graph.json"
#print axioms cubs_more_home_runs
