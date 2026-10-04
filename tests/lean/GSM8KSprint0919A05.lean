import LemmaWeave.Problems.GSM8K.Sprint0919A05Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A05
open LemmaWeave.Problems.GSM8K.Sprint0919A05

theorem dog_bought (a b c d e : Nat) (h : DogFood a b c d e) : c = 25 := by
  rcases h with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem dog_already_had (a b c d e : Nat) (h : DogFood a b c d e) : d = 15 := by
  have hc := dog_bought a b c d e h
  rcases h with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, he] at hd
  omega

theorem dog_solution : DogFood 15 10 25 15 40 ∧ 25 = 25 ∧ 15 = 15 := by
  have h : DogFood 15 10 25 15 40 := by norm_num [DogFood]
  exact ⟨h, dog_bought _ _ _ _ _ h, dog_already_had _ _ _ _ _ h⟩

theorem leaves_initial (a b c d e f : Nat) (h : TeaLeaves a b c d e f) : c = 54 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc

theorem leaves_fallen (a b c d e f : Nat) (h : TeaLeaves a b c d e f) : e = 18 := by
  have hc := leaves_initial a b c d e f h
  rcases h with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  omega

theorem leaves_remaining (a b c d e f : Nat) (h : TeaLeaves a b c d e f) : f = 36 := by
  have hc := leaves_initial a b c d e f h
  have he := leaves_fallen a b c d e f h
  rcases h with ⟨ha, hb, hx, hd, hy, hf⟩
  norm_num [hc, he] at hf
  omega

theorem leaves_solution :
    TeaLeaves 18 3 54 3 18 36 ∧ 54 = 54 ∧ 18 = 18 ∧ 36 = 36 := by
  have h : TeaLeaves 18 3 54 3 18 36 := by norm_num [TeaLeaves]
  exact ⟨h, leaves_initial _ _ _ _ _ _ h, leaves_fallen _ _ _ _ _ _ h,
    leaves_remaining _ _ _ _ _ _ h⟩

theorem gifts_thirteenth (a b c d : Nat) (h : BirthdayGifts a b c d) : c = 12 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  omega

theorem gifts_total (a b c d : Nat) (h : BirthdayGifts a b c d) : d = 32 := by
  have hc := gifts_thirteenth a b c d h
  rcases h with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem gifts_solution : BirthdayGifts 20 8 12 32 ∧ 12 = 12 ∧ 32 = 32 := by
  have h : BirthdayGifts 20 8 12 32 := by norm_num [BirthdayGifts]
  exact ⟨h, gifts_thirteenth _ _ _ _ h, gifts_total _ _ _ _ h⟩

theorem renovation_bedrooms (a b c d e f g h : Nat)
    (x : Renovation a b c d e f g h) : c = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc

theorem renovation_kitchen (a b c d e f g h : Nat)
    (x : Renovation a b c d e f g h) : e = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hb] at hd
  norm_num [hb, hd] at he
  omega

theorem renovation_before_living (a b c d e f g h : Nat)
    (x : Renovation a b c d e f g h) : f = 18 := by
  have hc := renovation_bedrooms a b c d e f g h x
  have he := renovation_kitchen a b c d e f g h x
  rcases x with ⟨ha, hb, hx, hd, hy, hf, hg, hh⟩
  norm_num [hc, he] at hf
  exact hf

theorem renovation_living (a b c d e f g h : Nat)
    (x : Renovation a b c d e f g h) : g = 36 := by
  have hf := renovation_before_living a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh⟩
  norm_num [hf] at hg
  exact hg

theorem renovation_total (a b c d e f g h : Nat)
    (x : Renovation a b c d e f g h) : h = 54 := by
  have hf := renovation_before_living a b c d e f g h x
  have hg := renovation_living a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hy, hh⟩
  norm_num [hf, hg] at hh
  exact hh

theorem renovation_solution :
    Renovation 3 4 12 2 6 18 36 54 ∧
    12 = 12 ∧ 6 = 6 ∧ 18 = 18 ∧ 36 = 36 ∧ 54 = 54 := by
  have x : Renovation 3 4 12 2 6 18 36 54 := by norm_num [Renovation]
  exact ⟨x, renovation_bedrooms _ _ _ _ _ _ _ _ x,
    renovation_kitchen _ _ _ _ _ _ _ _ x,
    renovation_before_living _ _ _ _ _ _ _ _ x,
    renovation_living _ _ _ _ _ _ _ _ x,
    renovation_total _ _ _ _ _ _ _ _ x⟩

theorem profit_second (a b c d e f g h : Nat)
    (x : DistributionProfit a b c d e f g h) : c = 30000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  exact hc

theorem profit_daily_packages (a b c d e f g h : Nat)
    (x : DistributionProfit a b c d e f g h) : d = 40000 := by
  have hc := profit_second a b c d e f g h x
  rcases x with ⟨ha, hb, hx, hd, he, hf, hg, hh⟩
  norm_num [ha, hc] at hd
  exact hd

theorem profit_daily_cents (a b c d e f g h : Nat)
    (x : DistributionProfit a b c d e f g h) : f = 200000 := by
  have hd := profit_daily_packages a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg, hh⟩
  norm_num [hd, he] at hf
  exact hf

theorem profit_weekly_cents (a b c d e f g h : Nat)
    (x : DistributionProfit a b c d e f g h) : h = 1400000 := by
  have hf := profit_daily_cents a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg, hh⟩
  norm_num [hf, hg] at hh
  exact hh

theorem profit_solution :
    DistributionProfit 10000 3 30000 40000 5 200000 7 1400000 ∧
    30000 = 30000 ∧ 40000 = 40000 ∧ 200000 = 200000 ∧ 1400000 = 1400000 := by
  have x : DistributionProfit 10000 3 30000 40000 5 200000 7 1400000 := by
    norm_num [DistributionProfit]
  exact ⟨x, profit_second _ _ _ _ _ _ _ _ x,
    profit_daily_packages _ _ _ _ _ _ _ _ x,
    profit_daily_cents _ _ _ _ _ _ _ _ x,
    profit_weekly_cents _ _ _ _ _ _ _ _ x⟩

#print axioms dog_solution
#print axioms leaves_solution
#print axioms gifts_solution
#print axioms renovation_solution
#print axioms profit_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A05.dog_solution to "work/gsm8k-sprint05-dog-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A05.leaves_solution to "work/gsm8k-sprint05-leaves-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A05.gifts_solution to "work/gsm8k-sprint05-gifts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A05.renovation_solution to "work/gsm8k-sprint05-renovation-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A05.profit_solution to "work/gsm8k-sprint05-profit-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A05
