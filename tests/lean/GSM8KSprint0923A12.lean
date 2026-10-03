import LemmaWeave.Problems.GSM8K.Sprint0923A12Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A12


theorem quiz_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.QuizAverage) : m.total = 273 := LemmaWeave.Problems.GSM8K.Sprint0923A12.quiz_total m
theorem quiz_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.QuizAverage) : m.average = 91 := LemmaWeave.Problems.GSM8K.Sprint0923A12.quiz_solution m
theorem pharmacy_weekly_100 (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.PharmacySales) : m.weekly100 = 16 := LemmaWeave.Problems.GSM8K.Sprint0923A12.pharmacy_weekly_100 m
theorem pharmacy_weekly_500 (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.PharmacySales) : m.weekly500 = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A12.pharmacy_weekly_500 m
theorem pharmacy_two_weeks_100 (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.PharmacySales) : m.twoWeeks100 = 32 := LemmaWeave.Problems.GSM8K.Sprint0923A12.pharmacy_two_weeks_100 m
theorem pharmacy_two_weeks_500 (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.PharmacySales) : m.twoWeeks500 = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A12.pharmacy_two_weeks_500 m
theorem pharmacy_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.PharmacySales) : m.total = 92 := LemmaWeave.Problems.GSM8K.Sprint0923A12.pharmacy_solution m
theorem supplies_paper (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ArtSupplies) : m.paper = 24 := LemmaWeave.Problems.GSM8K.Sprint0923A12.supplies_paper m
theorem supplies_bought (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ArtSupplies) : m.bought = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A12.supplies_bought m
theorem supplies_dropped (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ArtSupplies) : m.dropped = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A12.supplies_dropped m
theorem supplies_remaining (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ArtSupplies) : m.remaining = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A12.supplies_remaining m
theorem supplies_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ArtSupplies) : m.final = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A12.supplies_solution m
theorem nap_activities (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TrainNap) : m.activities = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A12.nap_activities m
theorem nap_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TrainNap) : m.nap = 3 := LemmaWeave.Problems.GSM8K.Sprint0923A12.nap_solution m
theorem produce_tomatoes (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ProduceRevenue) : m.tomatoes = 20000 := LemmaWeave.Problems.GSM8K.Sprint0923A12.produce_tomatoes m
theorem produce_carrots (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ProduceRevenue) : m.carrots = 52500 := LemmaWeave.Problems.GSM8K.Sprint0923A12.produce_carrots m
theorem produce_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ProduceRevenue) : m.total = 72500 := LemmaWeave.Problems.GSM8K.Sprint0923A12.produce_solution m
theorem corn_children (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.CornPreference) : m.children = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A12.corn_children m
theorem corn_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.CornPreference) : m.percent = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A12.corn_solution m
theorem trees_five_initial (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TreesFiveRows) : m.initial = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A12.trees_five_initial m
theorem trees_five_added (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TreesFiveRows) : m.added = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A12.trees_five_added m
theorem trees_five_before (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TreesFiveRows) : m.beforeDoubling = 28 := LemmaWeave.Problems.GSM8K.Sprint0923A12.trees_five_before m
theorem trees_reference_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TreesFiveRows) : m.final = 56 := LemmaWeave.Problems.GSM8K.Sprint0923A12.trees_reference_solution m
theorem trees_six_initial (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TreesSixRows) : m.initial = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A12.trees_six_initial m
theorem trees_six_added (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TreesSixRows) : m.added = 24 := LemmaWeave.Problems.GSM8K.Sprint0923A12.trees_six_added m
theorem trees_six_before (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TreesSixRows) : m.beforeDoubling = 32 := LemmaWeave.Problems.GSM8K.Sprint0923A12.trees_six_before m
theorem trees_inclusive_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TreesSixRows) : m.final = 64 := LemmaWeave.Problems.GSM8K.Sprint0923A12.trees_inclusive_solution m
theorem trees_two_birthday_readings_differ : (56 : ℕ) ≠ 64 := LemmaWeave.Problems.GSM8K.Sprint0923A12.trees_two_birthday_readings_differ
theorem legs_humans (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.WalkingLegs) : m.humanLegs = 4 := LemmaWeave.Problems.GSM8K.Sprint0923A12.legs_humans m
theorem legs_dogs (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.WalkingLegs) : m.dogLegs = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A12.legs_dogs m
theorem legs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.WalkingLegs) : m.total = 12 := LemmaWeave.Problems.GSM8K.Sprint0923A12.legs_solution m
theorem tires_empty (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TirePumps) : m.emptyNeed = 1000 := LemmaWeave.Problems.GSM8K.Sprint0923A12.tires_empty m
theorem tires_forty (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TirePumps) : m.tire40Need = 300 := LemmaWeave.Problems.GSM8K.Sprint0923A12.tires_forty m
theorem tires_seventy (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TirePumps) : m.tire70Need = 150 := LemmaWeave.Problems.GSM8K.Sprint0923A12.tires_seventy m
theorem tires_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TirePumps) : m.totalNeed = 1450 := LemmaWeave.Problems.GSM8K.Sprint0923A12.tires_total m
theorem tires_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.TirePumps) : m.pumps = 29 := LemmaWeave.Problems.GSM8K.Sprint0923A12.tires_solution m
theorem peppers_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.PepperHarvest) : m.total = 80 := LemmaWeave.Problems.GSM8K.Sprint0923A12.peppers_total m
theorem peppers_hot (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.PepperHarvest) : m.hot = 16 := LemmaWeave.Problems.GSM8K.Sprint0923A12.peppers_hot m
theorem peppers_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.PepperHarvest) : m.nonHot = 64 := LemmaWeave.Problems.GSM8K.Sprint0923A12.peppers_solution m
theorem deli_sandwiches (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.DeliPurchase) : m.sandwiches = 1550 := LemmaWeave.Problems.GSM8K.Sprint0923A12.deli_sandwiches m
theorem deli_brie (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.DeliPurchase) : m.brie = 1200 := LemmaWeave.Problems.GSM8K.Sprint0923A12.deli_brie m
theorem deli_olives (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.DeliPurchase) : m.olives = 250 := LemmaWeave.Problems.GSM8K.Sprint0923A12.deli_olives m
theorem deli_feta (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.DeliPurchase) : m.feta = 400 := LemmaWeave.Problems.GSM8K.Sprint0923A12.deli_feta m
theorem deli_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.DeliPurchase) : m.total = 4000 := LemmaWeave.Problems.GSM8K.Sprint0923A12.deli_solution m
theorem boxes_boxed (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.UniformChocolateBoxes) : m.boxed = 45 := LemmaWeave.Problems.GSM8K.Sprint0923A12.boxes_boxed m
theorem boxes_capacity (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.UniformChocolateBoxes) : m.capacity = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A12.boxes_capacity m
theorem boxes_to_box (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.UniformChocolateBoxes) : m.toBox = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A12.boxes_to_box m
theorem boxes_reference_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.UniformChocolateBoxes) : m.boxesNeeded = 2 := LemmaWeave.Problems.GSM8K.Sprint0923A12.boxes_reference_solution m
theorem boxes_nonuniform_countermodel : (10 + 15 + 20 = 45) ∧ (3 * 10 = 30) := LemmaWeave.Problems.GSM8K.Sprint0923A12.boxes_nonuniform_countermodel
theorem boxes_two_capacity_readings_differ : (2 : ℕ) ≠ 3 := LemmaWeave.Problems.GSM8K.Sprint0923A12.boxes_two_capacity_readings_differ
theorem portraits_before (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.Portraits) : m.beforeLunch = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A12.portraits_before m
theorem portraits_photographed (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.Portraits) : m.photographed = 18 := LemmaWeave.Problems.GSM8K.Sprint0923A12.portraits_photographed m
theorem portraits_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.Portraits) : m.remaining = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A12.portraits_solution m
theorem ship_second (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ShipJourney) : m.second = 300 := LemmaWeave.Problems.GSM8K.Sprint0923A12.ship_second m
theorem ship_third (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ShipJourney) : m.third = 410 := LemmaWeave.Problems.GSM8K.Sprint0923A12.ship_third m
theorem ship_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.ShipJourney) : m.total = 810 := LemmaWeave.Problems.GSM8K.Sprint0923A12.ship_solution m
theorem jail_base (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.JailSentence) : m.base = 27 := LemmaWeave.Problems.GSM8K.Sprint0923A12.jail_base m
theorem jail_extension (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.JailSentence) : m.extension = 9 := LemmaWeave.Problems.GSM8K.Sprint0923A12.jail_extension m
theorem jail_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A12.JailSentence) : m.total = 36 := LemmaWeave.Problems.GSM8K.Sprint0923A12.jail_solution m

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
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.trees_reference_solution to "work/lw-preserved-LemmaWeave.Tests.GSM8KSprint0923A12.trees_reference_solution-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.legs_solution to "work/gsm8k-sprint102-legs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.tires_solution to "work/gsm8k-sprint102-tires-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.peppers_solution to "work/gsm8k-sprint102-peppers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.deli_solution to "work/gsm8k-sprint102-deli-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.boxes_reference_solution to "work/lw-preserved-LemmaWeave.Tests.GSM8KSprint0923A12.boxes_reference_solution-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.portraits_solution to "work/gsm8k-sprint102-portraits-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.ship_solution to "work/gsm8k-sprint102-ship-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.jail_solution to "work/gsm8k-sprint102-jail-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.boxes_two_capacity_readings_differ to "work/gsm8k-sprint102-boxes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A12.trees_two_birthday_readings_differ to "work/gsm8k-sprint102-trees-graph.json"
