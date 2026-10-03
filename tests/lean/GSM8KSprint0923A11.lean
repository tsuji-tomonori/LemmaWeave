import LemmaWeave.Problems.GSM8K.Sprint0923A11Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A11

theorem money_justin (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.SharedMoney) : m.justin = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A11.money_justin m
theorem money_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.SharedMoney) : m.joshua = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A11.money_solution m
theorem marbles_mary_red (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.MarbleCollection) : m.maryRed = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A11.marbles_mary_red m
theorem marbles_anie_red (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.MarbleCollection) : m.anieRed = 80 := LemmaWeave.Problems.GSM8K.Sprint0923A11.marbles_anie_red m
theorem marbles_anie_blue (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.MarbleCollection) : m.anieBlue = 50 := LemmaWeave.Problems.GSM8K.Sprint0923A11.marbles_anie_blue m
theorem marbles_mary_blue (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.MarbleCollection) : m.maryBlue = 25 := LemmaWeave.Problems.GSM8K.Sprint0923A11.marbles_mary_blue m
theorem marbles_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.MarbleCollection) : m.totalBlue = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A11.marbles_solution m
theorem rocks_eaten (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.AquariumRocks) : m.eaten = 5 := LemmaWeave.Problems.GSM8K.Sprint0923A11.rocks_eaten m
theorem rocks_after_eating (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.AquariumRocks) : m.afterEating = 5 := LemmaWeave.Problems.GSM8K.Sprint0923A11.rocks_after_eating m
theorem rocks_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.AquariumRocks) : m.final = 7 := LemmaWeave.Problems.GSM8K.Sprint0923A11.rocks_solution m
theorem purchase_shirts (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.ClothingPurchase) : m.shirts = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A11.purchase_shirts m
theorem purchase_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.ClothingPurchase) : m.total = 110 := LemmaWeave.Problems.GSM8K.Sprint0923A11.purchase_solution m
theorem bench_loss (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.BenchPress) : m.loss = 400 := LemmaWeave.Problems.GSM8K.Sprint0923A11.bench_loss m
theorem bench_after_injury (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.BenchPress) : m.afterInjury = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A11.bench_after_injury m
theorem bench_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.BenchPress) : m.final = 300 := LemmaWeave.Problems.GSM8K.Sprint0923A11.bench_solution m
theorem guitar_gc_discount (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.GuitarStores) : m.gcDiscount = 150 := LemmaWeave.Problems.GSM8K.Sprint0923A11.guitar_gc_discount m
theorem guitar_gc_cost (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.GuitarStores) : m.gcCost = 950 := LemmaWeave.Problems.GSM8K.Sprint0923A11.guitar_gc_cost m
theorem guitar_sw_discount (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.GuitarStores) : m.swDiscount = 100 := LemmaWeave.Problems.GSM8K.Sprint0923A11.guitar_sw_discount m
theorem guitar_sw_cost (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.GuitarStores) : m.swCost = 900 := LemmaWeave.Problems.GSM8K.Sprint0923A11.guitar_sw_cost m
theorem guitar_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.GuitarStores) : m.savings = 50 := LemmaWeave.Problems.GSM8K.Sprint0923A11.guitar_solution m
theorem geometry_leo_mistakes (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.GeometryExam) : m.leoMistakes = 4 := LemmaWeave.Problems.GSM8K.Sprint0923A11.geometry_leo_mistakes m
theorem geometry_brent_mistakes (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.GeometryExam) : m.brentMistakes = 5 := LemmaWeave.Problems.GSM8K.Sprint0923A11.geometry_brent_mistakes m
theorem geometry_reference_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.GeometryExam) (hp : m.pointsPerMistake = 1) :
    m.madelineScore = 28 := LemmaWeave.Problems.GSM8K.Sprint0923A11.geometry_reference_solution m hp
theorem geometry_two_point_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.GeometryExam) (hp : m.pointsPerMistake = 2) :
    m.madelineScore = 31 := LemmaWeave.Problems.GSM8K.Sprint0923A11.geometry_two_point_solution m hp
