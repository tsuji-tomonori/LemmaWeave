import LemmaWeave.Problems.GSM8K.Sprint0921A20Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0921A20
open LemmaWeave.Problems.GSM8K.Sprint0921A20

theorem annual_new_weekly (m : AnnualRaise) : m.newWeekly = 800 := LemmaWeave.Problems.GSM8K.Sprint0921A20.annual_new_weekly m
theorem annual_old_weekly (m : AnnualRaise) : m.oldWeekly = 400 := LemmaWeave.Problems.GSM8K.Sprint0921A20.annual_old_weekly m
theorem annual_weekly_gain (m : AnnualRaise) : m.weeklyGain = 400 := LemmaWeave.Problems.GSM8K.Sprint0921A20.annual_weekly_gain m
theorem annual_solution (m : AnnualRaise) : m.annualGain = 20800 := LemmaWeave.Problems.GSM8K.Sprint0921A20.annual_solution m
theorem gym_nike (m : GymSpending) : m.nike = 1800 := LemmaWeave.Problems.GSM8K.Sprint0921A20.gym_nike m
theorem gym_skechers (m : GymSpending) : m.skechers = 3000 := LemmaWeave.Problems.GSM8K.Sprint0921A20.gym_skechers m
theorem gym_sneakers (m : GymSpending) : m.sneakerTotal = 5400 := LemmaWeave.Problems.GSM8K.Sprint0921A20.gym_sneakers m
theorem gym_solution (m : GymSpending) : m.clothes = 2600 := LemmaWeave.Problems.GSM8K.Sprint0921A20.gym_solution m
theorem toads_brown (m : Toads) : m.brown = 200 := LemmaWeave.Problems.GSM8K.Sprint0921A20.toads_brown m
theorem toads_solution (m : Toads) : m.green = 8 := LemmaWeave.Problems.GSM8K.Sprint0921A20.toads_solution m
theorem cabinets_per_counter (m : Cabinets) : m.perCounter = 6 := LemmaWeave.Problems.GSM8K.Sprint0921A20.cabinets_per_counter m
theorem cabinets_installed (m : Cabinets) : m.installed = 18 := LemmaWeave.Problems.GSM8K.Sprint0921A20.cabinets_installed m
theorem cabinets_added (m : Cabinets) : m.installed + m.extra = 23 := LemmaWeave.Problems.GSM8K.Sprint0921A20.cabinets_added m
theorem cabinets_solution (m : Cabinets) : m.total = 26 := LemmaWeave.Problems.GSM8K.Sprint0921A20.cabinets_solution m
theorem kabob_cubes (m : Kabob) : m.totalCubes = 160 := LemmaWeave.Problems.GSM8K.Sprint0921A20.kabob_cubes m
theorem kabob_slabs (m : Kabob) : m.slabs = 2 := LemmaWeave.Problems.GSM8K.Sprint0921A20.kabob_slabs m
theorem kabob_solution (m : Kabob) : m.totalCost = 50 := LemmaWeave.Problems.GSM8K.Sprint0921A20.kabob_solution m
theorem rowing_first_two (m : Rowing) : m.firstTwo = 21 := LemmaWeave.Problems.GSM8K.Sprint0921A20.rowing_first_two m
theorem rowing_solution (m : Rowing) : m.total = 39 := LemmaWeave.Problems.GSM8K.Sprint0921A20.rowing_solution m
theorem butterfly_total (m : ButterflyAmbiguity) : m.total = 40 := LemmaWeave.Problems.GSM8K.Sprint0921A20.butterfly_total m
theorem butterfly_failed (m : ButterflyAmbiguity) : m.failed = 16 := LemmaWeave.Problems.GSM8K.Sprint0921A20.butterfly_failed m
theorem butterfly_survivors (m : ButterflyAmbiguity) : m.survivors = 24 := LemmaWeave.Problems.GSM8K.Sprint0921A20.butterfly_survivors m
theorem butterfly_literal (m : ButterflyAmbiguity) : m.literalRevenue = 0 := LemmaWeave.Problems.GSM8K.Sprint0921A20.butterfly_literal m
theorem butterfly_corrected (m : ButterflyAmbiguity) : m.correctedRevenue = 72 := LemmaWeave.Problems.GSM8K.Sprint0921A20.butterfly_corrected m
theorem butterfly_nonunique (m : ButterflyAmbiguity) : m.literalRevenue ≠ m.correctedRevenue := LemmaWeave.Problems.GSM8K.Sprint0921A20.butterfly_nonunique m
theorem stuffed_thor (m : StuffedAnimals) : m.thor = 20 := LemmaWeave.Problems.GSM8K.Sprint0921A20.stuffed_thor m
theorem stuffed_jake (m : StuffedAnimals) : m.jake = 30 := LemmaWeave.Problems.GSM8K.Sprint0921A20.stuffed_jake m
theorem stuffed_solution (m : StuffedAnimals) : m.difference = 170 := LemmaWeave.Problems.GSM8K.Sprint0921A20.stuffed_solution m
theorem fan_minutes (m : FanAirflow) : m.totalMinutes = 70 := LemmaWeave.Problems.GSM8K.Sprint0921A20.fan_minutes m
theorem fan_seconds (m : FanAirflow) : m.totalSeconds = 4200 := LemmaWeave.Problems.GSM8K.Sprint0921A20.fan_seconds m
theorem fan_solution (m : FanAirflow) : m.totalLiters = 42000 := LemmaWeave.Problems.GSM8K.Sprint0921A20.fan_solution m
theorem camel_conventional_inches (m : CamelAmbiguity) : m.conventionalInches = 336 := LemmaWeave.Problems.GSM8K.Sprint0921A20.camel_conventional_inches m
theorem camel_conventional_feet (m : CamelAmbiguity) : m.conventionalFeet = 28 := LemmaWeave.Problems.GSM8K.Sprint0921A20.camel_conventional_feet m
theorem camel_additive_inches (m : CamelAmbiguity) : m.additiveInches = 350 := LemmaWeave.Problems.GSM8K.Sprint0921A20.camel_additive_inches m
theorem camel_additive_feet (m : CamelAmbiguity) : m.additiveInches * 6 = 175 * 12 := LemmaWeave.Problems.GSM8K.Sprint0921A20.camel_additive_feet m
theorem camel_nonunique (m : CamelAmbiguity) : m.conventionalInches ≠ m.additiveInches := LemmaWeave.Problems.GSM8K.Sprint0921A20.camel_nonunique m
theorem sod_yard (m : Sod) : m.yard = 260 := LemmaWeave.Problems.GSM8K.Sprint0921A20.sod_yard m
theorem sod_shed (m : Sod) : m.shed = 15 := LemmaWeave.Problems.GSM8K.Sprint0921A20.sod_shed m
theorem sod_solution (m : Sod) : m.sod = 245 := LemmaWeave.Problems.GSM8K.Sprint0921A20.sod_solution m
theorem clothes_shirts (m : Clothes) : m.shirts = 240 := LemmaWeave.Problems.GSM8K.Sprint0921A20.clothes_shirts m
theorem clothes_solution (m : Clothes) : m.total = 280 := LemmaWeave.Problems.GSM8K.Sprint0921A20.clothes_solution m
theorem purple_green_rooms (m : PurpleWalls) : m.greenRooms = 6 := LemmaWeave.Problems.GSM8K.Sprint0921A20.purple_green_rooms m
theorem purple_rooms (m : PurpleWalls) : m.purpleRooms = 4 := LemmaWeave.Problems.GSM8K.Sprint0921A20.purple_rooms m
theorem purple_solution (m : PurpleWalls) : m.purpleWalls = 32 := LemmaWeave.Problems.GSM8K.Sprint0921A20.purple_solution m
theorem cents_before_spending (m : Cents) : m.start + m.found = 120 := LemmaWeave.Problems.GSM8K.Sprint0921A20.cents_before_spending m
theorem cents_after_spending (m : Cents) : m.start + m.found - m.spent = 70 := LemmaWeave.Problems.GSM8K.Sprint0921A20.cents_after_spending m
theorem cents_solution (m : Cents) : m.final = 140 := LemmaWeave.Problems.GSM8K.Sprint0921A20.cents_solution m
theorem catering_chicken (m : Catering) : m.chicken = 20 := LemmaWeave.Problems.GSM8K.Sprint0921A20.catering_chicken m
theorem catering_steak (m : Catering) : m.steak = 60 := LemmaWeave.Problems.GSM8K.Sprint0921A20.catering_steak m
theorem catering_costs (m : Catering) : m.chickenCost = 360 ∧ m.steakCost = 1500 := LemmaWeave.Problems.GSM8K.Sprint0921A20.catering_costs m
theorem catering_solution (m : Catering) : m.totalCost = 1860 := LemmaWeave.Problems.GSM8K.Sprint0921A20.catering_solution m

