import LemmaWeave.Problems.GSM8K.Sprint0922A14Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A14
open LemmaWeave.Problems.GSM8K.Sprint0922A14

theorem cans_trips (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Cans) : m.trips = 7 := LemmaWeave.Problems.GSM8K.Sprint0922A14.cans_trips m
theorem cans_roundtrip (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Cans) : m.roundtrip = 20 := LemmaWeave.Problems.GSM8K.Sprint0922A14.cans_roundtrip m
theorem cans_per_trip (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Cans) : m.perTrip = 50 := LemmaWeave.Problems.GSM8K.Sprint0922A14.cans_per_trip m
theorem cans_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Cans) : m.total = 350 := LemmaWeave.Problems.GSM8K.Sprint0922A14.cans_solution m
theorem stickers_silver (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Stickers) : m.silver = 100 := LemmaWeave.Problems.GSM8K.Sprint0922A14.stickers_silver m
theorem stickers_bronze (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Stickers) : m.bronze = 80 := LemmaWeave.Problems.GSM8K.Sprint0922A14.stickers_bronze m
theorem stickers_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Stickers) : m.total = 230 := LemmaWeave.Problems.GSM8K.Sprint0922A14.stickers_total m
theorem stickers_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Stickers) : m.each = 46 := LemmaWeave.Problems.GSM8K.Sprint0922A14.stickers_solution m
theorem pizza_eaten (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Pizza) : m.eaten = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A14.pizza_eaten m
theorem pizza_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Pizza) : m.people = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A14.pizza_solution m
theorem tanning_week (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Tanning) : m.weekly = 60 := LemmaWeave.Problems.GSM8K.Sprint0922A14.tanning_week m
theorem tanning_first_half (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Tanning) : m.firstHalf = 120 := LemmaWeave.Problems.GSM8K.Sprint0922A14.tanning_first_half m
theorem tanning_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Tanning) : m.remaining = 80 := LemmaWeave.Problems.GSM8K.Sprint0922A14.tanning_solution m
theorem freelance_hourly (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Freelance) : m.hourly = 10 := LemmaWeave.Problems.GSM8K.Sprint0922A14.freelance_hourly m
theorem freelance_weekly (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Freelance) : m.weekly = 400 := LemmaWeave.Problems.GSM8K.Sprint0922A14.freelance_weekly m
theorem freelance_monthly_gross (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Freelance) : m.monthlyGross = 1600 := LemmaWeave.Problems.GSM8K.Sprint0922A14.freelance_monthly_gross m
theorem freelance_fica (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Freelance) : m.fica = 100 := LemmaWeave.Problems.GSM8K.Sprint0922A14.freelance_fica m
theorem freelance_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Freelance) : m.net = 1100 := LemmaWeave.Problems.GSM8K.Sprint0922A14.freelance_solution m
theorem pens_blue (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Pens) : m.blue = 100 := LemmaWeave.Problems.GSM8K.Sprint0922A14.pens_blue m
theorem pens_red_unit (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Pens) : m.redUnit = 20 := LemmaWeave.Problems.GSM8K.Sprint0922A14.pens_red_unit m
theorem pens_red (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Pens) : m.red = 300 := LemmaWeave.Problems.GSM8K.Sprint0922A14.pens_red m
theorem pens_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Pens) : m.totalDollars = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A14.pens_solution m
theorem frame_increase (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Frame) : m.increase = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A14.frame_increase m
theorem frame_wanted (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Frame) : m.wanted = 72 := LemmaWeave.Problems.GSM8K.Sprint0922A14.frame_wanted m
theorem frame_smaller (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Frame) : m.smaller = 54 := LemmaWeave.Problems.GSM8K.Sprint0922A14.frame_smaller m
theorem frame_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Frame) : m.remaining = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A14.frame_solution m
theorem stamps_notebooks (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Stamps) : m.notebooks = 80 := LemmaWeave.Problems.GSM8K.Sprint0922A14.stamps_notebooks m
theorem stamps_binders (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Stamps) : m.binders = 100 := LemmaWeave.Problems.GSM8K.Sprint0922A14.stamps_binders m
theorem stamps_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Stamps) : m.total = 180 := LemmaWeave.Problems.GSM8K.Sprint0922A14.stamps_total m
theorem stamps_kept (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Stamps) : m.kept = 45 := LemmaWeave.Problems.GSM8K.Sprint0922A14.stamps_kept m
theorem stamps_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Stamps) : m.give = 135 := LemmaWeave.Problems.GSM8K.Sprint0922A14.stamps_solution m
theorem necklaces_pieces (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Necklaces) : m.pieces = 90 := LemmaWeave.Problems.GSM8K.Sprint0922A14.necklaces_pieces m
theorem necklaces_count (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Necklaces) : m.necklaces = 9 := LemmaWeave.Problems.GSM8K.Sprint0922A14.necklaces_count m
theorem necklaces_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Necklaces) : m.friends = 8 := LemmaWeave.Problems.GSM8K.Sprint0922A14.necklaces_solution m
theorem cows_aaron (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Cows) : m.aaron = 240 := LemmaWeave.Problems.GSM8K.Sprint0922A14.cows_aaron m
theorem cows_pair (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Cows) : m.pair = 300 := LemmaWeave.Problems.GSM8K.Sprint0922A14.cows_pair m
theorem cows_marovich (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Cows) : m.marovich = 270 := LemmaWeave.Problems.GSM8K.Sprint0922A14.cows_marovich m
theorem cows_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Cows) : m.total = 570 := LemmaWeave.Problems.GSM8K.Sprint0922A14.cows_solution m
theorem maddie_total_exact (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Maddie) (hExact : m.episodeMinutes = 44) : m.total = 352 := LemmaWeave.Problems.GSM8K.Sprint0922A14.maddie_total_exact m hExact
theorem maddie_friday_exact (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Maddie) (hExact : m.episodeMinutes = 44) : m.friday = 88 := LemmaWeave.Problems.GSM8K.Sprint0922A14.maddie_friday_exact m hExact
theorem maddie_known_exact (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Maddie) (hExact : m.episodeMinutes = 44) : m.known = 247 := LemmaWeave.Problems.GSM8K.Sprint0922A14.maddie_known_exact m hExact
theorem maddie_counterexample : ∃ m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Maddie, m.episodeMinutes = 43 ∧ m.weekend = 99 := LemmaWeave.Problems.GSM8K.Sprint0922A14.maddie_counterexample
theorem maddie_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Maddie) (hExact : m.episodeMinutes = 44) : m.weekend = 105 := LemmaWeave.Problems.GSM8K.Sprint0922A14.maddie_solution m hExact
theorem nails_dry_color (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.NailsDry) : m.color = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A14.nails_dry_color m
theorem nails_dry_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.NailsDry) : m.total = 13 := LemmaWeave.Problems.GSM8K.Sprint0922A14.nails_dry_solution m
theorem roommates_fixed (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Roommates) : m.fixed = 1214 := LemmaWeave.Problems.GSM8K.Sprint0922A14.roommates_fixed m
theorem roommates_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Roommates) : m.total = 1514 := LemmaWeave.Problems.GSM8K.Sprint0922A14.roommates_total m
theorem roommates_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Roommates) : m.groceries = 300 := LemmaWeave.Problems.GSM8K.Sprint0922A14.roommates_solution m
theorem running_billy_before (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Running) : m.billyThirds = 18 := LemmaWeave.Problems.GSM8K.Sprint0922A14.running_billy_before m
theorem running_tiffany (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Running) : m.tiffanyThirds = 21 := LemmaWeave.Problems.GSM8K.Sprint0922A14.running_tiffany m
theorem running_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Running) : m.saturdayThirds = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A14.running_solution m
theorem muffins_melissa (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Muffins) : m.melissa = 120 := LemmaWeave.Problems.GSM8K.Sprint0922A14.muffins_melissa m
theorem muffins_pair (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Muffins) : m.pair = 150 := LemmaWeave.Problems.GSM8K.Sprint0922A14.muffins_pair m
theorem muffins_tiffany (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Muffins) : m.tiffany = 75 := LemmaWeave.Problems.GSM8K.Sprint0922A14.muffins_tiffany m
theorem muffins_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Muffins) : m.total = 225 := LemmaWeave.Problems.GSM8K.Sprint0922A14.muffins_total m
theorem muffins_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A14.Muffins) : m.revenue = 900 := LemmaWeave.Problems.GSM8K.Sprint0922A14.muffins_solution m

