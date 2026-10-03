import LemmaWeave.Problems.GSM8K.Daily0914AModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0914A
open LemmaWeave.Problems.GSM8K.Daily0914A

theorem marbles_after_street (a b c d e : ℕ) (x : MarbleLoss a b c d e) : c = 40 ∧ d = 20 := by
  rcases x with ⟨he, hb, hc, hd, heq⟩
  omega
theorem marbles_start (a b c d e : ℕ) (x : MarbleLoss a b c d e) : a = 100 := by
  have hcd := marbles_after_street a b c d e x
  rcases x with ⟨he, hb, hc, hd, heq⟩
  omega
theorem marbles_losses (a b c d e : ℕ) (x : MarbleLoss a b c d e) : b = 60 ∧ d = 20 ∧ e = 20 := by
  have ha := marbles_start a b c d e x
  have hcd := marbles_after_street a b c d e x
  rcases x with ⟨he, hb, hc, hd, heq⟩
  omega
theorem marbles_solution : MarbleLoss 100 60 40 20 20 ∧
    (∀ a b c d e, MarbleLoss a b c d e → c = 40 ∧ d = 20) ∧
    (∀ a b c d e, MarbleLoss a b c d e → a = 100) ∧
    (∀ a b c d e, MarbleLoss a b c d e → b = 60 ∧ d = 20 ∧ e = 20) :=
  ⟨by norm_num [MarbleLoss], marbles_after_street, marbles_start, marbles_losses⟩

theorem taxes_tax (a b c d e : ℕ) (x : TaxedEarnings a b c d e) : b = 4 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem taxes_net (a b c d e : ℕ) (x : TaxedEarnings a b c d e) : c = 36 := by
  have hb0 := taxes_tax a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem taxes_total (a b c d e : ℕ) (x : TaxedEarnings a b c d e) : e = 1080 := by
  have hc0 := taxes_net a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  exact he
theorem taxes_solution : TaxedEarnings 40 4 36 30 1080 ∧
    (∀ a b c d e, TaxedEarnings a b c d e → b = 4) ∧
    (∀ a b c d e, TaxedEarnings a b c d e → c = 36) ∧
    (∀ a b c d e, TaxedEarnings a b c d e → e = 1080) :=
  ⟨by norm_num [TaxedEarnings], taxes_tax, taxes_net, taxes_total⟩

theorem paint_common (a b c d e f g h i j k l : ℕ) (x : RoomPaint a b c d e f g h i j k l) : d = 6 ∧ e = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [ha, hb] at hd
  norm_num [hc, hd] at he
  exact ⟨hd, he⟩
theorem paint_other_walls (a b c d e f g h i j k l : ℕ) (x : RoomPaint a b c d e f g h i j k l) : g = 10 ∧ i = 8 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  constructor
  · norm_num [hf, hb] at hg
    exact hg
  · norm_num [hh, hb] at hi
    exact hi
theorem paint_total_area (a b c d e f g h i j k l : ℕ) (x : RoomPaint a b c d e f g h i j k l) : j = 30 := by
  have hde := paint_common a b c d e f g h i j k l x
  have hgi := paint_other_walls a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hde.2, hgi.1, hgi.2] at hj
  exact hj
theorem paint_cans (a b c d e f g h i j k l : ℕ) (x : RoomPaint a b c d e f g h i j k l) : l = 15 := by
  have hj0 := paint_total_area a b c d e f g h i j k l x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk, hl⟩
  norm_num [hj0, hk] at hl
  omega
theorem paint_solution : RoomPaint 3 2 2 6 12 5 10 4 8 30 2 15 ∧
    (∀ a b c d e f g h i j k l, RoomPaint a b c d e f g h i j k l → d = 6 ∧ e = 12) ∧
    (∀ a b c d e f g h i j k l, RoomPaint a b c d e f g h i j k l → g = 10 ∧ i = 8) ∧
    (∀ a b c d e f g h i j k l, RoomPaint a b c d e f g h i j k l → j = 30) ∧
    (∀ a b c d e f g h i j k l, RoomPaint a b c d e f g h i j k l → l = 15) :=
  ⟨by norm_num [RoomPaint], paint_common, paint_other_walls, paint_total_area, paint_cans⟩

theorem songs_today (a b c : ℕ) (x : SongCount a b c) : b = 14 := by
  rcases x with ⟨ha, hb, hc⟩
  norm_num [ha] at hb
  exact hb
theorem songs_total (a b c : ℕ) (x : SongCount a b c) : c = 23 := by
  have hb0 := songs_today a b c x
  rcases x with ⟨ha, hb, hc⟩
  norm_num [ha, hb0] at hc
  exact hc
theorem songs_solution : SongCount 9 14 23 ∧
    (∀ a b c, SongCount a b c → b = 14) ∧
    (∀ a b c, SongCount a b c → c = 23) :=
  ⟨by norm_num [SongCount], songs_today, songs_total⟩

theorem breath_first_week (a b c d e : ℕ) (x : BreathPractice a b c d e) : b = 20 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha] at hb
  exact hb
theorem breath_second_week (a b c d e : ℕ) (x : BreathPractice a b c d e) : c = 40 := by
  have hb0 := breath_first_week a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb0] at hc
  exact hc
