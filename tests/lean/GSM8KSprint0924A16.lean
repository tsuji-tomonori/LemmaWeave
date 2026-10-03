import LemmaWeave.Problems.GSM8K.Sprint0924A16Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A16


theorem tylenol_dose (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Tylenol) : m.dose = 750 := LemmaWeave.Problems.GSM8K.Sprint0924A16.tylenol_dose m
theorem tylenol_doses (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Tylenol) : m.doses = 4 := LemmaWeave.Problems.GSM8K.Sprint0924A16.tylenol_doses m
theorem tylenol_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Tylenol) : m.daily = 3000 := LemmaWeave.Problems.GSM8K.Sprint0924A16.tylenol_solution m
theorem mowing_riding_acres (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Mowing) : m.ridingAcres = 6 := LemmaWeave.Problems.GSM8K.Sprint0924A16.mowing_riding_acres m
theorem mowing_riding_hours (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Mowing) : m.ridingHours = 3 := LemmaWeave.Problems.GSM8K.Sprint0924A16.mowing_riding_hours m
theorem mowing_push_acres (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Mowing) : m.pushAcres = 2 := LemmaWeave.Problems.GSM8K.Sprint0924A16.mowing_push_acres m
theorem mowing_push_hours (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Mowing) : m.pushHours = 2 := LemmaWeave.Problems.GSM8K.Sprint0924A16.mowing_push_hours m
theorem mowing_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Mowing) : m.totalHours = 5 := LemmaWeave.Problems.GSM8K.Sprint0924A16.mowing_solution m
theorem seaweed_usable (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Seaweed) : m.usable = 200 := LemmaWeave.Problems.GSM8K.Sprint0924A16.seaweed_usable m
theorem seaweed_human (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Seaweed) : m.human = 50 := LemmaWeave.Problems.GSM8K.Sprint0924A16.seaweed_human m
theorem seaweed_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Seaweed) : m.livestock = 150 := LemmaWeave.Problems.GSM8K.Sprint0924A16.seaweed_solution m
theorem jump_literal_impossible : ¬ ∃ third : ℤ, third + 2 = third := LemmaWeave.Problems.GSM8K.Sprint0924A16.jump_literal_impossible
theorem jump_corrected_second (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.JumpCorrected) : m.second = 23 := LemmaWeave.Problems.GSM8K.Sprint0924A16.jump_corrected_second m
theorem jump_corrected_third (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.JumpCorrected) : m.third = 21 := LemmaWeave.Problems.GSM8K.Sprint0924A16.jump_corrected_third m
theorem jump_corrected_fourth (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.JumpCorrected) : m.fourth = 24 := LemmaWeave.Problems.GSM8K.Sprint0924A16.jump_corrected_fourth m
theorem jump_reference_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.JumpCorrected) : m.fourth = 24 := LemmaWeave.Problems.GSM8K.Sprint0924A16.jump_reference_solution m
theorem coffee_pods (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Coffee) : m.pods = 120 := LemmaWeave.Problems.GSM8K.Sprint0924A16.coffee_pods m
theorem coffee_boxes (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Coffee) : m.boxes = 4 := LemmaWeave.Problems.GSM8K.Sprint0924A16.coffee_boxes m
theorem coffee_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Coffee) : m.cost = 32 := LemmaWeave.Problems.GSM8K.Sprint0924A16.coffee_solution m
theorem road_miles (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Road) : m.miles = 7 := LemmaWeave.Problems.GSM8K.Sprint0924A16.road_miles m
theorem road_signs (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Road) : m.signs = 14 := LemmaWeave.Problems.GSM8K.Sprint0924A16.road_signs m
theorem road_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Road) : m.perMile = 2 := LemmaWeave.Problems.GSM8K.Sprint0924A16.road_solution m
theorem coconuts_before (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Coconuts) : m.before = 42 := LemmaWeave.Problems.GSM8K.Sprint0924A16.coconuts_before m
theorem coconuts_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Coconuts) : m.after = 32 := LemmaWeave.Problems.GSM8K.Sprint0924A16.coconuts_solution m
theorem herd_female_hippos (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Herd) : m.femaleHippos = 25 := LemmaWeave.Problems.GSM8K.Sprint0924A16.herd_female_hippos m
theorem herd_new_hippos (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Herd) : m.newHippos = 125 := LemmaWeave.Problems.GSM8K.Sprint0924A16.herd_new_hippos m
theorem herd_new_elephants (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Herd) : m.newElephants = 135 := LemmaWeave.Problems.GSM8K.Sprint0924A16.herd_new_elephants m
theorem herd_hippos (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Herd) : m.hippos = 160 := LemmaWeave.Problems.GSM8K.Sprint0924A16.herd_hippos m
theorem herd_elephants (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Herd) : m.elephants = 155 := LemmaWeave.Problems.GSM8K.Sprint0924A16.herd_elephants m
theorem herd_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Herd) : m.total = 315 := LemmaWeave.Problems.GSM8K.Sprint0924A16.herd_solution m
theorem tv_reality (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.TV) : m.reality = 140 := LemmaWeave.Problems.GSM8K.Sprint0924A16.tv_reality m
theorem tv_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.TV) : m.total = 150 := LemmaWeave.Problems.GSM8K.Sprint0924A16.tv_solution m
theorem theater_girls (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Theater) : m.girls = 4 := LemmaWeave.Problems.GSM8K.Sprint0924A16.theater_girls m
theorem theater_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Theater) : m.boys = 4 := LemmaWeave.Problems.GSM8K.Sprint0924A16.theater_solution m
theorem eggs_purchased (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Eggs) : m.purchased = 48 := LemmaWeave.Problems.GSM8K.Sprint0924A16.eggs_purchased m
theorem eggs_children (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Eggs) : m.children = 14 := LemmaWeave.Problems.GSM8K.Sprint0924A16.eggs_children m
theorem eggs_parents (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Eggs) : m.parents = 28 := LemmaWeave.Problems.GSM8K.Sprint0924A16.eggs_parents m
theorem eggs_eaten (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Eggs) : m.eaten = 42 := LemmaWeave.Problems.GSM8K.Sprint0924A16.eggs_eaten m
theorem eggs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Eggs) : m.left = 6 := LemmaWeave.Problems.GSM8K.Sprint0924A16.eggs_solution m
theorem eggs_each_person_impossible : ¬ ∃ left : ℕ, left + 7 * (2 * 2 + 2 * 4) = 48 := LemmaWeave.Problems.GSM8K.Sprint0924A16.eggs_each_person_impossible
theorem pencils_after_move (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Pencils) : m.afterMove = 24 := LemmaWeave.Problems.GSM8K.Sprint0924A16.pencils_after_move m
theorem pencils_lost_later (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Pencils) : m.lostLater = 8 := LemmaWeave.Problems.GSM8K.Sprint0924A16.pencils_lost_later m
theorem pencils_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Pencils) : m.current = 16 := LemmaWeave.Problems.GSM8K.Sprint0924A16.pencils_solution m
theorem jellybeans_children (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Jellybeans) : m.children = 5 := LemmaWeave.Problems.GSM8K.Sprint0924A16.jellybeans_children m
theorem jellybeans_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Jellybeans) : m.each = 14 := LemmaWeave.Problems.GSM8K.Sprint0924A16.jellybeans_solution m
theorem scoop_flour (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Scoop) : m.flour = 8 := LemmaWeave.Problems.GSM8K.Sprint0924A16.scoop_flour m
theorem scoop_white (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Scoop) : m.white = 4 := LemmaWeave.Problems.GSM8K.Sprint0924A16.scoop_white m
theorem scoop_brown (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Scoop) : m.brown = 1 := LemmaWeave.Problems.GSM8K.Sprint0924A16.scoop_brown m
theorem scoop_oil (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Scoop) : m.oil = 2 := LemmaWeave.Problems.GSM8K.Sprint0924A16.scoop_oil m
theorem scoop_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Scoop) : m.total = 15 := LemmaWeave.Problems.GSM8K.Sprint0924A16.scoop_solution m
theorem ship_capacity (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Ship) : m.capacity = 1200 := LemmaWeave.Problems.GSM8K.Sprint0924A16.ship_capacity m
theorem ship_third (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Ship) : m.third = 400 := LemmaWeave.Problems.GSM8K.Sprint0924A16.ship_third m
theorem ship_solution (m : LemmaWeave.Problems.GSM8K.Sprint0924A16.Ship) : m.starting = 300 := LemmaWeave.Problems.GSM8K.Sprint0924A16.ship_solution m

end LemmaWeave.Tests.GSM8KSprint0924A16

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.tylenol_solution to "work/gsm8k-sprint124-tylenol-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.mowing_solution to "work/gsm8k-sprint124-mowing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.seaweed_solution to "work/gsm8k-sprint124-seaweed-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.jump_literal_impossible to "work/gsm8k-sprint124-jump-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.coffee_solution to "work/gsm8k-sprint124-coffee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.road_solution to "work/gsm8k-sprint124-road-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.coconuts_solution to "work/gsm8k-sprint124-coconuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.herd_solution to "work/gsm8k-sprint124-herd-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.tv_solution to "work/gsm8k-sprint124-tv-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.theater_solution to "work/gsm8k-sprint124-theater-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.eggs_solution to "work/gsm8k-sprint124-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.pencils_solution to "work/gsm8k-sprint124-pencils-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.jellybeans_solution to "work/gsm8k-sprint124-jellybeans-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.scoop_solution to "work/gsm8k-sprint124-scoop-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A16.ship_solution to "work/gsm8k-sprint124-ship-graph.json"
