import LemmaWeave.Problems.GSM8K.Sprint0922A00Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A00
open LemmaWeave.Problems.GSM8K.Sprint0922A00

theorem reading_oliver (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.ReadingPages) : m.oliver = 40 := LemmaWeave.Problems.GSM8K.Sprint0922A00.reading_oliver m
theorem reading_lucy (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.ReadingPages) : m.lucy = 60 := LemmaWeave.Problems.GSM8K.Sprint0922A00.reading_lucy m
theorem reading_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.ReadingPages) : m.carter = 30 := LemmaWeave.Problems.GSM8K.Sprint0922A00.reading_solution m
theorem orchard_triple (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Orchard) : m.triple = 42 := LemmaWeave.Problems.GSM8K.Sprint0922A00.orchard_triple m
theorem orchard_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Orchard) : m.sunshine = 54 := LemmaWeave.Problems.GSM8K.Sprint0922A00.orchard_solution m
theorem annie_burgers (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.AnnieMoney) : m.burgerCost = 32 := LemmaWeave.Problems.GSM8K.Sprint0922A00.annie_burgers m
theorem annie_shakes (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.AnnieMoney) : m.shakeCost = 30 := LemmaWeave.Problems.GSM8K.Sprint0922A00.annie_shakes m
theorem annie_spent (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.AnnieMoney) : m.spent = 62 := LemmaWeave.Problems.GSM8K.Sprint0922A00.annie_spent m
theorem annie_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.AnnieMoney) : m.initial = 132 := LemmaWeave.Problems.GSM8K.Sprint0922A00.annie_solution m
theorem gumballs_joanna_bought (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Gumballs) : m.joannaBought = 160 := LemmaWeave.Problems.GSM8K.Sprint0922A00.gumballs_joanna_bought m
theorem gumballs_joanna_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Gumballs) : m.joannaTotal = 200 := LemmaWeave.Problems.GSM8K.Sprint0922A00.gumballs_joanna_total m
theorem gumballs_jacques_bought (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Gumballs) : m.jacquesBought = 240 := LemmaWeave.Problems.GSM8K.Sprint0922A00.gumballs_jacques_bought m
theorem gumballs_jacques_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Gumballs) : m.jacquesTotal = 300 := LemmaWeave.Problems.GSM8K.Sprint0922A00.gumballs_jacques_total m
theorem gumballs_pooled (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Gumballs) : m.pooled = 500 := LemmaWeave.Problems.GSM8K.Sprint0922A00.gumballs_pooled m
theorem gumballs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Gumballs) : m.each = 250 := LemmaWeave.Problems.GSM8K.Sprint0922A00.gumballs_solution m
theorem cupcake_made (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CupcakeProfit) : m.made = 72 := LemmaWeave.Problems.GSM8K.Sprint0922A00.cupcake_made m
theorem cupcake_burnt (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CupcakeProfit) : m.burnt = 24 := LemmaWeave.Problems.GSM8K.Sprint0922A00.cupcake_burnt m
theorem cupcake_eaten (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CupcakeProfit) : m.eaten = 9 := LemmaWeave.Problems.GSM8K.Sprint0922A00.cupcake_eaten m
theorem cupcake_remaining (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CupcakeProfit) : m.remaining = 39 := LemmaWeave.Problems.GSM8K.Sprint0922A00.cupcake_remaining m
theorem cupcake_revenue (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CupcakeProfit) : m.revenueCents = 7800 := LemmaWeave.Problems.GSM8K.Sprint0922A00.cupcake_revenue m
theorem cupcake_cost (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CupcakeProfit) : m.costCents = 5400 := LemmaWeave.Problems.GSM8K.Sprint0922A00.cupcake_cost m
theorem cupcake_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CupcakeProfit) : m.profitCents = 2400 := LemmaWeave.Problems.GSM8K.Sprint0922A00.cupcake_solution m
theorem college_tuition (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CollegeCost) : m.tuition = 6300 := LemmaWeave.Problems.GSM8K.Sprint0922A00.college_tuition m
theorem college_books (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CollegeCost) : m.books = 600 := LemmaWeave.Problems.GSM8K.Sprint0922A00.college_books m
theorem college_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.CollegeCost) : m.total = 7100 := LemmaWeave.Problems.GSM8K.Sprint0922A00.college_solution m
theorem drive_capacity (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.DriveStorage) : m.capacityHalfKB = 6000 := LemmaWeave.Problems.GSM8K.Sprint0922A00.drive_capacity m
theorem drive_used (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.DriveStorage) : m.usedHalfKB = 1200 := LemmaWeave.Problems.GSM8K.Sprint0922A00.drive_used m
theorem drive_remaining (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.DriveStorage) : m.remainingHalfKB = 4800 := LemmaWeave.Problems.GSM8K.Sprint0922A00.drive_remaining m
theorem drive_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.DriveStorage) : m.videoCount = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A00.drive_solution m
theorem ivy_afternoon (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.IvyCupcakes) : m.afternoon = 35 := LemmaWeave.Problems.GSM8K.Sprint0922A00.ivy_afternoon m
theorem ivy_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.IvyCupcakes) : m.total = 55 := LemmaWeave.Problems.GSM8K.Sprint0922A00.ivy_solution m
theorem crowdfunding_low (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Crowdfunding) : m.low = 50 := LemmaWeave.Problems.GSM8K.Sprint0922A00.crowdfunding_low m
theorem crowdfunding_second (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Crowdfunding) : m.second = 500 := LemmaWeave.Problems.GSM8K.Sprint0922A00.crowdfunding_second m
theorem crowdfunding_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Crowdfunding) : m.high = 5000 := LemmaWeave.Problems.GSM8K.Sprint0922A00.crowdfunding_solution m
theorem heights_kim (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Heights) : m.kim = 24 := LemmaWeave.Problems.GSM8K.Sprint0922A00.heights_kim m
theorem heights_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Heights) : m.tamara = 68 := LemmaWeave.Problems.GSM8K.Sprint0922A00.heights_solution m
theorem bowling_first_equals_third (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Bowling) : m.first = m.third := LemmaWeave.Problems.GSM8K.Sprint0922A00.bowling_first_equals_third m
theorem bowling_second (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Bowling) : m.second = 486 := LemmaWeave.Problems.GSM8K.Sprint0922A00.bowling_second m
theorem bowling_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Bowling) : m.third = 162 := LemmaWeave.Problems.GSM8K.Sprint0922A00.bowling_solution m
theorem tape_combined (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.DuctTape) : m.combined = 11 := LemmaWeave.Problems.GSM8K.Sprint0922A00.tape_combined m
theorem tape_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.DuctTape) : m.minutes = 2 := LemmaWeave.Problems.GSM8K.Sprint0922A00.tape_solution m
theorem inheritance_natalie (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Inheritance) : m.natalie = 5000 := LemmaWeave.Problems.GSM8K.Sprint0922A00.inheritance_natalie m
theorem inheritance_remaining (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Inheritance) : m.remaining = 5000 := LemmaWeave.Problems.GSM8K.Sprint0922A00.inheritance_remaining m
theorem inheritance_rick (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Inheritance) : m.rick = 3000 := LemmaWeave.Problems.GSM8K.Sprint0922A00.inheritance_rick m
theorem inheritance_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Inheritance) : m.lucy = 2000 := LemmaWeave.Problems.GSM8K.Sprint0922A00.inheritance_solution m
theorem typing_micah (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Typing) : m.micahHour = 1200 := LemmaWeave.Problems.GSM8K.Sprint0922A00.typing_micah m
theorem typing_isaiah (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Typing) : m.isaiahHour = 2400 := LemmaWeave.Problems.GSM8K.Sprint0922A00.typing_isaiah m
theorem typing_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.Typing) : m.difference = 1200 := LemmaWeave.Problems.GSM8K.Sprint0922A00.typing_solution m
theorem land_people (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.LandShare) : m.people = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A00.land_people m
theorem land_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A00.LandShare) : m.share = 4000 := LemmaWeave.Problems.GSM8K.Sprint0922A00.land_solution m

