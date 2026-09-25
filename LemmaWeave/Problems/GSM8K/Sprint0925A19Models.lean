import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0925A19
structure Raisins where other : ℕ; h : 72 + 74 + 3 * other = 437
theorem raisins_remaining (m : Raisins) : 3 * m.other = 291 := by cases m; omega
theorem raisins_solution (m : Raisins) : m.other = 97 := by cases m; omega
structure Bees80k where target lost days : ℕ; ht : 4 * target = 80000; hl : lost + target = 80000; hd : lost = 1200 * days
theorem bees_target (m : Bees80k) : m.target = 20000 := by cases m; omega
theorem bees_lost (m : Bees80k) : m.lost = 60000 := by cases m; omega
theorem bees_solution_conditional (m : Bees80k) : m.days = 50 := by cases m; omega
theorem bees_initial_not_fixed : 4 * 16000 = 64000 ∧ 1200 * 40 + 16000 = 64000 ∧ (40 : ℕ) ≠ 50 := by norm_num
structure Salary where commission earnings savings expenses : ℕ; hc : 10 * commission = 23600; he : earnings = 1250 + commission; hs : 5 * savings = earnings; hx : expenses + savings = earnings
theorem salary_commission (m : Salary) : m.commission = 2360 := by cases m; omega
theorem salary_earnings (m : Salary) : m.earnings = 3610 := by cases m; omega
theorem salary_savings (m : Salary) : m.savings = 722 := by cases m; omega
theorem salary_solution (m : Salary) : m.expenses = 2888 := by cases m; omega
structure Chairs where hourly regular total : ℕ; hh : hourly = 3 * 4; hr : regular = 6 * hourly; ht : total = regular + 1
theorem chairs_hourly (m : Chairs) : m.hourly = 12 := by cases m; omega
theorem chairs_regular (m : Chairs) : m.regular = 72 := by cases m; omega
theorem chairs_solution (m : Chairs) : m.total = 73 := by cases m; omega
structure Pay40Cents where miles cents : ℕ; hm : miles = 2 * 400; hc : cents = 40 * miles
theorem pay_miles (m : Pay40Cents) : m.miles = 800 := by cases m; omega
theorem pay_literal_differs : (32000 : ℕ) ≠ 320 := by norm_num
theorem pay_solution_conditional (m : Pay40Cents) : m.cents = 32000 := by cases m; omega
structure Car where lost value : ℕ; hl : lost = 6 * 1000; hv : value + lost = 20000
theorem car_lost (m : Car) : m.lost = 6000 := by cases m; omega
theorem car_solution (m : Car) : m.value = 14000 := by cases m; omega
structure Demerits where late current remaining : ℕ; hl : late = 2 * 6; hc : current = late + 15; hr : remaining + current = 50
theorem demerits_late (m : Demerits) : m.late = 12 := by cases m; omega
theorem demerits_current (m : Demerits) : m.current = 27 := by cases m; omega
theorem demerits_solution (m : Demerits) : m.remaining = 23 := by cases m; omega
structure Camp where left after incoming second difference : ℕ; hl : left = 4 * 28; ha : after + left = 300; hi : incoming = 7 * 15; hs : second = after + incoming; hd : difference + second = 300
theorem camp_left (m : Camp) : m.left = 112 := by cases m; omega
theorem camp_after (m : Camp) : m.after = 188 := by cases m; omega
theorem camp_incoming (m : Camp) : m.incoming = 105 := by cases m; omega
theorem camp_second (m : Camp) : m.second = 293 := by cases m; omega
theorem camp_solution (m : Camp) : m.difference = 7 := by cases m; omega
structure Bubbles where cups tablespoons : ℕ; hc : 8 * cups = 40; hs : tablespoons = 3 * cups
theorem bubbles_cups (m : Bubbles) : m.cups = 5 := by cases m; omega
theorem bubbles_solution (m : Bubbles) : m.tablespoons = 15 := by cases m; omega
structure Nest where additional dropped remaining : ℕ; ha : additional = 12 * 6; hd : 3 * dropped = additional; hr : remaining + dropped = additional
theorem nest_additional (m : Nest) : m.additional = 72 := by cases m; omega
theorem nest_dropped (m : Nest) : m.dropped = 24 := by cases m; omega
theorem nest_solution (m : Nest) : m.remaining = 48 := by cases m; omega
structure Legos where afterLoss now : ℕ; hl : afterLoss + 57 = 380; hn : now + 24 = afterLoss
theorem legos_after_loss (m : Legos) : m.afterLoss = 323 := by cases m; omega
theorem legos_solution (m : Legos) : m.now = 299 := by cases m; omega
structure Monopoly where helen susan total : ℕ; hh : helen = 2 * 5; hs : susan = 3 * 5; ht : total = 5 + helen + susan
theorem monopoly_helen (m : Monopoly) : m.helen = 10 := by cases m; omega
theorem monopoly_susan (m : Monopoly) : m.susan = 15 := by cases m; omega
theorem monopoly_solution (m : Monopoly) : m.total = 30 := by cases m; omega
structure Psychiatrist where second firstTwo remainingTotal : ℕ; hs : second = 6 + 5; hf : firstTwo = 6 + second; hr : remainingTotal + firstTwo = 25
theorem psychiatrist_second (m : Psychiatrist) : m.second = 11 := by cases m; omega
theorem psychiatrist_first_two (m : Psychiatrist) : m.firstTwo = 17 := by cases m; omega
theorem psychiatrist_distribution_underdetermined : 3 + 5 = 8 ∧ 4 + 4 = 8 ∧ (3 : ℕ) ≠ 4 := by norm_num
theorem psychiatrist_solution (m : Psychiatrist) : m.remainingTotal = 8 := by cases m; omega
structure Crayons where green pink : ℕ; hg : 3 * green = 2 * 6; hp : 8 + 6 + green + pink = 24
theorem crayons_green (m : Crayons) : m.green = 4 := by cases m; omega
theorem crayons_solution (m : Crayons) : m.pink = 6 := by cases m; omega
structure Scrabble where afterBrenda finalLead : ℕ; hb : afterBrenda = 22 + 15; hd : finalLead + 32 = afterBrenda
theorem scrabble_after_brenda (m : Scrabble) : m.afterBrenda = 37 := by cases m; omega
theorem scrabble_solution (m : Scrabble) : m.finalLead = 5 := by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0925A19
