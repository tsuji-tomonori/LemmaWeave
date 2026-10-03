import LemmaWeave.Problems.GSM8K.Sprint0920A15Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A15
open LemmaWeave.Problems.GSM8K.Sprint0920A15

theorem zoo_koalas : (180 : Nat) = 36 * 5 := by norm_num
theorem zoo_total : (216 : Nat) = 180 + 36 := by norm_num
theorem zoo_solution : ZooAnimals 180 5 36 216 := by
  unfold ZooAnimals; exact ⟨zoo_koalas, zoo_total⟩

theorem printer_crumpled : (42 : Nat) = 6 * 7 := by norm_num
theorem printer_blurred : (42 : Nat) = 14 * 3 := by norm_num
theorem printer_both : (42 : Nat) = 2 * 21 := by norm_num
theorem printer_neither : (24 : Nat) + 6 + 14 = 42 + 2 := by norm_num
theorem printer_solution : PrinterPages 42 6 14 2 24 := by
  unfold PrinterPages; exact ⟨printer_crumpled, printer_blurred, printer_both, printer_neither⟩

theorem swim_camden : (16 : Nat) = 4 * 4 := by norm_num
theorem swim_susannah : (24 : Nat) = 6 * 4 := by norm_num
theorem swim_more : (6 : Nat) = 4 + 2 := by norm_num
theorem swim_solution : WeeklySwimming 16 24 4 4 6 2 := by
  unfold WeeklySwimming; exact ⟨swim_camden, swim_susannah, swim_more⟩

theorem money_lucy : (20 : Nat) = 15 + 5 := by norm_num
theorem money_linda : (15 : Nat) = 10 + 5 := by norm_num
theorem money_equal : (15 : Nat) = 15 := by norm_num
theorem money_solution : MoneyTransfer 20 5 15 10 15 := by
  unfold MoneyTransfer; exact ⟨money_lucy, money_linda, money_equal⟩

theorem box_length : (36 : Nat) = 3 * 12 := by norm_num
theorem box_width : (36 : Nat) = 4 * 9 := by norm_num
theorem box_volume : (3888 : Nat) = 12 * 36 * 9 := by norm_num
theorem box_solution : BoxVolume 12 3 36 4 9 3888 := by
  unfold BoxVolume; exact ⟨box_length, box_width, box_volume⟩

theorem buckets_per_trip : (15 : Nat) = 7 + 8 := by norm_num
theorem buckets_trips : (105 : Nat) = 7 * 15 := by norm_num
theorem buckets_solution : PoolBuckets 7 8 15 105 7 := by
  unfold PoolBuckets; exact ⟨buckets_per_trip, buckets_trips⟩

theorem landscape_mow : (378 : Nat) = 63 * 6 := by norm_num
theorem landscape_weed : (99 : Nat) = 9 * 11 := by norm_num
theorem landscape_mulch : (90 : Nat) = 10 * 9 := by norm_num
theorem landscape_total : (567 : Nat) = 378 + 99 + 90 := by norm_num
theorem landscape_solution : Landscaping 63 6 9 11 10 9 378 99 90 567 := by
  unfold Landscaping; exact ⟨landscape_mow, landscape_weed, landscape_mulch, landscape_total⟩

theorem unicorn_meters : (9000 : Nat) = 9 * 1000 := by norm_num
theorem unicorn_steps : (9000 : Nat) = 3000 * 3 := by norm_num
theorem unicorn_one : (12000 : Nat) = 3000 * 4 := by norm_num
theorem unicorn_total : (72000 : Nat) = 12000 * 6 := by norm_num
theorem unicorn_solution : UnicornFlowers 9 1000 9000 3 3000 4 12000 6 72000 := by
  unfold UnicornFlowers; exact ⟨unicorn_meters, unicorn_steps, unicorn_one, unicorn_total⟩

theorem banana_mush : (20 : Nat) = 5 * 4 := by norm_num
theorem banana_flour : (15 : Nat) = 5 * 3 := by norm_num
theorem banana_solution : BananaBread 20 4 5 3 15 := by
  unfold BananaBread; exact ⟨banana_mush, banana_flour⟩

