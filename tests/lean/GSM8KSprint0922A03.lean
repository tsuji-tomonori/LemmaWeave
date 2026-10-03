import LemmaWeave.Problems.GSM8K.Sprint0922A03Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A03
open LemmaWeave.Problems.GSM8K.Sprint0922A03

theorem claws_wombats (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Claws) : m.wombatClaws = 36 := LemmaWeave.Problems.GSM8K.Sprint0922A03.claws_wombats m
theorem claws_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Claws) : m.totalClaws = 39 := LemmaWeave.Problems.GSM8K.Sprint0922A03.claws_solution m
theorem gifts_boys (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PartyGifts) : m.boysGifts = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A03.gifts_boys m
theorem gifts_boys_without (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PartyGifts) : m.boysWithout = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A03.gifts_boys_without m
theorem gifts_girls (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PartyGifts) : m.girlsGifts = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A03.gifts_girls m
theorem gifts_girls_without (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PartyGifts) : m.girlsWithout = 2 := LemmaWeave.Problems.GSM8K.Sprint0922A03.gifts_girls_without m
theorem gifts_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PartyGifts) : m.totalWithout = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A03.gifts_solution m
theorem toddlers_once (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Toddlers) : m.onceCounted = 18 := LemmaWeave.Problems.GSM8K.Sprint0922A03.toddlers_once m
theorem toddlers_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Toddlers) : m.actual = 21 := LemmaWeave.Problems.GSM8K.Sprint0922A03.toddlers_solution m
theorem shoes_increase (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Shoes) : m.increase = 11 := LemmaWeave.Problems.GSM8K.Sprint0922A03.shoes_increase m
theorem shoes_second (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Shoes) : m.second = 33 := LemmaWeave.Problems.GSM8K.Sprint0922A03.shoes_second m
theorem shoes_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Shoes) : m.total = 55 := LemmaWeave.Problems.GSM8K.Sprint0922A03.shoes_solution m
theorem running_half_weeks (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Running) : m.halfWeeks = 26 := LemmaWeave.Problems.GSM8K.Sprint0922A03.running_half_weeks m
theorem running_first (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Running) : m.firstMiles = 520 := LemmaWeave.Problems.GSM8K.Sprint0922A03.running_first m
theorem running_second (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Running) : m.secondMiles = 780 := LemmaWeave.Problems.GSM8K.Sprint0922A03.running_second m
theorem running_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Running) : m.totalMiles = 1300 := LemmaWeave.Problems.GSM8K.Sprint0922A03.running_solution m
theorem reading_books (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.ReadingCoupons) : m.books = 20 := LemmaWeave.Problems.GSM8K.Sprint0922A03.reading_books m
theorem reading_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.ReadingCoupons) : m.coupons = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A03.reading_solution m
theorem onions_brittney_rate (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Onions) : m.brittneyRate = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A03.onions_brittney_rate m
theorem onions_carl_rate (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Onions) : m.carlRate = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A03.onions_carl_rate m
theorem onions_brittney (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Onions) : m.brittneyThirty = 90 := LemmaWeave.Problems.GSM8K.Sprint0922A03.onions_brittney m
theorem onions_carl (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Onions) : m.carlThirty = 120 := LemmaWeave.Problems.GSM8K.Sprint0922A03.onions_carl m
theorem onions_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Onions) : m.difference = 30 := LemmaWeave.Problems.GSM8K.Sprint0922A03.onions_solution m
theorem writing_half_page (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.WritingNameAmbiguity) : m.halfPageLines = 10 := LemmaWeave.Problems.GSM8K.Sprint0922A03.writing_half_page m
theorem writing_lucas_lines (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.WritingNameAmbiguity) : m.lucasLines = 30 := LemmaWeave.Problems.GSM8K.Sprint0922A03.writing_lucas_lines m
theorem writing_lucas_words (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.WritingNameAmbiguity) : m.lucasWords = 300 := LemmaWeave.Problems.GSM8K.Sprint0922A03.writing_lucas_words m
theorem writing_intended (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.WritingNameAmbiguity) : m.intendedLeft = 100 := LemmaWeave.Problems.GSM8K.Sprint0922A03.writing_intended m
theorem writing_literal (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.WritingNameAmbiguity) : m.literalLeft = 400 := LemmaWeave.Problems.GSM8K.Sprint0922A03.writing_literal m
theorem writing_nonunique (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.WritingNameAmbiguity) : m.intendedLeft ≠ m.literalLeft := LemmaWeave.Problems.GSM8K.Sprint0922A03.writing_nonunique m
theorem snails_first (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.DuckSnails) : m.first = 15 := LemmaWeave.Problems.GSM8K.Sprint0922A03.snails_first m
theorem snails_next (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.DuckSnails) : m.next = 27 := LemmaWeave.Problems.GSM8K.Sprint0922A03.snails_next m
theorem snails_groups (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.DuckSnails) : m.groups = 42 := LemmaWeave.Problems.GSM8K.Sprint0922A03.snails_groups m
theorem snails_mother_three (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.DuckSnails) : m.motherThree = 126 := LemmaWeave.Problems.GSM8K.Sprint0922A03.snails_mother_three m
theorem snails_each_three (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.DuckSnails) : m.eachThree = 63 := LemmaWeave.Problems.GSM8K.Sprint0922A03.snails_each_three m
theorem snails_three_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.DuckSnails) : m.totalThree = 294 := LemmaWeave.Problems.GSM8K.Sprint0922A03.snails_three_solution m
theorem snails_two_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.DuckSnails) : m.totalTwo = 210 := LemmaWeave.Problems.GSM8K.Sprint0922A03.snails_two_solution m
theorem snails_nonunique (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.DuckSnails) : m.totalThree ≠ m.totalTwo := LemmaWeave.Problems.GSM8K.Sprint0922A03.snails_nonunique m
theorem flowers_day_two_tulips (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FlowerSales) : m.dayTwoTulips = 60 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flowers_day_two_tulips m
theorem flowers_day_two_roses (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FlowerSales) : m.dayTwoRoses = 40 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flowers_day_two_roses m
theorem flowers_day_three_tulips (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FlowerSales) : m.dayThreeTulips = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flowers_day_three_tulips m
theorem flowers_total_tulips (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FlowerSales) : m.totalTulips = 96 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flowers_total_tulips m
theorem flowers_total_roses (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FlowerSales) : m.totalRoses = 76 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flowers_total_roses m
theorem flowers_tulip_revenue (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FlowerSales) : m.tulipRevenue = 192 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flowers_tulip_revenue m
theorem flowers_rose_revenue (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FlowerSales) : m.roseRevenue = 228 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flowers_rose_revenue m
theorem flowers_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FlowerSales) : m.totalRevenue = 420 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flowers_solution m
theorem flea_cashback (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FleaMedicine) : m.cashback = 15 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flea_cashback m
theorem flea_discount (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FleaMedicine) : m.totalDiscount = 40 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flea_discount m
theorem flea_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.FleaMedicine) : m.netCost = 110 := LemmaWeave.Problems.GSM8K.Sprint0922A03.flea_solution m
theorem cheesecake_slices (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Cheesecake) : m.slices = 42 := LemmaWeave.Problems.GSM8K.Sprint0922A03.cheesecake_slices m
theorem cheesecake_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.Cheesecake) : m.revenue = 294 := LemmaWeave.Problems.GSM8K.Sprint0922A03.cheesecake_solution m
theorem team_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.TypingTeam) : m.total = 400 := LemmaWeave.Problems.GSM8K.Sprint0922A03.team_total m
theorem team_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.TypingTeam) : m.average = 80 := LemmaWeave.Problems.GSM8K.Sprint0922A03.team_solution m
theorem ages_maria (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.MarioAge) : m.maria = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A03.ages_maria m
theorem ages_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.MarioAge) : m.mario = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A03.ages_solution m
theorem painting_canvas_conventional (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PaintingAmbiguity) : m.conventionalCanvas = 60 := LemmaWeave.Problems.GSM8K.Sprint0922A03.painting_canvas_conventional m
theorem painting_five_liters (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PaintingAmbiguity) : m.paintFive = 40 := LemmaWeave.Problems.GSM8K.Sprint0922A03.painting_five_liters m
theorem painting_reference (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PaintingAmbiguity) : m.conventionalProfit = 80 := LemmaWeave.Problems.GSM8K.Sprint0922A03.painting_reference m
theorem painting_canvas_additive (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PaintingAmbiguity) : m.additiveCanvas = 80 := LemmaWeave.Problems.GSM8K.Sprint0922A03.painting_canvas_additive m
theorem painting_additive (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PaintingAmbiguity) : m.additiveProfit = 60 := LemmaWeave.Problems.GSM8K.Sprint0922A03.painting_additive m
theorem painting_six_liters (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PaintingAmbiguity) : m.paintSix = 48 := LemmaWeave.Problems.GSM8K.Sprint0922A03.painting_six_liters m
theorem painting_extra_liter (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PaintingAmbiguity) : m.extraLiterProfit = 72 := LemmaWeave.Problems.GSM8K.Sprint0922A03.painting_extra_liter m
theorem painting_nonunique (m : LemmaWeave.Problems.GSM8K.Sprint0922A03.PaintingAmbiguity) :
    m.conventionalProfit ≠ m.additiveProfit ∧ m.conventionalProfit ≠ m.extraLiterProfit := LemmaWeave.Problems.GSM8K.Sprint0922A03.painting_nonunique m
