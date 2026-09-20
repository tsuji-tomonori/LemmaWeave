import LemmaWeave.Problems.GSM8K.Sprint0920A11Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0920A11
open LemmaWeave.Problems.GSM8K.Sprint0920A11

theorem laundry_per_load : (105 : Nat) = 45 + 60 := by norm_num
theorem laundry_serial_minutes : (840 : Nat) = 8 * 105 := by norm_num
theorem laundry_serial_hours : (840 : Nat) = 14 * 60 := by norm_num
theorem laundry_parallel : (105 : Nat) = 105 := by norm_num
theorem laundry_nonunique : (840 : Nat) ≠ 105 := by norm_num
theorem laundry_solution : LaundryTiming 8 45 60 105 840 60 14 105 := by
  unfold LaundryTiming
  exact ⟨laundry_per_load, laundry_serial_minutes, laundry_serial_hours, laundry_parallel, laundry_nonunique⟩

theorem pharmacy_person_hours : (22 : Nat) = 2 * 8 + 6 := by norm_num
theorem pharmacy_total : (154 : Nat) = 7 * 22 := by norm_num
theorem pharmacy_solution : PharmacyCustomers 2 8 6 22 7 154 := by
  unfold PharmacyCustomers
  exact ⟨pharmacy_person_hours, pharmacy_total⟩

theorem towels_guest : (80 : Nat) = 2 * 40 := by norm_num
theorem towels_master : (200 : Nat) = 4 * 50 := by norm_num
theorem towels_subtotal : (280 : Nat) = 80 + 200 := by norm_num
theorem towels_discount : (56 : Nat) * 100 = 280 * 20 := by norm_num
theorem towels_payment : (280 : Nat) = 224 + 56 := by norm_num
theorem towels_solution : TowelPurchase 2 40 80 4 50 200 280 20 56 224 := by
  unfold TowelPurchase
  exact ⟨towels_guest, towels_master, towels_subtotal, towels_discount, towels_payment⟩

theorem birthday_bringers : (10 : Nat) * 2 = 20 := by norm_num
theorem birthday_companions : (10 : Nat) = 10 := by norm_num
theorem birthday_guests : (30 : Nat) = 20 + 10 := by norm_num
theorem birthday_total : (31 : Nat) = 30 + 1 := by norm_num
theorem birthday_solution : BirthdayParty 20 2 10 10 30 1 31 := by
  unfold BirthdayParty
  exact ⟨birthday_bringers, birthday_companions, birthday_guests, birthday_total⟩

theorem glee_female : (12 : Nat) = 2 * 6 := by norm_num
theorem glee_total : (18 : Nat) = 12 + 6 := by norm_num
theorem glee_solution : GleeClub 2 6 12 18 := by
  unfold GleeClub
  exact ⟨glee_female, glee_total⟩

#print axioms laundry_solution
#print axioms pharmacy_solution
#print axioms towels_solution
#print axioms birthday_solution
#print axioms glee_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.laundry_solution to "work/gsm8k-sprint43-laundry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.pharmacy_solution to "work/gsm8k-sprint43-pharmacy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.towels_solution to "work/gsm8k-sprint43-towels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.birthday_solution to "work/gsm8k-sprint43-birthday-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0920A11.glee_solution to "work/gsm8k-sprint43-glee-graph.json"

end LemmaWeave.Tests.GSM8KSprint0920A11