theorem breath_increase (a b c d e : ℕ) (x : BreathPractice a b c d e) : d = 20 := by
  have hc0 := breath_second_week a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem breath_current (a b c d e : ℕ) (x : BreathPractice a b c d e) : e = 60 := by
  have hc0 := breath_second_week a b c d e x
  have hd0 := breath_increase a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd0] at he
  exact he
theorem breath_solution : BreathPractice 10 20 40 20 60 ∧
    (∀ a b c d e, BreathPractice a b c d e → b = 20) ∧
    (∀ a b c d e, BreathPractice a b c d e → c = 40) ∧
    (∀ a b c d e, BreathPractice a b c d e → d = 20) ∧
    (∀ a b c d e, BreathPractice a b c d e → e = 60) :=
  ⟨by norm_num [BreathPractice], breath_first_week, breath_second_week,
    breath_increase, breath_current⟩

theorem animals_goats (a b c d : ℕ) (x : FarmAnimals a b c d) : a = 11 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem animals_cows (a b c d : ℕ) (x : FarmAnimals a b c d) : b = 15 := by
  have ha0 := animals_goats a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem animals_pigs (a b c d : ℕ) (x : FarmAnimals a b c d) : c = 30 := by
  have hb0 := animals_cows a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem animals_solution : FarmAnimals 11 15 30 56 ∧
    (∀ a b c d, FarmAnimals a b c d → a = 11) ∧
    (∀ a b c d, FarmAnimals a b c d → b = 15) ∧
    (∀ a b c d, FarmAnimals a b c d → c = 30) :=
  ⟨by norm_num [FarmAnimals], animals_goats, animals_cows, animals_pigs⟩

theorem paper_sold (a b c d e f : ℕ) (x : WrappingPaper a b c d e f) : e = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hb, hc, hd] at he
  exact he
theorem paper_remaining (a b c d e f : ℕ) (x : WrappingPaper a b c d e f) : f = 2 := by
  have he0 := paper_sold a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega
theorem paper_solution : WrappingPaper 12 3 4 3 10 2 ∧
    (∀ a b c d e f, WrappingPaper a b c d e f → e = 10) ∧
    (∀ a b c d e f, WrappingPaper a b c d e f → f = 2) :=
  ⟨by norm_num [WrappingPaper], paper_sold, paper_remaining⟩

theorem sandwiches_scheduled (a b c d e f g : ℕ) (x : SandwichYear a b c d e f g) : c = 72 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [ha, hb] at hc
  exact hc
theorem sandwiches_missed (a b c d e f g : ℕ) (x : SandwichYear a b c d e f g) : f = 3 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hd, he] at hf
  exact hf
theorem sandwiches_eaten (a b c d e f g : ℕ) (x : SandwichYear a b c d e f g) : g = 69 := by
  have hc0 := sandwiches_scheduled a b c d e f g x
  have hf0 := sandwiches_missed a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem sandwiches_solution : SandwichYear 36 2 72 1 2 3 69 ∧
    (∀ a b c d e f g, SandwichYear a b c d e f g → c = 72) ∧
    (∀ a b c d e f g, SandwichYear a b c d e f g → f = 3) ∧
    (∀ a b c d e f g, SandwichYear a b c d e f g → g = 69) :=
  ⟨by norm_num [SandwichYear], sandwiches_scheduled, sandwiches_missed, sandwiches_eaten⟩

theorem cards_total (a b c d e : ℕ) (x : BaseballPages a b c d e) : c = 420 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc
theorem cards_pages (a b c d e : ℕ) (x : BaseballPages a b c d e) : e = 42 := by
  have hc0 := cards_total a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hc0, hd] at he
  omega
theorem cards_solution : BaseballPages 60 7 420 10 42 ∧
    (∀ a b c d e, BaseballPages a b c d e → c = 420) ∧
    (∀ a b c d e, BaseballPages a b c d e → e = 42) :=
  ⟨by norm_num [BaseballPages], cards_total, cards_pages⟩

theorem refund_correct_total (a b c d e : ℕ) (x : FurnitureRefund a b c d e) : d = 20100 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [hb, hc] at hd
  exact hd
theorem refund_amount (a b c d e : ℕ) (x : FurnitureRefund a b c d e) : e = 600 := by
  have hd0 := refund_correct_total a b c d e x
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega
theorem refund_solution : FurnitureRefund 20700 150 134 20100 600 ∧
    (∀ a b c d e, FurnitureRefund a b c d e → d = 20100) ∧
    (∀ a b c d e, FurnitureRefund a b c d e → e = 600) :=
  ⟨by norm_num [FurnitureRefund], refund_correct_total, refund_amount⟩

end LemmaWeave.Tests.GSM8KDaily0914A

#print axioms LemmaWeave.Tests.GSM8KDaily0914A.marbles_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914A.taxes_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914A.paint_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914A.songs_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914A.breath_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914A.animals_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914A.paper_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914A.sandwiches_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914A.cards_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914A.refund_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.marbles_solution to "work/gsm8k-daily35-marbles-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.taxes_solution to "work/gsm8k-daily35-taxes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.paint_solution to "work/gsm8k-daily35-paint-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.songs_solution to "work/gsm8k-daily35-songs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.breath_solution to "work/gsm8k-daily35-breath-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.animals_solution to "work/gsm8k-daily35-animals-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.paper_solution to "work/gsm8k-daily35-paper-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.sandwiches_solution to "work/gsm8k-daily35-sandwiches-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.cards_solution to "work/gsm8k-daily35-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914A.refund_solution to "work/gsm8k-daily35-refund-graph.json"