end LemmaWeave.Tests.GSM8KSprint0922A14

#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.cans_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.cows_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.frame_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.freelance_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.maddie_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.muffins_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.nails_dry_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.necklaces_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.pens_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.pizza_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.roommates_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.running_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.stamps_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.stickers_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A14.tanning_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.cans_solution to "work/gsm8k-sprint85-cans-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.cows_solution to "work/gsm8k-sprint85-cows-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.frame_solution to "work/gsm8k-sprint85-frame-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.freelance_solution to "work/gsm8k-sprint85-freelance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.maddie_solution to "work/gsm8k-sprint85-maddie-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.muffins_solution to "work/gsm8k-sprint85-muffins-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.nails_dry_solution to "work/gsm8k-sprint85-nails_dry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.necklaces_solution to "work/gsm8k-sprint85-necklaces-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.pens_solution to "work/gsm8k-sprint85-pens-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.pizza_solution to "work/gsm8k-sprint85-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.roommates_solution to "work/gsm8k-sprint85-roommates-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.running_solution to "work/gsm8k-sprint85-running-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.stamps_solution to "work/gsm8k-sprint85-stamps-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.stickers_solution to "work/gsm8k-sprint85-stickers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A14.tanning_solution to "work/gsm8k-sprint85-tanning-graph.json"
