import LemmaWeave.Problems.GSM8K.Daily0917AModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0917A
open LemmaWeave.Problems.GSM8K.Daily0917A

theorem basketball_reggie (a b c d e f g h i j : Nat)
    (x : BasketballContest a b c d e f g h i j) : g = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb, hc, hd, he, hf] at hg
  exact hg

theorem basketball_loss (a b c d e f g h i j : Nat)
    (x : BasketballContest a b c d e f g h i j) : i = 12 ∧ j = 2 := by
  have hg := basketball_reggie a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hx, hh, hi, hj⟩
  norm_num [hh, hf] at hi
  omega

theorem basketball_solution : BasketballContest 3 2 1 1 2 3 10 4 12 2 ∧
    10 = 10 ∧ (12 = 12 ∧ 2 = 2) := by
  have h : BasketballContest 3 2 1 1 2 3 10 4 12 2 := by norm_num [BasketballContest]
  exact ⟨h, basketball_reggie _ _ _ _ _ _ _ _ _ _ h,
    basketball_loss _ _ _ _ _ _ _ _ _ _ h⟩

theorem candy_unit (a b c d e f g : Nat) (x : CandyClearance a b c d e f g) :
    d = 450 ∧ e = 150 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb, hc] at hd
  omega

theorem candy_total (a b c d e f g : Nat) (x : CandyClearance a b c d e f g) : g = 300 := by
  have he := (candy_unit a b c d e f g x).2
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he, hf] at hg
  exact hg

theorem candy_solution : CandyClearance 600 75 100 450 150 2 300 ∧
    (450 = 450 ∧ 150 = 150) ∧ 300 = 300 := by
  have h : CandyClearance 600 75 100 450 150 2 300 := by norm_num [CandyClearance]
  exact ⟨h, candy_unit _ _ _ _ _ _ _ h, candy_total _ _ _ _ _ _ _ h⟩

theorem classroom_initial (a b c d e : Nat) (x : ClassroomBooks a b c d e) : c = 70 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem classroom_total (a b c d e : Nat) (x : ClassroomBooks a b c d e) : e = 78 := by
  have hc := classroom_initial a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  omega

theorem classroom_solution : ClassroomBooks 10 7 70 8 78 ∧ 70 = 70 ∧ 78 = 78 := by
  have h : ClassroomBooks 10 7 70 8 78 := by norm_num [ClassroomBooks]
  exact ⟨h, classroom_initial _ _ _ _ _ h, classroom_total _ _ _ _ _ h⟩

theorem reading_kelcie (a b c d e f g : Nat) (x : ReadingBooks a b c d e f g) : c = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  omega

theorem reading_total (a b c d e f g : Nat) (x : ReadingBooks a b c d e f g) :
    f = 25 ∧ g = 65 := by
  have hc := reading_kelcie a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg⟩
  norm_num [hc] at hd
  omega

theorem reading_solution : ReadingBooks 32 4 8 16 9 25 65 ∧
    8 = 8 ∧ (25 = 25 ∧ 65 = 65) := by
  have h : ReadingBooks 32 4 8 16 9 25 65 := by norm_num [ReadingBooks]
  exact ⟨h, reading_kelcie _ _ _ _ _ _ _ h, reading_total _ _ _ _ _ _ _ h⟩

theorem marbles_bc (a b c d e f : Nat) (x : MarbleJars a b c d e f) : c = 40 ∧ e = 80 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  norm_num [hc, hd] at he
  exact ⟨hc, he⟩

theorem marbles_total (a b c d e f : Nat) (x : MarbleJars a b c d e f) : f = 148 := by
  have hce := marbles_bc a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem marbles_solution : MarbleJars 28 12 40 2 80 148 ∧
    (40 = 40 ∧ 80 = 80) ∧ 148 = 148 := by
  have h : MarbleJars 28 12 40 2 80 148 := by norm_num [MarbleJars]
  exact ⟨h, marbles_bc _ _ _ _ _ _ h, marbles_total _ _ _ _ _ _ h⟩

theorem spiders_count (a b c d e : Nat) (x : SpiderLegs a b c d e) : b = 4 ∧ c = 14 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha] at hb
  omega

