import LemmaWeave.Problems.GSM8K.Sprint0922A01Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A01
open LemmaWeave.Problems.GSM8K.Sprint0922A01

theorem books_katie (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Books) : m.katie = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A01.books_katie m
theorem books_gary (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Books) : m.gary = 45 := LemmaWeave.Problems.GSM8K.Sprint0922A01.books_gary m
theorem books_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Books) : m.total = 54 := LemmaWeave.Problems.GSM8K.Sprint0922A01.books_solution m
theorem pigs_first_food (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.PigProfit) : m.firstFood = 360 := LemmaWeave.Problems.GSM8K.Sprint0922A01.pigs_first_food m
theorem pigs_second_food (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.PigProfit) : m.secondFood = 480 := LemmaWeave.Problems.GSM8K.Sprint0922A01.pigs_second_food m
theorem pigs_total_food (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.PigProfit) : m.totalFood = 840 := LemmaWeave.Problems.GSM8K.Sprint0922A01.pigs_total_food m
theorem pigs_revenue (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.PigProfit) : m.revenue = 1800 := LemmaWeave.Problems.GSM8K.Sprint0922A01.pigs_revenue m
theorem pigs_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.PigProfit) : m.profit = 960 := LemmaWeave.Problems.GSM8K.Sprint0922A01.pigs_solution m
theorem leaves_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Leaves) : m.total = 25 := LemmaWeave.Problems.GSM8K.Sprint0922A01.leaves_total m
theorem leaves_brown (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Leaves) : m.brown = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A01.leaves_brown m
theorem leaves_green (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Leaves) : m.green = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A01.leaves_green m
theorem leaves_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Leaves) : m.yellow = 15 := LemmaWeave.Problems.GSM8K.Sprint0922A01.leaves_solution m
theorem ducks_ephraim (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Ducks) : m.ephraim = 15 := LemmaWeave.Problems.GSM8K.Sprint0922A01.ducks_ephraim m
theorem ducks_kolton (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Ducks) : m.kolton = 60 := LemmaWeave.Problems.GSM8K.Sprint0922A01.ducks_kolton m
theorem ducks_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Ducks) : m.total = 105 := LemmaWeave.Problems.GSM8K.Sprint0922A01.ducks_total m
theorem ducks_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Ducks) : m.average = 35 := LemmaWeave.Problems.GSM8K.Sprint0922A01.ducks_solution m
theorem weight_difference (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Weight) : 3 * m.mel = 210 := LemmaWeave.Problems.GSM8K.Sprint0922A01.weight_difference m
theorem weight_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Weight) : m.mel = 70 := LemmaWeave.Problems.GSM8K.Sprint0922A01.weight_solution m
theorem rabbits_first_born (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Rabbits) : m.firstBorn = 100 := LemmaWeave.Problems.GSM8K.Sprint0922A01.rabbits_first_born m
theorem rabbits_first_adopted (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Rabbits) : m.firstAdopted = 50 := LemmaWeave.Problems.GSM8K.Sprint0922A01.rabbits_first_adopted m
theorem rabbits_first_home (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Rabbits) : m.firstHome = 55 := LemmaWeave.Problems.GSM8K.Sprint0922A01.rabbits_first_home m
theorem rabbits_second_home (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Rabbits) : m.secondHome = 56 := LemmaWeave.Problems.GSM8K.Sprint0922A01.rabbits_second_home m
theorem rabbits_offspring (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Rabbits) : m.offspring = 111 := LemmaWeave.Problems.GSM8K.Sprint0922A01.rabbits_offspring m
theorem rabbits_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Rabbits) : m.total = 121 := LemmaWeave.Problems.GSM8K.Sprint0922A01.rabbits_solution m
theorem followers_susy (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Followers) : m.susyTotal = 170 := LemmaWeave.Problems.GSM8K.Sprint0922A01.followers_susy m
theorem followers_sarah (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Followers) : m.sarahTotal = 180 := LemmaWeave.Problems.GSM8K.Sprint0922A01.followers_sarah m
theorem followers_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Followers) : m.maximum = 180 := LemmaWeave.Problems.GSM8K.Sprint0922A01.followers_solution m
theorem bath_buckets (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Bathwater) : m.dailyBuckets = 11 := LemmaWeave.Problems.GSM8K.Sprint0922A01.bath_buckets m
theorem bath_daily (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Bathwater) : m.dailyOunces = 1320 := LemmaWeave.Problems.GSM8K.Sprint0922A01.bath_daily m
theorem bath_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Bathwater) : m.weeklyOunces = 9240 := LemmaWeave.Problems.GSM8K.Sprint0922A01.bath_solution m
theorem streaming_monthly (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Streaming) : m.monthly = 7 := LemmaWeave.Problems.GSM8K.Sprint0922A01.streaming_monthly m
theorem streaming_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Streaming) : m.annual = 84 := LemmaWeave.Problems.GSM8K.Sprint0922A01.streaming_solution m
theorem utensils_reference_pens (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.UtensilAmbiguity) : m.pensA = 16 := LemmaWeave.Problems.GSM8K.Sprint0922A01.utensils_reference_pens m
theorem utensils_reference_pencils (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.UtensilAmbiguity) : m.pencilsA = 92 := LemmaWeave.Problems.GSM8K.Sprint0922A01.utensils_reference_pencils m
theorem utensils_reverse_pencils (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.UtensilAmbiguity) : m.pencilsB = 16 := LemmaWeave.Problems.GSM8K.Sprint0922A01.utensils_reverse_pencils m
theorem utensils_reverse_pens (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.UtensilAmbiguity) : m.pensB = 92 := LemmaWeave.Problems.GSM8K.Sprint0922A01.utensils_reverse_pens m
theorem utensils_nonunique (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.UtensilAmbiguity) : m.pensA ≠ m.pensB := LemmaWeave.Problems.GSM8K.Sprint0922A01.utensils_nonunique m
theorem pots_per_shelf (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Pots) : m.perShelf = 15 := LemmaWeave.Problems.GSM8K.Sprint0922A01.pots_per_shelf m
theorem pots_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Pots) : m.shelves = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A01.pots_solution m
theorem fence_right (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Fence) : m.rightCost = 27 := LemmaWeave.Problems.GSM8K.Sprint0922A01.fence_right m
theorem fence_left (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Fence) : m.leftCost = 18 := LemmaWeave.Problems.GSM8K.Sprint0922A01.fence_left m
theorem fence_back (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Fence) : m.backCost = 27 := LemmaWeave.Problems.GSM8K.Sprint0922A01.fence_back m
theorem fence_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Fence) : m.total = 72 := LemmaWeave.Problems.GSM8K.Sprint0922A01.fence_solution m
theorem tires_cars (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Tires) : m.cars = 10 := LemmaWeave.Problems.GSM8K.Sprint0922A01.tires_cars m
theorem tires_bought (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Tires) : m.bought = 40 := LemmaWeave.Problems.GSM8K.Sprint0922A01.tires_bought m
theorem tires_half_left (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Tires) : m.halfLeft = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A01.tires_half_left m
theorem tires_none_left (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Tires) : m.noneLeft = 16 := LemmaWeave.Problems.GSM8K.Sprint0922A01.tires_none_left m
theorem tires_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.Tires) : m.noneCustomers = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A01.tires_solution m
theorem gum_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.GumShare) : m.total = 99 := LemmaWeave.Problems.GSM8K.Sprint0922A01.gum_total m
theorem gum_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.GumShare) : m.each = 33 := LemmaWeave.Problems.GSM8K.Sprint0922A01.gum_solution m
theorem playground_all (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.PlaygroundAnimals) : m.allSmallCreatures = 23 := LemmaWeave.Problems.GSM8K.Sprint0922A01.playground_all m
theorem playground_literal (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.PlaygroundAnimals) : m.literalRemaining = 21 := LemmaWeave.Problems.GSM8K.Sprint0922A01.playground_literal m
theorem playground_biological (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.PlaygroundAnimals) : m.biologicalRemaining = 18 := LemmaWeave.Problems.GSM8K.Sprint0922A01.playground_biological m
theorem playground_nonunique (m : LemmaWeave.Problems.GSM8K.Sprint0922A01.PlaygroundAnimals) :
    m.literalRemaining ≠ m.biologicalRemaining := LemmaWeave.Problems.GSM8K.Sprint0922A01.playground_nonunique m
