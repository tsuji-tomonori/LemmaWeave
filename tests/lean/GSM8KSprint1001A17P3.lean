import LemmaWeave.Problems.GSM8K.Sprint1001A17P3Models
import LemmaWeave.Audit.Extract

open LemmaWeave.Problems.GSM8K.Sprint1001A17P3

#check plate_cost
#check spoon_cost
#lw_dependencies spoon_count to "work/gsm8k-sprint280-spoon-count-graph.json"
#print axioms spoon_count
#check later_combined_crickets
#lw_dependencies combined_reading_crickets to "work/gsm8k-sprint280-cricket-readings-graph.json"
#lw_dependencies each_period_crickets to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A17P3.each_period_crickets-graph.json"
#lw_dependencies cricket_readings_differ to "work/lw-line-LemmaWeave.Problems.GSM8K.Sprint1001A17P3.cricket_readings_differ-graph.json"
#print axioms combined_reading_crickets
#check alone_walk_time
#check brother_walk_time
#lw_dependencies extra_walk_minutes to "work/gsm8k-sprint280-extra-walk-minutes-graph.json"
#print axioms extra_walk_minutes
#check wall_courses
#check wall_full_bricks
#check wall_removed_bricks
#lw_dependencies wall_remaining_bricks to "work/gsm8k-sprint280-wall-remaining-bricks-graph.json"
#print axioms wall_remaining_bricks
#check dog_game_students
#check dog_movie_students
#lw_dependencies dog_students to "work/gsm8k-sprint280-dog-students-graph.json"
#print axioms dog_students