theorem spiders_total (a b c d e : Nat) (x : SpiderLegs a b c d e) : e = 112 := by
  have hbc := spiders_count a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  rcases hbc with ⟨hb', hc'⟩
  norm_num [ha, hc'] at he
  exact he

theorem spiders_solution : SpiderLegs 8 4 14 10 112 ∧
    (4 = 4 ∧ 14 = 14) ∧ 112 = 112 := by
  have h : SpiderLegs 8 4 14 10 112 := by norm_num [SpiderLegs]
  exact ⟨h, spiders_count _ _ _ _ _ h, spiders_total _ _ _ _ _ h⟩

theorem milk_days_rate (a b c d e f g : Nat) (x : MilkRequirement a b c d e f g) :
    c = 21 ∧ f = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  norm_num [hc, hd] at he
  omega

theorem milk_more (a b c d e f g : Nat) (x : MilkRequirement a b c d e f g) : g = 2 := by
  have hf := (milk_days_rate a b c d e f g x).2
  rcases x with ⟨ha, hb, hc, hd, he, hcur, hg⟩
  omega

theorem milk_solution : MilkRequirement 3 7 21 105 3 5 2 ∧
    (21 = 21 ∧ 5 = 5) ∧ 2 = 2 := by
  have h : MilkRequirement 3 7 21 105 3 5 2 := by norm_num [MilkRequirement]
  exact ⟨h, milk_days_rate _ _ _ _ _ _ _ h, milk_more _ _ _ _ _ _ _ h⟩

theorem bulbs_after_use (a b c d e f : Nat) (x : LightBulbs a b c d e f) : c = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem bulbs_left (a b c d e f : Nat) (x : LightBulbs a b c d e f) : f = 12 := by
  have hc := bulbs_after_use a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  omega

theorem bulbs_solution : LightBulbs 40 16 24 2 12 12 ∧ 24 = 24 ∧ 12 = 12 := by
  have h : LightBulbs 40 16 24 2 12 12 := by norm_num [LightBulbs]
  exact ⟨h, bulbs_after_use _ _ _ _ _ _ h, bulbs_left _ _ _ _ _ _ h⟩

theorem emily_new_total (a b c d e f g h i : Nat) (x : EmilyMarbles a b c d e f g h i) :
    c = 12 ∧ d = 18 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  omega

theorem emily_left (a b c d e f g h i : Nat) (x : EmilyMarbles a b c d e f g h i) :
    f = 9 ∧ h = 10 ∧ i = 8 := by
  have hcd := emily_new_total a b c d e f g h i x
  rcases hcd with ⟨hc', hd'⟩
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hd', he] at hf
  have hf' : f = 9 := by omega
  norm_num [hf', hg] at hh
  norm_num [hd', hh] at hi
  exact ⟨hf', hh, hi⟩

theorem emily_solution : EmilyMarbles 6 2 12 18 2 9 1 10 8 ∧
    (12 = 12 ∧ 18 = 18) ∧ (9 = 9 ∧ 10 = 10 ∧ 8 = 8) := by
  have h : EmilyMarbles 6 2 12 18 2 9 1 10 8 := by norm_num [EmilyMarbles]
  exact ⟨h, emily_new_total _ _ _ _ _ _ _ _ _ h, emily_left _ _ _ _ _ _ _ _ _ h⟩

theorem shells_total (a b c d e f : Nat) (x : SharedShells a b c d e f) : d = 54 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb, hc] at hd
  exact hd

theorem shells_each (a b c d e f : Nat) (x : SharedShells a b c d e f) : f = 27 := by
  have hd := shells_total a b c d e f x
  rcases x with ⟨ha, hb, hc, hx, he, hf⟩
  norm_num [hd, he] at hf
  omega

theorem shells_solution : SharedShells 29 17 8 54 2 27 ∧ 54 = 54 ∧ 27 = 27 := by
  have h : SharedShells 29 17 8 54 2 27 := by norm_num [SharedShells]
  exact ⟨h, shells_total _ _ _ _ _ _ h, shells_each _ _ _ _ _ _ h⟩

#print axioms basketball_solution
#print axioms candy_solution
#print axioms classroom_solution
#print axioms reading_solution
#print axioms marbles_solution
#print axioms spiders_solution
#print axioms milk_solution
#print axioms bulbs_solution
#print axioms emily_solution
#print axioms shells_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.basketball_solution to "work/gsm8k-daily45-basketball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.candy_solution to "work/gsm8k-daily45-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.classroom_solution to "work/gsm8k-daily45-classroom-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.reading_solution to "work/gsm8k-daily45-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.marbles_solution to "work/gsm8k-daily45-marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.spiders_solution to "work/gsm8k-daily45-spiders-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.milk_solution to "work/gsm8k-daily45-milk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.bulbs_solution to "work/gsm8k-daily45-bulbs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.emily_solution to "work/gsm8k-daily45-emily-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917A.shells_solution to "work/gsm8k-daily45-shells-graph.json"

end LemmaWeave.Tests.GSM8KDaily0917A