end LemmaWeave.Tests.GSM8KSprint0921A20

#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.annual_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.butterfly_nonunique
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.cabinets_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.camel_nonunique
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.catering_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.cents_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.clothes_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.fan_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.gym_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.kabob_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.purple_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.rowing_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.sod_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.stuffed_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0921A20.toads_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.annual_solution to "work/gsm8k-sprint71-annual_raise-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.butterfly_nonunique to "work/gsm8k-sprint71-butterflies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.cabinets_solution to "work/gsm8k-sprint71-cabinets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.camel_nonunique to "work/gsm8k-sprint71-camel-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.catering_solution to "work/gsm8k-sprint71-catering-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.cents_solution to "work/gsm8k-sprint71-cents-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.clothes_solution to "work/gsm8k-sprint71-clothes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.fan_solution to "work/gsm8k-sprint71-fan_water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.gym_solution to "work/gsm8k-sprint71-gym-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.kabob_solution to "work/gsm8k-sprint71-kabob-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.purple_solution to "work/gsm8k-sprint71-purple_walls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.rowing_solution to "work/gsm8k-sprint71-rowing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.sod_solution to "work/gsm8k-sprint71-sod-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.stuffed_solution to "work/gsm8k-sprint71-stuffed_animals-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A20.toads_solution to "work/gsm8k-sprint71-toads-graph.json"
