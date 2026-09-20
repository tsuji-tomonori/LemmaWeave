import LemmaWeave.Problems.GSM8K.Sprint0921A02Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KSprint0921A02
open LemmaWeave.Problems.GSM8K.Sprint0921A02

theorem bath_width_inches : (60 : Nat) = 10 * 6 := by norm_num
theorem bath_length_inches : (120 : Nat) = 20 * 6 := by norm_num
theorem bath_width_feet : (60 : Nat) = 5 * 12 := by norm_num
theorem bath_length_feet : (120 : Nat) = 10 * 12 := by norm_num
theorem bath_area : (50 : Nat) = 5 * 10 := by norm_num
theorem bath_solution : BathroomArea 10 20 6 60 120 12 5 10 50 := by unfold BathroomArea; exact ⟨bath_width_inches, bath_length_inches, bath_width_feet, bath_length_feet, bath_area⟩

theorem hiking_flashlight : (16 : Nat) * 100 = 80 * 20 := by norm_num
theorem hiking_discount : (11 : Nat) * 100 = 110 * 10 := by norm_num
theorem hiking_boots : (110 : Nat) = 99 + 11 := by norm_num
theorem hiking_total : (195 : Nat) = 80 + 16 + 99 := by norm_num
theorem hiking_solution : HikingEquipment 80 20 16 110 10 11 99 195 := by unfold HikingEquipment; exact ⟨hiking_flashlight, hiking_discount, hiking_boots, hiking_total⟩

theorem antique_dolls : (15 : Nat) = 3 * 5 := by norm_num
theorem antique_clocks : (30 : Nat) = 2 * 15 := by norm_num
theorem antique_glasses : (20 : Nat) = 5 * 4 := by norm_num
theorem antique_revenue : (65 : Nat) = 15 + 30 + 20 := by norm_num
theorem antique_profit : (65 : Nat) = 40 + 25 := by norm_num
theorem antique_solution : AntiqueProfit 3 5 15 2 15 30 5 4 20 65 40 25 := by unfold AntiqueProfit; exact ⟨antique_dolls, antique_clocks, antique_glasses, antique_revenue, antique_profit⟩

theorem quiz_mistake_percent : (80 : Nat) + 20 = 100 := by norm_num
theorem quiz_total : (5 : Nat) * 100 = 25 * 20 := by norm_num
theorem quiz_unique (n : Nat) (h : 5 * 100 = n * 20) : n = 25 := by omega
theorem quiz_solution : QuizItems 80 20 5 25 := by unfold QuizItems; exact ⟨quiz_mistake_percent, quiz_total⟩

theorem bowls_base : (64 : Nat) = 32 * 2 := by norm_num
theorem bowls_exception : (3 : Nat) = 2 + 1 := by norm_num
theorem bowls_total : (65 : Nat) = 64 + 1 := by norm_num
theorem bowls_solution : Fishbowls 32 2 3 64 1 65 := by unfold Fishbowls; exact ⟨bowls_base, bowls_exception, bowls_total⟩

theorem tv_installments : (360 : Nat) = 30 * 12 := by norm_num
theorem tv_credit : (480 : Nat) = 120 + 360 := by norm_num
theorem tv_saving : (480 : Nat) = 400 + 80 := by norm_num
theorem tv_solution : TelevisionPayment 400 120 30 12 360 480 80 := by unfold TelevisionPayment; exact ⟨tv_installments, tv_credit, tv_saving⟩

theorem department_percent : (70 : Nat) + 30 = 100 := by norm_num
theorem department_total : (180 : Nat) * 100 = 600 * 30 := by norm_num
theorem department_men : (420 : Nat) * 100 = 600 * 70 := by norm_num
theorem department_sum : (600 : Nat) = 180 + 420 := by norm_num
theorem department_solution : EngineeringStudents 70 30 180 600 420 := by unfold EngineeringStudents; exact ⟨department_percent, department_total, department_men, department_sum⟩

theorem bees_first_rate : (5000 : Nat) = 1000 * 5 := by norm_num
theorem bees_second_count : (800 : Nat) * 100 = 1000 * (100 - 20) := by norm_num
theorem bees_second_rate : (7 : Nat) * 100 = 5 * (100 + 40) := by norm_num
theorem bees_second_honey : (5600 : Nat) = 800 * 7 := by norm_num
theorem bees_total : (10600 : Nat) = 5000 + 5600 := by norm_num
theorem bees_solution : BeeHoney 1000 5000 20 800 5 40 7 5600 10600 := by unfold BeeHoney; exact ⟨bees_first_rate, bees_second_count, bees_second_rate, bees_second_honey, bees_total⟩