theorem cards_available : (130 : Nat) = 15 + 115 := by norm_num
theorem cards_friends : (96 : Nat) = 8 * 12 := by norm_num
theorem cards_sisters : (6 : Nat) = 2 * 3 := by norm_num
theorem cards_miguel : (115 : Nat) = 13 + 96 + 6 := by norm_num
theorem cards_solution : CardGiving 130 15 115 8 12 96 2 3 6 13 := by
  unfold CardGiving; exact ⟨cards_available, cards_friends, cards_sisters, cards_miguel⟩

theorem pizza_total : (24 : Nat) = 2 * 12 := by norm_num
theorem pizza_dean : (6 : Nat) * 2 = 12 * 1 := by norm_num
theorem pizza_sammy : (4 : Nat) * 3 = 12 * 1 := by norm_num
theorem pizza_eaten : (13 : Nat) = 6 + 3 + 4 := by norm_num
theorem pizza_left : (24 : Nat) = 13 + 11 := by norm_num
theorem pizza_solution : PizzaSlices 2 12 24 1 2 6 3 1 3 4 13 11 := by
  unfold PizzaSlices; exact ⟨pizza_total, pizza_dean, pizza_sammy, pizza_eaten, pizza_left⟩

theorem marriage_josh : (52 : Nat) = 22 + 30 := by norm_num
theorem marriage_combined : (110 : Nat) = 5 * 22 := by norm_num
theorem marriage_anna_now : (110 : Nat) = 52 + 58 := by norm_num
theorem marriage_anna_then : (58 : Nat) = 28 + 30 := by norm_num
theorem marriage_solution : MarriageAges 22 30 52 5 110 58 28 := by
  unfold MarriageAges; exact ⟨marriage_josh, marriage_combined, marriage_anna_now, marriage_anna_then⟩

theorem club_friend_drinks : (10 : Nat) = 2 * 5 := by norm_num
theorem club_total_drinks : (16 : Nat) = 10 + 6 := by norm_num
theorem club_drink_cost : (96 : Nat) = 16 * 6 := by norm_num
theorem club_order : (110 : Nat) = 96 + 14 := by norm_num
theorem club_tip : (33 : Nat) * 100 = 110 * 30 := by norm_num
theorem club_total : (163 : Nat) = 20 + 110 + 33 := by norm_num
theorem club_solution : ClubNight 20 2 5 10 6 16 6 96 14 110 30 33 163 := by
  unfold ClubNight; exact ⟨club_friend_drinks, club_total_drinks, club_drink_cost, club_order, club_tip, club_total⟩

theorem fish_eyes : (24 : Nat) = 22 + 2 := by norm_num
theorem fish_count : (24 : Nat) = 12 * 2 := by norm_num
theorem fish_each : (12 : Nat) = 4 * 3 := by norm_num
theorem fish_solution : FishSharing 22 2 24 2 12 3 4 := by
  unfold FishSharing; exact ⟨fish_eyes, fish_count, fish_each⟩

theorem leak_net : (16 : Nat) = 15 + 1 := by norm_num
theorem leak_time : (600 : Nat) = 40 * 15 := by norm_num
theorem leak_solution : LeakingPool 600 16 1 15 40 := by
  unfold LeakingPool; exact ⟨leak_net, leak_time⟩

#print axioms zoo_solution
#print axioms printer_solution
#print axioms swim_solution
#print axioms money_solution
#print axioms box_solution
#print axioms buckets_solution
#print axioms landscape_solution
#print axioms unicorn_solution
#print axioms banana_solution
#print axioms cards_solution
#print axioms pizza_solution
#print axioms marriage_solution
#print axioms club_solution
#print axioms fish_solution
#print axioms leak_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.zoo_solution to "work/gsm8k-sprint47-zoo-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.printer_solution to "work/gsm8k-sprint47-printer-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.swim_solution to "work/gsm8k-sprint47-swim-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.money_solution to "work/gsm8k-sprint47-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.box_solution to "work/gsm8k-sprint47-box-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.buckets_solution to "work/gsm8k-sprint47-buckets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.landscape_solution to "work/gsm8k-sprint47-landscape-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.unicorn_solution to "work/gsm8k-sprint47-unicorn-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.banana_solution to "work/gsm8k-sprint47-banana-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.cards_solution to "work/gsm8k-sprint47-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.pizza_solution to "work/gsm8k-sprint47-pizza-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.marriage_solution to "work/gsm8k-sprint47-marriage-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.club_solution to "work/gsm8k-sprint47-club-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.fish_solution to "work/gsm8k-sprint47-fish-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A15.leak_solution to "work/gsm8k-sprint47-leak-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A15