theorem geometry_two_scoring_readings_differ : (28 : ℕ) ≠ 31 := LemmaWeave.Problems.GSM8K.Sprint0923A11.geometry_two_scoring_readings_differ
theorem eggs_total (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.EggShelf) : m.total = 72 := LemmaWeave.Problems.GSM8K.Sprint0923A11.eggs_total m
theorem eggs_used (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.EggShelf) : m.used = 36 := LemmaWeave.Problems.GSM8K.Sprint0923A11.eggs_used m
theorem eggs_after_use (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.EggShelf) : m.afterUse = 36 := LemmaWeave.Problems.GSM8K.Sprint0923A11.eggs_after_use m
theorem eggs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.EggShelf) : m.final = 21 := LemmaWeave.Problems.GSM8K.Sprint0923A11.eggs_solution m
theorem fish_day3_before (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.FishGrowth) : m.day3Before = 24 := LemmaWeave.Problems.GSM8K.Sprint0923A11.fish_day3_before m
theorem fish_day3_removed (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.FishGrowth) : m.day3Removed = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A11.fish_day3_removed m
theorem fish_day3_after (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.FishGrowth) : m.day3After = 16 := LemmaWeave.Problems.GSM8K.Sprint0923A11.fish_day3_after m
theorem fish_day5_before (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.FishGrowth) : m.day5Before = 64 := LemmaWeave.Problems.GSM8K.Sprint0923A11.fish_day5_before m
theorem fish_day5_removed (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.FishGrowth) : m.day5Removed = 16 := LemmaWeave.Problems.GSM8K.Sprint0923A11.fish_day5_removed m
theorem fish_day5_after (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.FishGrowth) : m.day5After = 48 := LemmaWeave.Problems.GSM8K.Sprint0923A11.fish_day5_after m
theorem fish_day7_before (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.FishGrowth) : m.day7Before = 192 := LemmaWeave.Problems.GSM8K.Sprint0923A11.fish_day7_before m
theorem fish_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.FishGrowth) : m.final = 207 := LemmaWeave.Problems.GSM8K.Sprint0923A11.fish_solution m
theorem cafeteria_inside (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.CafeteriaMovement) : m.inside = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A11.cafeteria_inside m
theorem cafeteria_outside (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.CafeteriaMovement) : m.outside = 30 := LemmaWeave.Problems.GSM8K.Sprint0923A11.cafeteria_outside m
theorem cafeteria_ran_inside (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.CafeteriaMovement) : m.ranInside = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A11.cafeteria_ran_inside m
theorem cafeteria_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.CafeteriaMovement) : m.final = 67 := LemmaWeave.Problems.GSM8K.Sprint0923A11.cafeteria_solution m
theorem dice_count (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.DiceSides) : m.dice = 8 := LemmaWeave.Problems.GSM8K.Sprint0923A11.dice_count m
theorem dice_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.DiceSides) : m.sides = 48 := LemmaWeave.Problems.GSM8K.Sprint0923A11.dice_solution m
theorem doves_eggs (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.DoveCount) : m.eggs = 60 := LemmaWeave.Problems.GSM8K.Sprint0923A11.doves_eggs m
theorem doves_hatched (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.DoveCount) : m.hatched = 45 := LemmaWeave.Problems.GSM8K.Sprint0923A11.doves_hatched m
theorem doves_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.DoveCount) : m.total = 65 := LemmaWeave.Problems.GSM8K.Sprint0923A11.doves_solution m
theorem trip_traffic (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.TrafficTrip) : m.traffic = 10 := LemmaWeave.Problems.GSM8K.Sprint0923A11.trip_traffic m
theorem trip_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.TrafficTrip) : m.total = 15 := LemmaWeave.Problems.GSM8K.Sprint0923A11.trip_solution m
theorem cards_alien (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.TradingCards) : m.alien = 16 := LemmaWeave.Problems.GSM8K.Sprint0923A11.cards_alien m
theorem cards_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.TradingCards) : m.monster = 32 := LemmaWeave.Problems.GSM8K.Sprint0923A11.cards_solution m
theorem zits_swanson (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.ZitClasses) : m.swansonTotal = 125 := LemmaWeave.Problems.GSM8K.Sprint0923A11.zits_swanson m
theorem zits_jones (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.ZitClasses) : m.jonesTotal = 192 := LemmaWeave.Problems.GSM8K.Sprint0923A11.zits_jones m
theorem zits_solution (m : LemmaWeave.Problems.GSM8K.Sprint0923A11.ZitClasses) : m.difference = 67 := LemmaWeave.Problems.GSM8K.Sprint0923A11.zits_solution m

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
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.geometry_reference_solution to "work/gsm8k-sprint101-geometry-reference-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.eggs_solution to "work/gsm8k-sprint101-eggs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.fish_solution to "work/gsm8k-sprint101-fish-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.cafeteria_solution to "work/gsm8k-sprint101-cafeteria-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.dice_solution to "work/gsm8k-sprint101-dice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.doves_solution to "work/gsm8k-sprint101-doves-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.trip_solution to "work/gsm8k-sprint101-trip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.cards_solution to "work/gsm8k-sprint101-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.zits_solution to "work/gsm8k-sprint101-zits-graph.json"

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A11.geometry_two_scoring_readings_differ to "work/gsm8k-sprint101-geometry-graph.json"