end LemmaWeave.Tests.GSM8KSprint0922A03

#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.cheesecake_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.claws_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.snails_nonunique
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.flea_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.flowers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.ages_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.onions_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.painting_nonunique
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.gifts_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.reading_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.running_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.shoes_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.toddlers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.team_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A03.writing_nonunique

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.cheesecake_solution to "work/gsm8k-sprint75-cheesecake-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.claws_solution to "work/gsm8k-sprint75-claws-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.snails_nonunique to "work/gsm8k-sprint75-duck_snails-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.flea_solution to "work/gsm8k-sprint75-flea_medicine-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.flowers_solution to "work/gsm8k-sprint75-flower_sales-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.ages_solution to "work/gsm8k-sprint75-mario_age-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.onions_solution to "work/gsm8k-sprint75-onions-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.painting_nonunique to "work/gsm8k-sprint75-painting-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.gifts_solution to "work/gsm8k-sprint75-party_gifts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.reading_solution to "work/gsm8k-sprint75-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.running_solution to "work/gsm8k-sprint75-running-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.shoes_solution to "work/gsm8k-sprint75-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.toddlers_solution to "work/gsm8k-sprint75-toddlers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.team_solution to "work/gsm8k-sprint75-typing_team-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A03.writing_nonunique to "work/gsm8k-sprint75-writing_names-graph.json"
