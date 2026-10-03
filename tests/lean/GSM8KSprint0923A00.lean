import LemmaWeave.Problems.GSM8K.Sprint0923A00Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A00
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A00

theorem national_extra (m : P.NationalPark) : m.extra = 120 := P.national_extra m
theorem national_redwoods (m : P.NationalPark) : m.redwoods = 720 := P.national_redwoods m
theorem national_solution (m : P.NationalPark) : m.total = 1320 := P.national_solution m
theorem papayas_sunday (m : P.Papayas) : m.sunday = 4 := P.papayas_sunday m
theorem papayas_yellowed (m : P.Papayas) : m.yellowed = 6 := P.papayas_yellowed m
theorem papayas_solution (m : P.Papayas) : m.left = 8 := P.papayas_solution m
theorem anniversary_married (m : P.Anniversary) : m.married = 2005 := P.anniversary_married m
theorem anniversary_dating (m : P.Anniversary) : m.dating = 2002 := P.anniversary_dating m
theorem anniversary_solution (m : P.Anniversary) : m.met = 2000 := P.anniversary_solution m
theorem tomatoes_first (m : P.Tomatoes) : m.first = 25 := P.tomatoes_first m
theorem tomatoes_after_first (m : P.Tomatoes) : m.afterFirst = 75 := P.tomatoes_after_first m
theorem tomatoes_after_second (m : P.Tomatoes) : m.afterSecond = 55 := P.tomatoes_after_second m
theorem tomatoes_third (m : P.Tomatoes) : m.third = 40 := P.tomatoes_third m
theorem tomatoes_solution (m : P.Tomatoes) : m.left = 15 := P.tomatoes_solution m
theorem novels_alexandre (m : P.Novels) : m.alexandre = 12 := P.novels_alexandre m
theorem novels_solution (m : P.Novels) : m.difference = 108 := P.novels_solution m
theorem kickboxing_early (m : P.Kickboxing) : m.early = 12 := P.kickboxing_early m
theorem kickboxing_last (m : P.Kickboxing) : m.last = 2 := P.kickboxing_last m
theorem kickboxing_solution (m : P.Kickboxing) : m.total = 14 := P.kickboxing_solution m
theorem glass_twice_red (m : P.GlassBallsTwice) : m.redLeft = 10 := P.glass_twice_red m
theorem glass_twice_blue (m : P.GlassBallsTwice) : m.blue = 32 := P.glass_twice_blue m
theorem glass_twice_solution (m : P.GlassBallsTwice) : m.yellow = 32 := P.glass_twice_solution m
theorem glass_more_blue (m : P.GlassBallsTwoTimesMore) : m.blue = 48 := P.glass_more_blue m
theorem glass_more_solution (m : P.GlassBallsTwoTimesMore) : m.yellow = 16 := P.glass_more_solution m
theorem chips_weekly (m : P.Chips) : m.weeklyCents = 250 := P.chips_weekly m
theorem chips_solution (m : P.Chips) : m.totalCents = 1000 := P.chips_solution m
theorem officers_a (m : P.Officers) : m.aRate = 9 := P.officers_a m
theorem officers_b (m : P.Officers) : m.bRate = 11 := P.officers_b m
theorem officers_solution (m : P.Officers) : m.totalRate = 20 := P.officers_solution m
theorem rocks_pounds (m : P.Rocks) : m.pounds = 15 := P.rocks_pounds m
theorem rocks_solution (m : P.Rocks) : m.rocks = 10 := P.rocks_solution m
theorem animals_intended_solution (goats : ℕ) (h : goats + 40 + 56 = 200) : goats = 104 := P.animals_intended_solution goats h
theorem animals_combined_range (sheep goats : ℕ) (h : sheep + goats = 56) : goats ≤ 56 := P.animals_combined_range sheep goats h
theorem animals_combined_zero_example : 56 + 0 = 56 := P.animals_combined_zero_example
theorem animals_combined_fifty_six_example : 0 + 56 = 56 := P.animals_combined_fifty_six_example
theorem basket_solution (m : P.Basket) : m.oranges = 10 := P.basket_solution m
theorem river_width_gain (m : P.River) : m.widthGain = 30 := P.river_width_gain m
theorem river_segments (m : P.River) : m.segments = 15 := P.river_segments m
theorem river_distance (m : P.River) : m.distance = 150 := P.river_distance m
theorem river_solution (m : P.River) : m.seconds = 30 := P.river_solution m
theorem ophelia_lennon_future (m : P.Ophelia) : m.lennonFuture = 10 := P.ophelia_lennon_future m
theorem ophelia_future (m : P.Ophelia) : m.opheliaFuture = 40 := P.ophelia_future m
theorem ophelia_solution (m : P.Ophelia) : m.opheliaNow = 38 := P.ophelia_solution m
theorem zachary_total (m : P.Zachary) : m.totalCents = 1800 := P.zachary_total m
theorem zachary_solution (m : P.Zachary) : m.neededCents = 800 := P.zachary_solution m

end LemmaWeave.Tests.GSM8KSprint0923A00

#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.national_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.papayas_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.anniversary_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.tomatoes_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.novels_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.kickboxing_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.glass_twice_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.glass_more_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.chips_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.officers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.rocks_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.animals_intended_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.animals_combined_range
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.basket_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.river_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.ophelia_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A00.zachary_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.national_solution to "work/gsm8k-sprint92-national-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.papayas_solution to "work/gsm8k-sprint92-papayas-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.anniversary_solution to "work/gsm8k-sprint92-anniversary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.tomatoes_solution to "work/gsm8k-sprint92-tomatoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.novels_solution to "work/gsm8k-sprint92-novels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.kickboxing_solution to "work/gsm8k-sprint92-kickboxing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.glass_twice_solution to "work/gsm8k-sprint92-glass-balls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.chips_solution to "work/gsm8k-sprint92-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.officers_solution to "work/gsm8k-sprint92-officers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.rocks_solution to "work/gsm8k-sprint92-rocks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.animals_intended_solution to "work/gsm8k-sprint92-animals-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.basket_solution to "work/gsm8k-sprint92-basket-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.river_solution to "work/gsm8k-sprint92-river-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.ophelia_solution to "work/gsm8k-sprint92-ophelia-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A00.zachary_solution to "work/gsm8k-sprint92-zachary-graph.json"
