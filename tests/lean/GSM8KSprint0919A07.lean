import LemmaWeave.Problems.GSM8K.Sprint0919A07Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A07
open LemmaWeave.Problems.GSM8K.Sprint0919A07

theorem football_players (a b c d e f : Nat) (x : FootballExpectation a b c d e f) : d = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb, hc] at hd
  omega

theorem football_expected (a b c d e f : Nat) (x : FootballExpectation a b c d e f) : f = 50 := by
  have hd := football_players a b c d e f x
  rcases x with ⟨ha, hb, hc, hx, he, hf⟩
  norm_num [ha, hd, he] at hf
  omega

theorem football_solution :
    FootballExpectation 60 24 50 12 250 50 ∧ 12 = 12 ∧ 50 = 50 := by
  have x : FootballExpectation 60 24 50 12 250 50 := by norm_num [FootballExpectation]
  exact ⟨x, football_players _ _ _ _ _ _ x, football_expected _ _ _ _ _ _ x⟩

theorem shoes_edward (a b c d e : Nat) (x : ShoePairs a b c d e) : c = 66 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem shoes_jacob (a b c d e : Nat) (x : ShoePairs a b c d e) : d = 33 := by
  have hc := shoes_edward a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc] at hd
  omega

theorem shoes_total (a b c d e : Nat) (x : ShoePairs a b c d e) : e = 121 := by
  have hc := shoes_edward a b c d e x
  have hd := shoes_jacob a b c d e x
  rcases x with ⟨ha, hb, hx, hy, he⟩
  norm_num [ha, hc, hd] at he
  exact he

theorem shoes_solution : ShoePairs 22 3 66 33 121 ∧ 66 = 66 ∧ 33 = 33 ∧ 121 = 121 := by
  have x : ShoePairs 22 3 66 33 121 := by norm_num [ShoePairs]
  exact ⟨x, shoes_edward _ _ _ _ _ x, shoes_jacob _ _ _ _ _ x,
    shoes_total _ _ _ _ _ x⟩

theorem salary_first (a b c d e : Nat) (x : SalaryRaises a b c d e) : c = 112000 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  omega

theorem salary_current (a b c d e : Nat) (x : SalaryRaises a b c d e) : e = 134400 := by
  have hc := salary_first a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  omega

theorem salary_solution :
    SalaryRaises 80000 140 112000 120 134400 ∧ 112000 = 112000 ∧ 134400 = 134400 := by
  have x : SalaryRaises 80000 140 112000 120 134400 := by norm_num [SalaryRaises]
  exact ⟨x, salary_first _ _ _ _ _ x, salary_current _ _ _ _ _ x⟩

theorem tomatoes_total (a b c d e f g : Nat) (x : Tomatoes a b c d e f g) : c = 126 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc

theorem tomatoes_undried (a b c d e f g : Nat) (x : Tomatoes a b c d e f g) : e = 63 := by
  have hc := tomatoes_total a b c d e f g x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg⟩
  norm_num [hc] at hd he
  omega

theorem tomatoes_sauce (a b c d e f g : Nat) (x : Tomatoes a b c d e f g) : f = 21 := by
  have he := tomatoes_undried a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [he] at hf
  omega

theorem tomatoes_left (a b c d e f g : Nat) (x : Tomatoes a b c d e f g) : g = 42 := by
  have he := tomatoes_undried a b c d e f g x
  have hf := tomatoes_sauce a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hx, hy, hg⟩
  norm_num [he, hf] at hg
  omega

theorem tomatoes_solution :
    Tomatoes 18 7 126 63 63 21 42 ∧ 126 = 126 ∧ 63 = 63 ∧ 21 = 21 ∧ 42 = 42 := by
  have x : Tomatoes 18 7 126 63 63 21 42 := by norm_num [Tomatoes]
  exact ⟨x, tomatoes_total _ _ _ _ _ _ _ x, tomatoes_undried _ _ _ _ _ _ _ x,
    tomatoes_sauce _ _ _ _ _ _ _ x, tomatoes_left _ _ _ _ _ _ _ x⟩

theorem cards_best_buy (a b c d e f g h i j k : Nat)
    (x : ReturnableGiftCards a b c d e f g h i j k) : e = 2500 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  norm_num [hc, hd] at he
  omega

theorem cards_walmart (a b c d e f g h i j k : Nat)
    (x : ReturnableGiftCards a b c d e f g h i j k) : j = 1400 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [hf, hg] at hh
  norm_num [hh, hi] at hj
  omega

theorem cards_total (a b c d e f g h i j k : Nat)
    (x : ReturnableGiftCards a b c d e f g h i j k) : k = 3900 := by
  have he := cards_best_buy a b c d e f g h i j k x
  have hj := cards_walmart a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg, hh, hi, hy, hk⟩
  norm_num [he, hj] at hk
  exact hk

theorem cards_solution :
    ReturnableGiftCards 6 1 5 500 2500 9 2 7 200 1400 3900 ∧
    2500 = 2500 ∧ 1400 = 1400 ∧ 3900 = 3900 := by
  have x : ReturnableGiftCards 6 1 5 500 2500 9 2 7 200 1400 3900 := by
    norm_num [ReturnableGiftCards]
  exact ⟨x, cards_best_buy _ _ _ _ _ _ _ _ _ _ _ x,
    cards_walmart _ _ _ _ _ _ _ _ _ _ _ x,
    cards_total _ _ _ _ _ _ _ _ _ _ _ x⟩

#print axioms football_solution
#print axioms shoes_solution
#print axioms salary_solution
#print axioms tomatoes_solution
#print axioms cards_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A07.football_solution to "work/gsm8k-sprint07-football-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A07.shoes_solution to "work/gsm8k-sprint07-shoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A07.salary_solution to "work/gsm8k-sprint07-salary-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A07.tomatoes_solution to "work/gsm8k-sprint07-tomatoes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A07.cards_solution to "work/gsm8k-sprint07-cards-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A07
