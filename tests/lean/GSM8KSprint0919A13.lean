import LemmaWeave.Problems.GSM8K.Sprint0919A13Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A13
open LemmaWeave.Problems.GSM8K.Sprint0919A13

theorem cupcakes_buttercream (a b c d : Nat) (x : Cupcakes a b c d) : c = 8 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem cupcakes_total (a b c d : Nat) (x : Cupcakes a b c d) : d = 12 := by
  have hc := cupcakes_buttercream a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem cupcakes_solution : Cupcakes 4 2 8 12 ∧ 8 = 8 ∧ 12 = 12 := by
  have x : Cupcakes 4 2 8 12 := by norm_num [Cupcakes]
  exact ⟨x, cupcakes_buttercream _ _ _ _ x, cupcakes_total _ _ _ _ x⟩

theorem cards_made (a b c d e : Nat) (x : ValentineCards a b c d e) : c = 240 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  norm_num [ha, hb] at hc
  exact hc

theorem cards_remaining (a b c d e : Nat) (x : ValentineCards a b c d e) : e = 760 := by
  have hc := cards_made a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  omega

theorem cards_solution : ValentineCards 30 8 240 1000 760 ∧ 240 = 240 ∧ 760 = 760 := by
  have x : ValentineCards 30 8 240 1000 760 := by norm_num [ValentineCards]
  exact ⟨x, cards_made _ _ _ _ _ x, cards_remaining _ _ _ _ _ x⟩

theorem race_harvey (a b c d : Nat) (x : Footrace a b c d) : c = 20 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb] at hc
  exact hc

theorem race_total (a b c d : Nat) (x : Footrace a b c d) : d = 32 := by
  have hc := race_harvey a b c d x
  rcases x with ⟨ha, hb, hx, hd⟩
  norm_num [ha, hc] at hd
  exact hd

theorem race_solution : Footrace 12 8 20 32 ∧ 20 = 20 ∧ 32 = 32 := by
  have x : Footrace 12 8 20 32 := by norm_num [Footrace]
  exact ⟨x, race_harvey _ _ _ _ x, race_total _ _ _ _ x⟩

theorem work_weekend_daily (a b c d e f g h : Nat) (x : WeeklyWork a b c d e f g h) : c = 1 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hb] at hc
  omega

theorem work_weekday_daily (a b c d e f g h : Nat) (x : WeeklyWork a b c d e f g h) : e = 12 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [ha, hd] at he
  exact he

theorem work_week_total (a b c d e f g h : Nat) (x : WeeklyWork a b c d e f g h) : h = 62 := by
  have hc := work_weekend_daily a b c d e f g h x
  have he := work_weekday_daily a b c d e f g h x
  rcases x with ⟨ha, hb, hx, hd, hy, hf, hg, hh⟩
  norm_num [hc, he, hf, hg] at hh
  exact hh

theorem work_week_solution : WeeklyWork 3 3 1 4 12 2 5 62 ∧ 1 = 1 ∧ 12 = 12 ∧ 62 = 62 := by
  have x : WeeklyWork 3 3 1 4 12 2 5 62 := by norm_num [WeeklyWork]
  exact ⟨x, work_weekend_daily _ _ _ _ _ _ _ _ x, work_weekday_daily _ _ _ _ _ _ _ _ x,
    work_week_total _ _ _ _ _ _ _ _ x⟩

theorem dates_count (a b c d e : Nat) (x : WorkDates a b c d e) : c = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he⟩
  omega

theorem dates_hours (a b c d e : Nat) (x : WorkDates a b c d e) : e = 40 := by
  have hc := dates_count a b c d e x
  rcases x with ⟨ha, hb, hx, hd, he⟩
  norm_num [hc, hd] at he
  exact he

theorem dates_solution : WorkDates 3 8 5 8 40 ∧ 5 = 5 ∧ 40 = 40 := by
  have x : WorkDates 3 8 5 8 40 := by norm_num [WorkDates]
  exact ⟨x, dates_count _ _ _ _ _ x, dates_hours _ _ _ _ _ x⟩

#print axioms cupcakes_solution
#print axioms cards_solution
#print axioms race_solution
#print axioms work_week_solution
#print axioms dates_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A13.cupcakes_solution to "work/gsm8k-sprint13-cupcakes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A13.cards_solution to "work/gsm8k-sprint13-cards-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A13.race_solution to "work/gsm8k-sprint13-race-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A13.work_week_solution to "work/gsm8k-sprint13-work-week-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A13.dates_solution to "work/gsm8k-sprint13-dates-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A13
