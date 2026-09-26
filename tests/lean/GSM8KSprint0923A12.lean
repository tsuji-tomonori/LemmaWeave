import LemmaWeave.Problems.GSM8K.Sprint0923A12Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A12
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A12

theorem quiz_total (m : P.QuizAverage) : m.total = 273 := P.quiz_total m
theorem quiz_solution (m : P.QuizAverage) : m.average = 91 := P.quiz_solution m
theorem pharmacy_weekly_100 (m : P.PharmacySales) : m.weekly100 = 16 := P.pharmacy_weekly_100 m
theorem pharmacy_weekly_500 (m : P.PharmacySales) : m.weekly500 = 30 := P.pharmacy_weekly_500 m
theorem pharmacy_two_weeks_100 (m : P.PharmacySales) : m.twoWeeks100 = 32 := P.pharmacy_two_weeks_100 m
theorem pharmacy_two_weeks_500 (m : P.PharmacySales) : m.twoWeeks500 = 60 := P.pharmacy_two_weeks_500 m
theorem pharmacy_solution (m : P.PharmacySales) : m.total = 92 := P.pharmacy_solution m
theorem supplies_paper (m : P.ArtSupplies) : m.paper = 24 := P.supplies_paper m
theorem supplies_bought (m : P.ArtSupplies) : m.bought = 30 := P.supplies_bought m
theorem supplies_dropped (m : P.ArtSupplies) : m.dropped = 15 := P.supplies_dropped m
theorem supplies_remaining (m : P.ArtSupplies) : m.remaining = 15 := P.supplies_remaining m
theorem supplies_solution (m : P.ArtSupplies) : m.final = 20 := P.supplies_solution m
theorem nap_activities (m : P.TrainNap) : m.activities = 6 := P.nap_activities m
theorem nap_solution (m : P.TrainNap) : m.nap = 3 := P.nap_solution m
theorem produce_tomatoes (m : P.ProduceRevenue) : m.tomatoes = 20000 := P.produce_tomatoes m
theorem produce_carrots (m : P.ProduceRevenue) : m.carrots = 52500 := P.produce_carrots m
theorem produce_solution (m : P.ProduceRevenue) : m.total = 72500 := P.produce_solution m
theorem corn_children (m : P.CornPreference) : m.children = 20 := P.corn_children m
theorem corn_solution (m : P.CornPreference) : m.percent = 25 := P.corn_solution m
theorem trees_five_initial (m : P.TreesFiveRows) : m.initial = 8 := P.trees_five_initial m
theorem trees_five_added (m : P.TreesFiveRows) : m.added = 20 := P.trees_five_added m
theorem trees_five_before (m : P.TreesFiveRows) : m.beforeDoubling = 28 := P.trees_five_before m
theorem trees_reference_solution (m : P.TreesFiveRows) : m.final = 56 := P.trees_reference_solution m
theorem trees_six_initial (m : P.TreesSixRows) : m.initial = 8 := P.trees_six_initial m
theorem trees_six_added (m : P.TreesSixRows) : m.added = 24 := P.trees_six_added m
theorem trees_six_before (m : P.TreesSixRows) : m.beforeDoubling = 32 := P.trees_six_before m
theorem trees_inclusive_solution (m : P.TreesSixRows) : m.final = 64 := P.trees_inclusive_solution m
theorem trees_two_birthday_readings_differ : (56 : ℕ) ≠ 64 := P.trees_two_birthday_readings_differ
theorem legs_humans (m : P.WalkingLegs) : m.humanLegs = 4 := P.legs_humans m
theorem legs_dogs (m : P.WalkingLegs) : m.dogLegs = 8 := P.legs_dogs m
theorem legs_solution (m : P.WalkingLegs) : m.total = 12 := P.legs_solution m
theorem tires_empty (m : P.TirePumps) : m.emptyNeed = 1000 := P.tires_empty m
theorem tires_forty (m : P.TirePumps) : m.tire40Need = 300 := P.tires_forty m
theorem tires_seventy (m : P.TirePumps) : m.tire70Need = 150 := P.tires_seventy m
theorem tires_total (m : P.TirePumps) : m.totalNeed = 1450 := P.tires_total m
theorem tires_solution (m : P.TirePumps) : m.pumps = 29 := P.tires_solution m
theorem peppers_total (m : P.PepperHarvest) : m.total = 80 := P.peppers_total m
theorem peppers_hot (m : P.PepperHarvest) : m.hot = 16 := P.peppers_hot m
theorem peppers_solution (m : P.PepperHarvest) : m.nonHot = 64 := P.peppers_solution m
theorem deli_sandwiches (m : P.DeliPurchase) : m.sandwiches = 1550 := P.deli_sandwiches m
theorem deli_brie (m : P.DeliPurchase) : m.brie = 1200 := P.deli_brie m
theorem deli_olives (m : P.DeliPurchase) : m.olives = 250 := P.deli_olives m
theorem deli_feta (m : P.DeliPurchase) : m.feta = 400 := P.deli_feta m
theorem deli_solution (m : P.DeliPurchase) : m.total = 4000 := P.deli_solution m
theorem boxes_boxed (m : P.UniformChocolateBoxes) : m.boxed = 45 := P.boxes_boxed m
theorem boxes_capacity (m : P.UniformChocolateBoxes) : m.capacity = 15 := P.boxes_capacity m
theorem boxes_to_box (m : P.UniformChocolateBoxes) : m.toBox = 30 := P.boxes_to_box m
theorem boxes_reference_solution (m : P.UniformChocolateBoxes) : m.boxesNeeded = 2 := P.boxes_reference_solution m
theorem boxes_nonuniform_countermodel : (10 + 15 + 20 = 45) ∧ (3 * 10 = 30) := P.boxes_nonuniform_countermodel
theorem boxes_two_capacity_readings_differ : (2 : ℕ) ≠ 3 := P.boxes_two_capacity_readings_differ
theorem portraits_before (m : P.Portraits) : m.beforeLunch = 8 := P.portraits_before m
theorem portraits_photographed (m : P.Portraits) : m.photographed = 18 := P.portraits_photographed m
theorem portraits_solution (m : P.Portraits) : m.remaining = 6 := P.portraits_solution m
theorem ship_second (m : P.ShipJourney) : m.second = 300 := P.ship_second m
theorem ship_third (m : P.ShipJourney) : m.third = 410 := P.ship_third m
theorem ship_solution (m : P.ShipJourney) : m.total = 810 := P.ship_solution m
theorem jail_base (m : P.JailSentence) : m.base = 27 := P.jail_base m
theorem jail_extension (m : P.JailSentence) : m.extension = 9 := P.jail_extension m
theorem jail_solution (m : P.JailSentence) : m.total = 36 := P.jail_solution m

