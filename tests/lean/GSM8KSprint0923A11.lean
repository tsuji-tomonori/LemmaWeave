import LemmaWeave.Problems.GSM8K.Sprint0923A11Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A11
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A11

theorem money_justin (m : P.SharedMoney) : m.justin = 10 := P.money_justin m
theorem money_solution (m : P.SharedMoney) : m.joshua = 30 := P.money_solution m
theorem marbles_mary_red (m : P.MarbleCollection) : m.maryRed = 60 := P.marbles_mary_red m
theorem marbles_anie_red (m : P.MarbleCollection) : m.anieRed = 80 := P.marbles_anie_red m
theorem marbles_anie_blue (m : P.MarbleCollection) : m.anieBlue = 50 := P.marbles_anie_blue m
theorem marbles_mary_blue (m : P.MarbleCollection) : m.maryBlue = 25 := P.marbles_mary_blue m
theorem marbles_solution (m : P.MarbleCollection) : m.totalBlue = 100 := P.marbles_solution m
theorem rocks_eaten (m : P.AquariumRocks) : m.eaten = 5 := P.rocks_eaten m
theorem rocks_after_eating (m : P.AquariumRocks) : m.afterEating = 5 := P.rocks_after_eating m
theorem rocks_solution (m : P.AquariumRocks) : m.final = 7 := P.rocks_solution m
theorem purchase_shirts (m : P.ClothingPurchase) : m.shirts = 60 := P.purchase_shirts m
theorem purchase_solution (m : P.ClothingPurchase) : m.total = 110 := P.purchase_solution m
theorem bench_loss (m : P.BenchPress) : m.loss = 400 := P.bench_loss m
theorem bench_after_injury (m : P.BenchPress) : m.afterInjury = 100 := P.bench_after_injury m
theorem bench_solution (m : P.BenchPress) : m.final = 300 := P.bench_solution m
theorem guitar_gc_discount (m : P.GuitarStores) : m.gcDiscount = 150 := P.guitar_gc_discount m
theorem guitar_gc_cost (m : P.GuitarStores) : m.gcCost = 950 := P.guitar_gc_cost m
theorem guitar_sw_discount (m : P.GuitarStores) : m.swDiscount = 100 := P.guitar_sw_discount m
theorem guitar_sw_cost (m : P.GuitarStores) : m.swCost = 900 := P.guitar_sw_cost m
theorem guitar_solution (m : P.GuitarStores) : m.savings = 50 := P.guitar_solution m
theorem geometry_leo_mistakes (m : P.GeometryExam) : m.leoMistakes = 4 := P.geometry_leo_mistakes m
theorem geometry_brent_mistakes (m : P.GeometryExam) : m.brentMistakes = 5 := P.geometry_brent_mistakes m
theorem geometry_reference_solution (m : P.GeometryExam) (hp : m.pointsPerMistake = 1) :
    m.madelineScore = 28 := P.geometry_reference_solution m hp
theorem geometry_two_point_solution (m : P.GeometryExam) (hp : m.pointsPerMistake = 2) :
    m.madelineScore = 31 := P.geometry_two_point_solution m hp
theorem geometry_two_scoring_readings_differ : (28 : ℕ) ≠ 31 := P.geometry_two_scoring_readings_differ
theorem eggs_total (m : P.EggShelf) : m.total = 72 := P.eggs_total m
theorem eggs_used (m : P.EggShelf) : m.used = 36 := P.eggs_used m
theorem eggs_after_use (m : P.EggShelf) : m.afterUse = 36 := P.eggs_after_use m
theorem eggs_solution (m : P.EggShelf) : m.final = 21 := P.eggs_solution m
theorem fish_day3_before (m : P.FishGrowth) : m.day3Before = 24 := P.fish_day3_before m
theorem fish_day3_removed (m : P.FishGrowth) : m.day3Removed = 8 := P.fish_day3_removed m
theorem fish_day3_after (m : P.FishGrowth) : m.day3After = 16 := P.fish_day3_after m
theorem fish_day5_before (m : P.FishGrowth) : m.day5Before = 64 := P.fish_day5_before m
theorem fish_day5_removed (m : P.FishGrowth) : m.day5Removed = 16 := P.fish_day5_removed m
theorem fish_day5_after (m : P.FishGrowth) : m.day5After = 48 := P.fish_day5_after m
theorem fish_day7_before (m : P.FishGrowth) : m.day7Before = 192 := P.fish_day7_before m
theorem fish_solution (m : P.FishGrowth) : m.final = 207 := P.fish_solution m
theorem cafeteria_inside (m : P.CafeteriaMovement) : m.inside = 60 := P.cafeteria_inside m
theorem cafeteria_outside (m : P.CafeteriaMovement) : m.outside = 30 := P.cafeteria_outside m
theorem cafeteria_ran_inside (m : P.CafeteriaMovement) : m.ranInside = 10 := P.cafeteria_ran_inside m
theorem cafeteria_solution (m : P.CafeteriaMovement) : m.final = 67 := P.cafeteria_solution m
theorem dice_count (m : P.DiceSides) : m.dice = 8 := P.dice_count m
theorem dice_solution (m : P.DiceSides) : m.sides = 48 := P.dice_solution m
theorem doves_eggs (m : P.DoveCount) : m.eggs = 60 := P.doves_eggs m
theorem doves_hatched (m : P.DoveCount) : m.hatched = 45 := P.doves_hatched m
theorem doves_solution (m : P.DoveCount) : m.total = 65 := P.doves_solution m
theorem trip_traffic (m : P.TrafficTrip) : m.traffic = 10 := P.trip_traffic m
theorem trip_solution (m : P.TrafficTrip) : m.total = 15 := P.trip_solution m
theorem cards_alien (m : P.TradingCards) : m.alien = 16 := P.cards_alien m
theorem cards_solution (m : P.TradingCards) : m.monster = 32 := P.cards_solution m
theorem zits_swanson (m : P.ZitClasses) : m.swansonTotal = 125 := P.zits_swanson m
theorem zits_jones (m : P.ZitClasses) : m.jonesTotal = 192 := P.zits_jones m
theorem zits_solution (m : P.ZitClasses) : m.difference = 67 := P.zits_solution m

end LemmaWeave.Tests.GSM8KSprint0923A11

#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.money_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.marbles_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.rocks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.purchase_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.bench_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.guitar_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.geometry_reference_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.geometry_two_point_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.geometry_two_scoring_readings_differ
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.eggs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.fish_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.cafeteria_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.dice_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.doves_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.trip_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.cards_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A11.zits_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.money_solution to "work/gsm8k-sprint101-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.marbles_solution to "work/gsm8k-sprint101-marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.rocks_solution to "work/gsm8k-sprint101-rocks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.purchase_solution to "work/gsm8k-sprint101-purchase-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.bench_solution to "work/gsm8k-sprint101-bench-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.guitar_solution to "work/gsm8k-sprint101-guitar-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.geometry_reference_solution to "work/gsm8k-sprint101-geometry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.eggs_solution to "work/gsm8k-sprint101-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.fish_solution to "work/gsm8k-sprint101-fish-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.cafeteria_solution to "work/gsm8k-sprint101-cafeteria-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.dice_solution to "work/gsm8k-sprint101-dice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.doves_solution to "work/gsm8k-sprint101-doves-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.trip_solution to "work/gsm8k-sprint101-trip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.cards_solution to "work/gsm8k-sprint101-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.zits_solution to "work/gsm8k-sprint101-zits-graph.json"
