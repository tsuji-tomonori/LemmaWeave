import LemmaWeave.Problems.GSM8K.Sprint0919A22Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A22
open LemmaWeave.Problems.GSM8K.Sprint0919A22

theorem teacher_daily (a b c d e f g : Nat) (x : TeacherEarnings a b c d e f g) : e = 25 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hc] at he
  exact he

theorem teacher_monthly (a b c d e f g : Nat) (x : TeacherEarnings a b c d e f g) : f = 600 := by
  have he := teacher_daily a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, hx, hf, hg⟩
  norm_num [hb, he] at hf
  exact hf

theorem teacher_total (a b c d e f g : Nat) (x : TeacherEarnings a b c d e f g) : g = 3600 := by
  have hf := teacher_monthly a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hx, hg⟩
  norm_num [hd, hf] at hg
  exact hg

theorem teacher_solution :
    TeacherEarnings 5 24 5 6 25 600 3600 ∧ 25 = 25 ∧ 600 = 600 ∧ 3600 = 3600 := by
  have x : TeacherEarnings 5 24 5 6 25 600 3600 := by norm_num [TeacherEarnings]
  exact ⟨x, teacher_daily _ _ _ _ _ _ _ x, teacher_monthly _ _ _ _ _ _ _ x,
    teacher_total _ _ _ _ _ _ _ x⟩

theorem candles_blue (a b c d : Nat) (x : CandleRatio a b c d) : d = 27 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb, hc] at hd
  omega

theorem candles_solution : CandleRatio 5 3 45 27 ∧ 27 = 27 := by
  have x : CandleRatio 5 3 45 27 := by norm_num [CandleRatio]
  exact ⟨x, candles_blue _ _ _ _ x⟩

theorem shopping_mary (a b c d e f g h i : Nat) (x : GiftShopping a b c d e f g h i) :
    d = 200 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb, hc] at hd
  exact hd

theorem shopping_card_cost (a b c d e f g h i : Nat) (x : GiftShopping a b c d e f g h i) :
    h = 50 := by
  have hd := shopping_mary a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hx, he, hf, hg, hh, hi⟩
  norm_num [hd, he] at hi
  omega

theorem shopping_deck_price (a b c d e f g h i : Nat) (x : GiftShopping a b c d e f g h i) :
    g = 25 := by
  have hh := shopping_card_cost a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hx, hi⟩
  norm_num [hf, hh] at hg
  omega

theorem shopping_solution :
    GiftShopping 2 50 100 200 150 2 25 50 200 ∧
    200 = 200 ∧ 50 = 50 ∧ 25 = 25 := by
  have x : GiftShopping 2 50 100 200 150 2 25 50 200 := by norm_num [GiftShopping]
  exact ⟨x, shopping_mary _ _ _ _ _ _ _ _ _ x,
    shopping_card_cost _ _ _ _ _ _ _ _ _ x,
    shopping_deck_price _ _ _ _ _ _ _ _ _ x⟩

theorem seeds_gwi (a b c d e f : Nat) (x : WatermelonSeeds a b c d e f) : c = 340 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc

theorem seeds_yeon (a b c d e f : Nat) (x : WatermelonSeeds a b c d e f) : e = 1020 := by
  have hc := seeds_gwi a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, he, hf⟩
  norm_num [hc, hd] at he
  exact he

theorem seeds_total (a b c d e f : Nat) (x : WatermelonSeeds a b c d e f) : f = 1660 := by
  have hc := seeds_gwi a b c d e f x
  have he := seeds_yeon a b c d e f x
  rcases x with ⟨ha, hb, hx, hd, hy, hf⟩
  norm_num [ha, hc, he] at hf
  exact hf

theorem seeds_solution :
    WatermelonSeeds 300 40 340 3 1020 1660 ∧ 340 = 340 ∧ 1020 = 1020 ∧ 1660 = 1660 := by
  have x : WatermelonSeeds 300 40 340 3 1020 1660 := by norm_num [WatermelonSeeds]
  exact ⟨x, seeds_gwi _ _ _ _ _ _ x, seeds_yeon _ _ _ _ _ _ x,
    seeds_total _ _ _ _ _ _ x⟩

theorem shoes_alexa (a b c d : Nat) (x : ShoeSizes a b c d) : c = 14 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem shoes_total (a b c d : Nat) (x : ShoeSizes a b c d) : d = 21 := by
  have hc := shoes_alexa a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem shoes_solution : ShoeSizes 7 2 14 21 ∧ 14 = 14 ∧ 21 = 21 := by
  have x : ShoeSizes 7 2 14 21 := by norm_num [ShoeSizes]
  exact ⟨x, shoes_alexa _ _ _ _ x, shoes_total _ _ _ _ x⟩

#print axioms teacher_solution
#print axioms candles_solution
#print axioms shopping_solution
#print axioms seeds_solution
#print axioms shoes_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A22.teacher_solution to "work/gsm8k-sprint22-teacher-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A22.candles_solution to "work/gsm8k-sprint22-candles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A22.shopping_solution to "work/gsm8k-sprint22-shopping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A22.seeds_solution to "work/gsm8k-sprint22-seeds-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A22.shoes_solution to "work/gsm8k-sprint22-shoes-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A22
