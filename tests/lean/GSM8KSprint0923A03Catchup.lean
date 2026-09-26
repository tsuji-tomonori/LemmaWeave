import LemmaWeave.Problems.GSM8K.Sprint0923A03CatchupModels
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A03Catchup
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A03Catchup

theorem credit_after_payment (m : P.CreditCard) : m.afterPayment = 100 := P.credit_after_payment m
theorem credit_interest (m : P.CreditCard) : m.interest = 20 := P.credit_interest m
theorem credit_solution (m : P.CreditCard) : m.final = 120 := P.credit_solution m
theorem shoes_paid_percent : 100 - 20 = 80 := P.shoes_paid_percent
theorem shoes_solution (m : P.DiscountedShoes) : m.original = 600 := P.shoes_solution m
theorem dogs_ivan (m : P.DogWeights) : m.ivan = 9 := P.dogs_ivan m
theorem dogs_solution (m : P.DogWeights) : m.total = 72 := P.dogs_solution m
theorem race_speeds (m : P.RaceAverage) : m.speed2 = 200 ∧ m.speed3 = 300 := P.race_speeds m
theorem race_time1 (m : P.RaceAverage) : m.time1 = 72 := P.race_time1 m
theorem race_time2 (m : P.RaceAverage) : m.time2 = 36 := P.race_time2 m
theorem race_time3 (m : P.RaceAverage) : m.time3 = 12 := P.race_time3 m
theorem race_total_time (m : P.RaceAverage) : m.totalTime = 120 := P.race_total_time m
theorem race_solution (m : P.RaceAverage) : m.average = 180 := P.race_solution m
theorem money_howard (m : P.SharedMoney) : m.howard = 120 := P.money_howard m
theorem money_total (m : P.SharedMoney) : m.total = 270 := P.money_total m
theorem money_solution (m : P.SharedMoney) : m.each = 135 := P.money_solution m
theorem stamps_added (m : P.Scrapbook) : m.added = 18 := P.stamps_added m
theorem stamps_solution (m : P.Scrapbook) : m.total = 36 := P.stamps_solution m
theorem medical_mri (m : P.MedicalCosts) : m.mri = 750 := P.medical_mri m
theorem medical_total (m : P.MedicalCosts) : m.total = 1000 := P.medical_total m
theorem medical_covered (m : P.MedicalCosts) : m.covered = 800 := P.medical_covered m
theorem medical_solution (m : P.MedicalCosts) : m.paid = 200 := P.medical_solution m
theorem school_female (m : P.SchoolPopulation) : m.female = 200 := P.school_female m
theorem school_male (m : P.SchoolPopulation) : m.male = 100 := P.school_male m
theorem school_foreign_male (m : P.SchoolPopulation) : m.foreignMale = 10 := P.school_foreign_male m
theorem school_solution (m : P.SchoolPopulation) : m.nonForeignMale = 90 := P.school_solution m
theorem socks_first_each (m : P.SockProfit) : m.firstEach = 50 := P.socks_first_each m
theorem socks_first_total (m : P.SockProfit) : m.firstTotal = 200 := P.socks_first_total m
theorem socks_other_total (m : P.SockProfit) : m.otherTotal = 100 := P.socks_other_total m
theorem socks_total_cents (m : P.SockProfit) : m.totalCents = 300 := P.socks_total_cents m
theorem socks_solution (m : P.SockProfit) : m.totalDollars = 3 := P.socks_solution m
theorem height_kelly (m : P.Heights) : m.kelly = 69 := P.height_kelly m
theorem height_solution (m : P.Heights) : m.jana = 74 := P.height_solution m
theorem bugs_crickets (m : P.BugCollection) : m.crickets = 6 := P.bugs_crickets m
theorem bugs_caterpillars (m : P.BugCollection) : m.caterpillars = 6 := P.bugs_caterpillars m
theorem bugs_solution (m : P.BugCollection) : m.total = 27 := P.bugs_solution m
theorem doughnuts_singles (m : P.DoughnutSavings) : m.singles = 48 := P.doughnuts_singles m
theorem doughnuts_doubles (m : P.DoughnutSavings) : m.doubles = 42 := P.doughnuts_doubles m
theorem doughnuts_solution (m : P.DoughnutSavings) : m.saving = 6 := P.doughnuts_solution m
theorem longjump_jump (m : P.LongJump) : m.margaritaJump = 7 := P.longjump_jump m
theorem longjump_total (m : P.LongJump) : m.margaritaTotal = 25 := P.longjump_total m
theorem longjump_solution (m : P.LongJump) : m.farther = 1 := P.longjump_solution m
theorem icecream_flavors (m : P.IceCream) :
    m.chocolateUsed = 7 ∧ m.vanillaUsed = 4 ∧ m.strawberryUsed = 3 := P.icecream_flavors m
theorem icecream_used (m : P.IceCream) : m.used = 14 := P.icecream_used m
theorem icecream_solution (m : P.IceCream) : m.remaining = 16 := P.icecream_solution m
theorem wardrobe_pajamas (m : P.WardrobeDonation) : m.pajamas = 8 := P.wardrobe_pajamas m
theorem wardrobe_adam_selected (m : P.WardrobeDonation) : m.adamSelected = 36 :=
  P.wardrobe_adam_selected m
theorem wardrobe_friends (m : P.WardrobeDonation) : m.friends = 108 := P.wardrobe_friends m
theorem wardrobe_adam_actual (m : P.WardrobeDonation) : m.adamActual = 18 :=
  P.wardrobe_adam_actual m
theorem wardrobe_solution (m : P.WardrobeDonation) : m.total = 126 := P.wardrobe_solution m

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
