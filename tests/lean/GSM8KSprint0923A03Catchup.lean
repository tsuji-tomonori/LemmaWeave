import LemmaWeave.Problems.GSM8K.Sprint0923A03CatchupModels
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A03Catchup


theorem credit_after_payment (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.CreditCard) : m.afterPayment = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.credit_after_payment m
theorem credit_interest (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.CreditCard) : m.interest = 20 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.credit_interest m
theorem credit_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.CreditCard) : m.final = 120 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.credit_solution m
theorem shoes_paid_percent : 100 - 20 = 80 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.shoes_paid_percent
theorem shoes_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.DiscountedShoes) : m.original = 600 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.shoes_solution m
theorem dogs_ivan (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.DogWeights) : m.ivan = 9 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.dogs_ivan m
theorem dogs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.DogWeights) : m.total = 72 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.dogs_solution m
theorem race_speeds (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.RaceAverage) : m.speed2 = 200 ∧ m.speed3 = 300 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.race_speeds m
theorem race_time1 (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.RaceAverage) : m.time1 = 72 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.race_time1 m
theorem race_time2 (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.RaceAverage) : m.time2 = 36 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.race_time2 m
theorem race_time3 (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.RaceAverage) : m.time3 = 12 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.race_time3 m
theorem race_total_time (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.RaceAverage) : m.totalTime = 120 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.race_total_time m
theorem race_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.RaceAverage) : m.average = 180 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.race_solution m
theorem money_howard (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SharedMoney) : m.howard = 120 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.money_howard m
theorem money_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SharedMoney) : m.total = 270 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.money_total m
theorem money_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SharedMoney) : m.each = 135 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.money_solution m
theorem stamps_added (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.Scrapbook) : m.added = 18 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.stamps_added m
theorem stamps_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.Scrapbook) : m.total = 36 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.stamps_solution m
theorem medical_mri (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.MedicalCosts) : m.mri = 750 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.medical_mri m
theorem medical_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.MedicalCosts) : m.total = 1000 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.medical_total m
theorem medical_covered (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.MedicalCosts) : m.covered = 800 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.medical_covered m
theorem medical_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.MedicalCosts) : m.paid = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.medical_solution m
theorem school_female (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SchoolPopulation) : m.female = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.school_female m
theorem school_male (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SchoolPopulation) : m.male = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.school_male m
theorem school_foreign_male (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SchoolPopulation) : m.foreignMale = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.school_foreign_male m
theorem school_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SchoolPopulation) : m.nonForeignMale = 90 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.school_solution m
theorem socks_first_each (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SockProfit) : m.firstEach = 50 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.socks_first_each m
theorem socks_first_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SockProfit) : m.firstTotal = 200 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.socks_first_total m
theorem socks_other_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SockProfit) : m.otherTotal = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.socks_other_total m
theorem socks_total_cents (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SockProfit) : m.totalCents = 300 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.socks_total_cents m
theorem socks_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.SockProfit) : m.totalDollars = 3 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.socks_solution m
theorem height_kelly (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.Heights) : m.kelly = 69 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.height_kelly m
theorem height_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.Heights) : m.jana = 74 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.height_solution m
theorem bugs_crickets (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.BugCollection) : m.crickets = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.bugs_crickets m
theorem bugs_caterpillars (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.BugCollection) : m.caterpillars = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.bugs_caterpillars m
theorem bugs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.BugCollection) : m.total = 27 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.bugs_solution m
theorem doughnuts_singles (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.DoughnutSavings) : m.singles = 48 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.doughnuts_singles m
theorem doughnuts_doubles (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.DoughnutSavings) : m.doubles = 42 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.doughnuts_doubles m
theorem doughnuts_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.DoughnutSavings) : m.saving = 6 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.doughnuts_solution m
theorem longjump_jump (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.LongJump) : m.margaritaJump = 7 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.longjump_jump m
theorem longjump_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.LongJump) : m.margaritaTotal = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.longjump_total m
theorem longjump_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.LongJump) : m.farther = 1 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.longjump_solution m
theorem icecream_flavors (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.IceCream) :
    m.chocolateUsed = 7 ∧ m.vanillaUsed = 4 ∧ m.strawberryUsed = 3 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.icecream_flavors m
theorem icecream_used (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.IceCream) : m.used = 14 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.icecream_used m
theorem icecream_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.IceCream) : m.remaining = 16 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.icecream_solution m
theorem wardrobe_pajamas (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.WardrobeDonation) : m.pajamas = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.wardrobe_pajamas m
theorem wardrobe_adam_selected (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.WardrobeDonation) : m.adamSelected = 36 :=
  LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.wardrobe_adam_selected m
theorem wardrobe_friends (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.WardrobeDonation) : m.friends = 108 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.wardrobe_friends m
theorem wardrobe_adam_actual (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.WardrobeDonation) : m.adamActual = 18 :=
  LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.wardrobe_adam_actual m
theorem wardrobe_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.WardrobeDonation) : m.total = 126 := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup.wardrobe_solution m

end LemmaWeave.Tests.GSM8KSprint0923A03Catchup

#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.credit_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.shoes_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.dogs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.race_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.money_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.stamps_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.medical_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.school_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.socks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.height_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.bugs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.doughnuts_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.longjump_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.icecream_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A03Catchup.wardrobe_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.credit_solution to "work/gsm8k-sprint96-credit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.shoes_solution to "work/gsm8k-sprint96-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.dogs_solution to "work/gsm8k-sprint96-dogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.race_solution to "work/gsm8k-sprint96-race-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.money_solution to "work/gsm8k-sprint96-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.stamps_solution to "work/gsm8k-sprint96-stamps-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.medical_solution to "work/gsm8k-sprint96-medical-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.school_solution to "work/gsm8k-sprint96-school-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.socks_solution to "work/gsm8k-sprint96-socks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.height_solution to "work/gsm8k-sprint96-height-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.bugs_solution to "work/gsm8k-sprint96-bugs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.doughnuts_solution to "work/gsm8k-sprint96-doughnuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.longjump_solution to "work/gsm8k-sprint96-longjump-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.icecream_solution to "work/gsm8k-sprint96-icecream-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A03Catchup.wardrobe_solution to "work/gsm8k-sprint96-wardrobe-graph.json"
