import LemmaWeave.Problems.GSM8K.Sprint1001A14P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A14P3

#lw_dependencies first_course_seconds
#lw_dependencies door_elapsed_seconds
#lw_dependencies return_course_seconds
#lw_dependencies obstacle_seconds to "work/gsm8k-sprint271-obstacle-seconds-graph.json"
#print axioms obstacle_seconds
#lw_dependencies milk_glasses
#lw_dependencies syrup_glasses
#lw_dependencies limited_glasses
#lw_dependencies chocolate_milk to "work/gsm8k-sprint271-chocolate-milk-graph.json"
#print axioms chocolate_milk
#lw_dependencies right_group_seeds
#lw_dependencies initial_groups_seeds
#lw_dependencies starting_seeds to "work/gsm8k-sprint271-starting-seeds-graph.json"
#print axioms starting_seeds
#lw_dependencies crabs_per_collection
#lw_dependencies weekly_crabs
#lw_dependencies crab_revenue to "work/gsm8k-sprint271-crab-revenue-graph.json"
#print axioms crab_revenue
#lw_dependencies kids_daily_revenue
#lw_dependencies adult_price
#lw_dependencies adults_daily_revenue
#lw_dependencies pool_daily_revenue
#lw_dependencies pool_revenue to "work/gsm8k-sprint271-pool-revenue-graph.json"
#print axioms pool_revenue
