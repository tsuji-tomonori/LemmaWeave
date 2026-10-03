import LemmaWeave.Problems.GSM8K.Sprint0923A07Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A07
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A07

theorem trees_planks (m : P.TreeTableProfit) : m.planks = 750 := P.trees_planks m
theorem trees_tables (m : P.TreeTableProfit) : m.tables = 50 := P.trees_tables m
theorem trees_revenue (m : P.TreeTableProfit) : m.revenue = 15000 := P.trees_revenue m
theorem trees_solution (m : P.TreeTableProfit) : m.profit = 12000 := P.trees_solution m
theorem car_samara (m : P.CarSpending) : m.samara = 571 := P.car_samara m
theorem car_solution (m : P.CarSpending) : m.difference = 1886 := P.car_solution m
theorem sewer_hours (m : P.SewerCapacity) : m.hours = 240 := P.sewer_hours m
theorem sewer_solution (m : P.SewerCapacity) : m.days = 10 := P.sewer_solution m
theorem scores_maximum (m : P.TestScores) : m.maximum = 100 := P.scores_maximum m
theorem scores_lost (m : P.TestScores) : m.lost = 10 := P.scores_lost m
theorem scores_jose (m : P.TestScores) : m.jose = 90 := P.scores_jose m
theorem scores_meghan (m : P.TestScores) : m.meghan = 70 := P.scores_meghan m
theorem scores_alisson (m : P.TestScores) : m.alisson = 50 := P.scores_alisson m
theorem scores_solution (m : P.TestScores) : m.total = 210 := P.scores_solution m
theorem sugar_daily (m : P.SugarSubstitute) : m.daily = 2 := P.sugar_daily m
theorem sugar_packets (m : P.SugarSubstitute) : m.packets = 180 := P.sugar_packets m
theorem sugar_boxes (m : P.SugarSubstitute) : m.boxes = 6 := P.sugar_boxes m
theorem sugar_solution (m : P.SugarSubstitute) : m.cost = 24 := P.sugar_solution m
theorem emma_after_furniture (m : P.EmmaMoney) : m.afterFurniture = 1600 := P.emma_after_furniture m
theorem emma_given (m : P.EmmaMoney) : m.given = 1200 := P.emma_given m
theorem emma_solution (m : P.EmmaMoney) : m.left = 400 := P.emma_solution m
theorem detour_speed (m : P.DetourTrip) : m.speed = 50 := P.detour_speed m
theorem detour_distance (m : P.DetourTrip) : m.detour = 100 := P.detour_distance m
theorem detour_extra_time (m : P.DetourTrip) : m.extraTime = 2 := P.detour_extra_time m
theorem detour_solution (m : P.DetourTrip) : m.totalTime = 5 := P.detour_solution m
theorem hours_total_need (m : P.MonthlyHours) : m.totalNeed = 2060 := P.hours_total_need m
theorem hours_138_enough (m : P.MonthlyHours) : m.totalNeed ≤ 138 * 15 := P.hours_138_enough m
theorem hours_lower_bound (m : P.MonthlyHours) : 138 ≤ m.hours := P.hours_lower_bound m
theorem hours_solution (m : P.MonthlyHours) : m.hours = 138 := P.hours_solution m
theorem reading_first_book (m : P.SummerReading) : m.firstBook = 400 := P.reading_first_book m
theorem reading_second_book (m : P.SummerReading) : m.secondBook = 200 := P.reading_second_book m
theorem reading_total (m : P.SummerReading) : m.totalRead = 600 := P.reading_total m
theorem reading_solution (m : P.SummerReading) : m.remaining = 200 := P.reading_solution m
theorem volleyball_nathalie (m : P.VolleyballScore) : m.nathalie = 7 := P.volleyball_nathalie m
theorem volleyball_pair (m : P.VolleyballScore) : m.pair = 11 := P.volleyball_pair m
theorem volleyball_aimee (m : P.VolleyballScore) : m.aimee = 22 := P.volleyball_aimee m
theorem volleyball_named (m : P.VolleyballScore) : m.named = 33 := P.volleyball_named m
theorem volleyball_solution (m : P.VolleyballScore) : m.teammates = 17 := P.volleyball_solution m
theorem commute_extra (m : P.CommuteDistance) : m.extra = 4 := P.commute_extra m
theorem commute_second_third (m : P.CommuteDistance) : m.secondThird = 10 := P.commute_second_third m
theorem commute_solution (m : P.CommuteDistance) : m.total = 24 := P.commute_solution m
theorem weight_aleesia (m : P.WeightLoss) : m.aleesiaHalf = 30 := P.weight_aleesia m
theorem weight_alexei (m : P.WeightLoss) : m.alexeiHalf = 40 := P.weight_alexei m
theorem weight_total_half (m : P.WeightLoss) : m.totalHalf = 70 := P.weight_total_half m
theorem weight_solution (m : P.WeightLoss) : m.totalPounds = 35 := P.weight_solution m
theorem fruit_known (m : P.FruitCrates) : m.known = 33 := P.fruit_known m
theorem fruit_solution (m : P.FruitCrates) : m.passion = 17 := P.fruit_solution m
theorem parking_tickets (m : P.ParkingCounts) : m.tickets = 225 := P.parking_tickets m
theorem parking_passes (m : P.ParkingCounts) : m.passes = 45 := P.parking_passes m
theorem parking_range (m : P.ParkingCounts) : 30 ≤ m.unpaid ∧ m.unpaid ≤ 75 := P.parking_range m
theorem parking_two_possible_values :
    (∃ m : P.ParkingCounts, m.unpaid = 30) ∧ (∃ m : P.ParkingCounts, m.unpaid = 75) :=
  P.parking_two_possible_values
theorem parking_disjoint_solution (m : P.ParkingCounts) (hDisjoint : m.overlap = 0) :
    m.unpaid = 30 := P.parking_disjoint_solution m hDisjoint
theorem school_time_used (m : P.SchoolTime) : m.used = 21 := P.school_time_used m
theorem school_time_solution (m : P.SchoolTime) : m.remaining = 9 := P.school_time_solution m

end LemmaWeave.Tests.GSM8KSprint0923A07

#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.trees_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.car_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.sewer_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.scores_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.sugar_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.emma_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.detour_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.hours_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.reading_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.volleyball_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.commute_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.weight_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.fruit_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.parking_disjoint_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A07.school_time_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.trees_solution to "work/gsm8k-sprint98-trees-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.car_solution to "work/gsm8k-sprint98-car-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.sewer_solution to "work/gsm8k-sprint98-sewer-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.scores_solution to "work/gsm8k-sprint98-scores-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.sugar_solution to "work/gsm8k-sprint98-sugar-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.emma_solution to "work/gsm8k-sprint98-emma-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.detour_solution to "work/gsm8k-sprint98-detour-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.hours_solution to "work/gsm8k-sprint98-hours-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.reading_solution to "work/gsm8k-sprint98-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.volleyball_solution to "work/gsm8k-sprint98-volleyball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.commute_solution to "work/gsm8k-sprint98-commute-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.weight_solution to "work/gsm8k-sprint98-weight-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.fruit_solution to "work/gsm8k-sprint98-fruit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.parking_disjoint_solution to "work/gsm8k-sprint98-parking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.school_time_solution to "work/gsm8k-sprint98-school-time-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A07.school_time_solution to "work/gsm8k-sprint98-school_time-graph.json"