end LemmaWeave.Tests.GSM8KSprint0922A00

#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.annie_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.bowling_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.college_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.crowdfunding_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.cupcake_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.drive_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.tape_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.gumballs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.inheritance_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.ivy_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.land_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.orchard_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.reading_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.heights_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A00.typing_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.annie_solution to "work/gsm8k-sprint72-annie-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.bowling_solution to "work/gsm8k-sprint72-bowling-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.college_solution to "work/gsm8k-sprint72-college-cost-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.crowdfunding_solution to "work/gsm8k-sprint72-crowdfunding-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.cupcake_solution to "work/gsm8k-sprint72-cupcake-profit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.drive_solution to "work/gsm8k-sprint72-drive-storage-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.tape_solution to "work/gsm8k-sprint72-duct-tape-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.gumballs_solution to "work/gsm8k-sprint72-gumballs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.inheritance_solution to "work/gsm8k-sprint72-inheritance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.ivy_solution to "work/gsm8k-sprint72-ivy-cupcakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.land_solution to "work/gsm8k-sprint72-land-share-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.orchard_solution to "work/gsm8k-sprint72-orchard-pumpkins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.reading_solution to "work/gsm8k-sprint72-reading-pages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.heights_solution to "work/gsm8k-sprint72-tamara-height-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A00.typing_solution to "work/gsm8k-sprint72-typing-graph.json"
