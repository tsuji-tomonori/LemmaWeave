import LemmaWeave.Problems.GSM8K.Sprint0924A16Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A16
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A16

theorem tylenol_dose (m : P.Tylenol) : m.dose = 750 := P.tylenol_dose m
theorem tylenol_doses (m : P.Tylenol) : m.doses = 4 := P.tylenol_doses m
theorem tylenol_solution (m : P.Tylenol) : m.daily = 3000 := P.tylenol_solution m
theorem mowing_riding_acres (m : P.Mowing) : m.ridingAcres = 6 := P.mowing_riding_acres m
theorem mowing_riding_hours (m : P.Mowing) : m.ridingHours = 3 := P.mowing_riding_hours m
theorem mowing_push_acres (m : P.Mowing) : m.pushAcres = 2 := P.mowing_push_acres m
theorem mowing_push_hours (m : P.Mowing) : m.pushHours = 2 := P.mowing_push_hours m
theorem mowing_solution (m : P.Mowing) : m.totalHours = 5 := P.mowing_solution m
theorem seaweed_usable (m : P.Seaweed) : m.usable = 200 := P.seaweed_usable m
theorem seaweed_human (m : P.Seaweed) : m.human = 50 := P.seaweed_human m
theorem seaweed_solution (m : P.Seaweed) : m.livestock = 150 := P.seaweed_solution m
theorem jump_literal_impossible : ¬ ∃ third : ℤ, third + 2 = third := P.jump_literal_impossible
theorem jump_corrected_second (m : P.JumpCorrected) : m.second = 23 := P.jump_corrected_second m
theorem jump_corrected_third (m : P.JumpCorrected) : m.third = 21 := P.jump_corrected_third m
theorem jump_corrected_fourth (m : P.JumpCorrected) : m.fourth = 24 := P.jump_corrected_fourth m
theorem jump_reference_solution (m : P.JumpCorrected) : m.fourth = 24 := P.jump_reference_solution m
theorem coffee_pods (m : P.Coffee) : m.pods = 120 := P.coffee_pods m
theorem coffee_boxes (m : P.Coffee) : m.boxes = 4 := P.coffee_boxes m
theorem coffee_solution (m : P.Coffee) : m.cost = 32 := P.coffee_solution m
theorem road_miles (m : P.Road) : m.miles = 7 := P.road_miles m
theorem road_signs (m : P.Road) : m.signs = 14 := P.road_signs m
theorem road_solution (m : P.Road) : m.perMile = 2 := P.road_solution m
theorem coconuts_before (m : P.Coconuts) : m.before = 42 := P.coconuts_before m
theorem coconuts_solution (m : P.Coconuts) : m.after = 32 := P.coconuts_solution m
theorem herd_female_hippos (m : P.Herd) : m.femaleHippos = 25 := P.herd_female_hippos m
theorem herd_new_hippos (m : P.Herd) : m.newHippos = 125 := P.herd_new_hippos m
theorem herd_new_elephants (m : P.Herd) : m.newElephants = 135 := P.herd_new_elephants m
theorem herd_hippos (m : P.Herd) : m.hippos = 160 := P.herd_hippos m
theorem herd_elephants (m : P.Herd) : m.elephants = 155 := P.herd_elephants m
theorem herd_solution (m : P.Herd) : m.total = 315 := P.herd_solution m
theorem tv_reality (m : P.TV) : m.reality = 140 := P.tv_reality m
theorem tv_solution (m : P.TV) : m.total = 150 := P.tv_solution m
theorem theater_girls (m : P.Theater) : m.girls = 4 := P.theater_girls m
theorem theater_solution (m : P.Theater) : m.boys = 4 := P.theater_solution m
theorem eggs_purchased (m : P.Eggs) : m.purchased = 48 := P.eggs_purchased m
theorem eggs_children (m : P.Eggs) : m.children = 14 := P.eggs_children m
theorem eggs_parents (m : P.Eggs) : m.parents = 28 := P.eggs_parents m
theorem eggs_eaten (m : P.Eggs) : m.eaten = 42 := P.eggs_eaten m
theorem eggs_solution (m : P.Eggs) : m.left = 6 := P.eggs_solution m
theorem eggs_each_person_impossible : ¬ ∃ left : ℕ, left + 7 * (2 * 2 + 2 * 4) = 48 := P.eggs_each_person_impossible
theorem pencils_after_move (m : P.Pencils) : m.afterMove = 24 := P.pencils_after_move m
theorem pencils_lost_later (m : P.Pencils) : m.lostLater = 8 := P.pencils_lost_later m
theorem pencils_solution (m : P.Pencils) : m.current = 16 := P.pencils_solution m
theorem jellybeans_children (m : P.Jellybeans) : m.children = 5 := P.jellybeans_children m
theorem jellybeans_solution (m : P.Jellybeans) : m.each = 14 := P.jellybeans_solution m
theorem scoop_flour (m : P.Scoop) : m.flour = 8 := P.scoop_flour m
theorem scoop_white (m : P.Scoop) : m.white = 4 := P.scoop_white m
theorem scoop_brown (m : P.Scoop) : m.brown = 1 := P.scoop_brown m
theorem scoop_oil (m : P.Scoop) : m.oil = 2 := P.scoop_oil m
theorem scoop_solution (m : P.Scoop) : m.total = 15 := P.scoop_solution m
theorem ship_capacity (m : P.Ship) : m.capacity = 1200 := P.ship_capacity m
theorem ship_third (m : P.Ship) : m.third = 400 := P.ship_third m
theorem ship_solution (m : P.Ship) : m.starting = 300 := P.ship_solution m

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