theorem maize_stored : (24 : Nat) = 2 * 12 * 1 := by norm_num
theorem maize_after_theft : (24 : Nat) = 5 + 19 := by norm_num
theorem maize_total : (27 : Nat) = 19 + 8 := by norm_num
theorem maize_solution : Maize 2 12 1 24 5 19 8 27 := by unfold Maize; exact ⟨maize_stored, maize_after_theft, maize_total⟩

theorem factory_first : (3650 : Nat) = 10 * 365 := by norm_num
theorem factory_reduction : (365 : Nat) * 100 = 3650 * 10 := by norm_num
theorem factory_second : (3650 : Nat) = 365 + 3285 := by norm_num
theorem factory_solution : FactoryTelevisions 10 365 3650 10 365 3285 := by unfold FactoryTelevisions; exact ⟨factory_first, factory_reduction, factory_second⟩

theorem tip_meal : (25 : Nat) = 20 + 5 := by norm_num
theorem tip_bill : (50 : Nat) = 2 * 25 := by norm_num
theorem tip_total : (10 : Nat) * 100 = 50 * 20 := by norm_num
theorem tip_billy : (8 : Nat) * 100 = 10 * 80 := by norm_num
theorem tip_solution : TipShare 2 20 5 25 50 20 10 80 8 := by unfold TipShare; exact ⟨tip_meal, tip_bill, tip_total, tip_billy⟩

theorem luggage_siblings : (8 : Nat) = 4 * 2 := by norm_num
theorem luggage_parents : (6 : Nat) = 2 * 3 := by norm_num
theorem luggage_total : (14 : Nat) = 8 + 6 + 0 := by norm_num
theorem luggage_solution : Luggage 4 2 8 2 3 6 0 14 := by unfold Luggage; exact ⟨luggage_siblings, luggage_parents, luggage_total⟩

theorem tomatoes_sold : (407 : Nat) = 251 + 156 := by norm_num
theorem tomatoes_unsold : (491 : Nat) = 407 + 84 := by norm_num
theorem tomatoes_solution : Tomatoes 491 251 156 407 84 := by unfold Tomatoes; exact ⟨tomatoes_sold, tomatoes_unsold⟩

theorem library_equation : (100 : Nat) + 40 = 50 + 30 + 60 := by norm_num
theorem library_unique (x : Nat) (h : 100 + 40 = x + 30 + 60) : x = 50 := by omega
theorem library_solution : LibraryBooks 100 50 40 30 60 := by unfold LibraryBooks; exact library_equation

theorem cows_second : (53 : Nat) = 3 * 17 + 2 := by norm_num
theorem cows_total : (70 : Nat) = 17 + 53 := by norm_num
theorem cows_solution : RanchCows 17 3 2 53 70 := by unfold RanchCows; exact ⟨cows_second, cows_total⟩

#print axioms bath_solution
#print axioms hiking_solution
#print axioms antique_solution
#print axioms quiz_solution
#print axioms bowls_solution
#print axioms tv_solution
#print axioms department_solution
#print axioms bees_solution
#print axioms maize_solution
#print axioms factory_solution
#print axioms tip_solution
#print axioms luggage_solution
#print axioms tomatoes_solution
#print axioms library_solution
#print axioms cows_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.bath_solution to "work/gsm8k-sprint53-bath-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.hiking_solution to "work/gsm8k-sprint53-hiking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.antique_solution to "work/gsm8k-sprint53-antique-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.quiz_solution to "work/gsm8k-sprint53-quiz-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.bowls_solution to "work/gsm8k-sprint53-bowls-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.tv_solution to "work/gsm8k-sprint53-tv-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.department_solution to "work/gsm8k-sprint53-department-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.bees_solution to "work/gsm8k-sprint53-bees-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.maize_solution to "work/gsm8k-sprint53-maize-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.factory_solution to "work/gsm8k-sprint53-factory-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.tip_solution to "work/gsm8k-sprint53-tip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.luggage_solution to "work/gsm8k-sprint53-luggage-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.tomatoes_solution to "work/gsm8k-sprint53-tomatoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.library_solution to "work/gsm8k-sprint53-library-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0921A02.cows_solution to "work/gsm8k-sprint53-cows-graph.json"
end LemmaWeave.Tests.GSM8KSprint0921A02