end LemmaWeave.Tests.GSM8KSprint0922A01

#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.bath_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.books_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.ducks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.fence_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.followers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.gum_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.leaves_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.pigs_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.playground_nonunique
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.pots_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.rabbits_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.streaming_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.tires_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.utensils_nonunique
#print axioms LemmaWeave.Tests.GSM8KSprint0922A01.weight_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.bath_solution to "work/gsm8k-sprint73-bathwater-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.books_solution to "work/gsm8k-sprint73-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.ducks_solution to "work/gsm8k-sprint73-ducks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.fence_solution to "work/gsm8k-sprint73-fence-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.followers_solution to "work/gsm8k-sprint73-followers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.gum_solution to "work/gsm8k-sprint73-gum-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.leaves_solution to "work/gsm8k-sprint73-leaves-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.pigs_solution to "work/gsm8k-sprint73-pig-profit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.playground_nonunique to "work/gsm8k-sprint73-playground-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.pots_solution to "work/gsm8k-sprint73-pots-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.rabbits_solution to "work/gsm8k-sprint73-rabbits-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.streaming_solution to "work/gsm8k-sprint73-streaming-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.tires_solution to "work/gsm8k-sprint73-tires-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.utensils_nonunique to "work/gsm8k-sprint73-utensils-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A01.weight_solution to "work/gsm8k-sprint73-weight-graph.json"