end LemmaWeave.Tests.GSM8KSprint0923A12

#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.quiz_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.pharmacy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.supplies_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.nap_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.produce_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.corn_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.trees_reference_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.trees_inclusive_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.trees_two_birthday_readings_differ
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.legs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.tires_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.peppers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.deli_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.boxes_reference_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.boxes_nonuniform_countermodel
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.boxes_two_capacity_readings_differ
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.portraits_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.ship_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A12.jail_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.quiz_solution to "work/gsm8k-sprint102-quiz-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.pharmacy_solution to "work/gsm8k-sprint102-pharmacy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.supplies_solution to "work/gsm8k-sprint102-supplies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.nap_solution to "work/gsm8k-sprint102-nap-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.produce_solution to "work/gsm8k-sprint102-produce-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.corn_solution to "work/gsm8k-sprint102-corn-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.trees_reference_solution to "work/gsm8k-sprint102-trees-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.legs_solution to "work/gsm8k-sprint102-legs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.tires_solution to "work/gsm8k-sprint102-tires-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.peppers_solution to "work/gsm8k-sprint102-peppers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.deli_solution to "work/gsm8k-sprint102-deli-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.boxes_reference_solution to "work/gsm8k-sprint102-boxes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.portraits_solution to "work/gsm8k-sprint102-portraits-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.ship_solution to "work/gsm8k-sprint102-ship-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.jail_solution to "work/gsm8k-sprint102-jail-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.boxes_two_capacity_readings_differ to "work/gsm8k-sprint102-boxes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.trees_two_birthday_readings_differ to "work/gsm8k-sprint102-trees-graph.json"
