import LemmaWeave.Problems.GSM8K.Sprint1001A14P1Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A14P1

#check jack_initial_notebooks
#check after_paula_notebooks
#lw_dependencies notebooks_left to "work/gsm8k-sprint269-notebooks-left-graph.json"
#print axioms notebooks_left
#check popcorn_price
#check drink_price
#check candy_price
#check normal_movie_total
#lw_dependencies movie_deal_savings to "work/gsm8k-sprint269-movie-deal-savings-graph.json"
#print axioms movie_deal_savings
#check will_now_age
#check diane_now_age
#check will_future_age
#lw_dependencies future_age_sum to "work/gsm8k-sprint269-future-age-sum-graph.json"
#print axioms future_age_sum
#check seated_attendance
#lw_dependencies meeting_attendance to "work/gsm8k-sprint269-meeting-attendance-graph.json"
#print axioms meeting_attendance
#check shirt_minutes
#check pants_minutes
#check tailoring_minutes
#lw_dependencies tailoring_cost to "work/gsm8k-sprint269-tailoring-cost-graph.json"
#print axioms tailoring_cost
