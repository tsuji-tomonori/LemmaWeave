import LemmaWeave.Problems.GSM8K.Daily0914BModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0914B
open LemmaWeave.Problems.GSM8K.Daily0914B

theorem oranges_before_half (a b c d : ℕ) (x : OrangeBoxes a b c d) : b = 8 ∧ c = 4 := by
  rcases x with ⟨hd, ha, hc, hb⟩
  omega
theorem oranges_bought (a b c d : ℕ) (x : OrangeBoxes a b c d) : a = 9 := by
  have hbc := oranges_before_half a b c d x
  rcases x with ⟨hd, ha, hc, hb⟩
  rw [hbc.1] at ha
  omega
theorem oranges_solution : OrangeBoxes 9 8 4 4 ∧
    (∀ a b c d, OrangeBoxes a b c d → b = 8 ∧ c = 4) ∧
    (∀ a b c d, OrangeBoxes a b c d → a = 9) :=
  ⟨by norm_num [OrangeBoxes], oranges_before_half, oranges_bought⟩

theorem grid_total (a b c d e f g h i j k : ℕ) (x : ColoredGrid a b c d e f g h i j k) : c = 150 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  exact hc
theorem grid_colored (a b c d e f g h i j k : ℕ) (x : ColoredGrid a b c d e f g h i j k) : f = 24 ∧ i = 4 ∧ j = 60 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  constructor
  · norm_num [hd, he] at hf
    exact hf
  constructor
  · norm_num [hg, hh] at hi
    exact hi
  · norm_num [hg, hh, hb] at hj
    exact hj
theorem grid_green (a b c d e f g h i j k : ℕ) (x : ColoredGrid a b c d e f g h i j k) : k = 66 := by
  have hc0 := grid_total a b c d e f g h i j k x
  have hfj := grid_colored a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  rw [hc0, hfj.1, hfj.2.2] at hk
  omega
theorem grid_solution : ColoredGrid 10 15 150 4 6 24 2 2 4 60 66 ∧
    (∀ a b c d e f g h i j k, ColoredGrid a b c d e f g h i j k → c = 150) ∧
    (∀ a b c d e f g h i j k, ColoredGrid a b c d e f g h i j k → f = 24 ∧ i = 4 ∧ j = 60) ∧
    (∀ a b c d e f g h i j k, ColoredGrid a b c d e f g h i j k → k = 66) :=
  ⟨by norm_num [ColoredGrid], grid_total, grid_colored, grid_green⟩

theorem quiz_correct (a b c d e f g h i j k : ℕ) (x : QuizScore a b c d e f g h i j k) : c = 25 ∧ e = 24 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [ha, hb] at hc
  omega
theorem quiz_base_and_bonus (a b c d e f g h i j k : ℕ) (x : QuizScore a b c d e f g h i j k) : g = 48 ∧ h = 4 ∧ j = 16 := by
  have hce := quiz_correct a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  constructor
  · norm_num [hce.2, hf] at hg
    exact hg
  constructor
  · omega
  · have hh0 : h = 4 := by omega
    norm_num [hh0, hi] at hj
    exact hj
theorem quiz_total (a b c d e f g h i j k : ℕ) (x : QuizScore a b c d e f g h i j k) : k = 64 := by
  have hgb := quiz_base_and_bonus a b c d e f g h i j k x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj, hk⟩
  norm_num [hgb.1, hgb.2.2] at hk
  exact hk
theorem quiz_solution : QuizScore 5 5 25 1 24 2 48 4 4 16 64 ∧
    (∀ a b c d e f g h i j k, QuizScore a b c d e f g h i j k → c = 25 ∧ e = 24) ∧
    (∀ a b c d e f g h i j k, QuizScore a b c d e f g h i j k → g = 48 ∧ h = 4 ∧ j = 16) ∧
    (∀ a b c d e f g h i j k, QuizScore a b c d e f g h i j k → k = 64) :=
  ⟨by norm_num [QuizScore], quiz_correct, quiz_base_and_bonus, quiz_total⟩

theorem fish_angelfish (a b c d : ℕ) (x : AquariumFish a b c d) : b = 12 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha] at hb
  exact hb
theorem fish_guppies (a b c d : ℕ) (x : AquariumFish a b c d) : c = 24 := by
  have hb0 := fish_angelfish a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [hb0] at hc
  exact hc
theorem fish_total (a b c d : ℕ) (x : AquariumFish a b c d) : d = 44 := by
  have hb0 := fish_angelfish a b c d x
  have hc0 := fish_guppies a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  norm_num [ha, hb0, hc0] at hd
  exact hd
theorem fish_solution : AquariumFish 8 12 24 44 ∧
    (∀ a b c d, AquariumFish a b c d → b = 12) ∧
    (∀ a b c d, AquariumFish a b c d → c = 24) ∧
    (∀ a b c d, AquariumFish a b c d → d = 44) :=
  ⟨by norm_num [AquariumFish], fish_angelfish, fish_guppies, fish_total⟩

theorem jar_recovered (a b c d e f g : ℕ) (x : ReturnedMarbles a b c d e f g) : b = 6 ∧ c = 6 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem jar_original_return (a b c d e f g : ℕ) (x : ReturnedMarbles a b c d e f g) : f = 16 := by
  have hbc := jar_recovered a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hbc.2, hd] at hf
  exact hf
theorem jar_total (a b c d e f g : ℕ) (x : ReturnedMarbles a b c d e f g) : g = 41 := by
  have hf0 := jar_original_return a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  norm_num [hf0, he] at hg
  exact hg
theorem jar_solution : ReturnedMarbles 12 6 6 10 25 16 41 ∧
    (∀ a b c d e f g, ReturnedMarbles a b c d e f g → b = 6 ∧ c = 6) ∧
    (∀ a b c d e f g, ReturnedMarbles a b c d e f g → f = 16) ∧
    (∀ a b c d e f g, ReturnedMarbles a b c d e f g → g = 41) :=
  ⟨by norm_num [ReturnedMarbles], jar_recovered, jar_original_return, jar_total⟩

theorem reading_periods (a b c d e f g h i j : ℕ) (x : ReadingPages a b c d e f g h i j) : c = 4 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [ha, hb] at hc
  omega
theorem reading_individual (a b c d e f g h i j : ℕ) (x : ReadingPages a b c d e f g h i j) : g = 120 ∧ h = 108 ∧ i = 100 := by
  have hc0 := reading_periods a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  constructor
  · norm_num [hc0, hd] at hg
    exact hg
  constructor
  · norm_num [hc0, he] at hh
    exact hh
  · norm_num [hc0, hf] at hi
    exact hi
theorem reading_total (a b c d e f g h i j : ℕ) (x : ReadingPages a b c d e f g h i j) : j = 328 := by
  have hghi := reading_individual a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hghi.1, hghi.2.1, hghi.2.2] at hj
  exact hj
theorem reading_solution : ReadingPages 240 60 4 30 27 25 120 108 100 328 ∧
    (∀ a b c d e f g h i j, ReadingPages a b c d e f g h i j → c = 4) ∧
    (∀ a b c d e f g h i j, ReadingPages a b c d e f g h i j → g = 120 ∧ h = 108 ∧ i = 100) ∧
    (∀ a b c d e f g h i j, ReadingPages a b c d e f g h i j → j = 328) :=
  ⟨by norm_num [ReadingPages], reading_periods, reading_individual, reading_total⟩

theorem peanut_ratio_total (a b c d e f : ℕ) (x : PeanutButter a b c d e f) : c = 10 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc
theorem peanut_scale (a b c d e f : ℕ) (x : PeanutButter a b c d e f) : e = 2 := by
  have hc0 := peanut_ratio_total a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hd, hc0] at he
  omega
theorem peanut_oil (a b c d e f : ℕ) (x : PeanutButter a b c d e f) : f = 4 := by
  have he0 := peanut_scale a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [he0, ha] at hf
  exact hf
theorem peanut_solution : PeanutButter 2 8 10 20 2 4 ∧
    (∀ a b c d e f, PeanutButter a b c d e f → c = 10) ∧
    (∀ a b c d e f, PeanutButter a b c d e f → e = 2) ∧
    (∀ a b c d e f, PeanutButter a b c d e f → f = 4) :=
  ⟨by norm_num [PeanutButter], peanut_ratio_total, peanut_scale, peanut_oil⟩

theorem ship_east (a b c d e f : ℕ) (x : ShipStorm a b c d e f) : c = 600 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb] at hc
  exact hc
theorem ship_total_distance (a b c d e f : ℕ) (x : ShipStorm a b c d e f) : d = 1200 := by
  have hc0 := ship_east a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [hc0] at hd
  exact hd
theorem ship_post_storm (a b c d e f : ℕ) (x : ShipStorm a b c d e f) : e = 400 := by
  have hd0 := ship_total_distance a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  omega
theorem ship_west (a b c d e f : ℕ) (x : ShipStorm a b c d e f) : f = 200 := by
  have hc0 := ship_east a b c d e f x
  have he0 := ship_post_storm a b c d e f x
  rcases x with ⟨ha, hb, hc, hd, he, hf⟩
  rw [hc0, he0] at hf
  omega
theorem ship_solution : ShipStorm 20 30 600 1200 400 200 ∧
    (∀ a b c d e f, ShipStorm a b c d e f → c = 600) ∧
    (∀ a b c d e f, ShipStorm a b c d e f → d = 1200) ∧
    (∀ a b c d e f, ShipStorm a b c d e f → e = 400) ∧
    (∀ a b c d e f, ShipStorm a b c d e f → f = 200) :=
  ⟨by norm_num [ShipStorm], ship_east, ship_total_distance, ship_post_storm, ship_west⟩

theorem briefcase_case_weights (a b c d e f g : ℕ) (x : BriefcaseWeights a b c d e f g) : b = 4 ∧ c = 16 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  omega
theorem briefcase_contents (a b c d e f g : ℕ) (x : BriefcaseWeights a b c d e f g) : d = 12 := by
  have hbc := briefcase_case_weights a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  rw [hbc.1, hbc.2] at hd
  omega
theorem briefcase_papers_laptop (a b c d e f g : ℕ) (x : BriefcaseWeights a b c d e f g) : e = 2 ∧ f = 10 := by
  have hd0 := briefcase_contents a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  have he0 : e = 2 := by omega
  exact ⟨he0, by omega⟩
theorem briefcase_difference (a b c d e f g : ℕ) (x : BriefcaseWeights a b c d e f g) : g = 2 := by
  have hef := briefcase_papers_laptop a b c d e f g x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg⟩
  rw [ha, hef.2] at hg
  omega
theorem briefcase_solution : BriefcaseWeights 8 4 16 12 2 10 2 ∧
    (∀ a b c d e f g, BriefcaseWeights a b c d e f g → b = 4 ∧ c = 16) ∧
    (∀ a b c d e f g, BriefcaseWeights a b c d e f g → d = 12) ∧
    (∀ a b c d e f g, BriefcaseWeights a b c d e f g → e = 2 ∧ f = 10) ∧
    (∀ a b c d e f g, BriefcaseWeights a b c d e f g → g = 2) :=
  ⟨by norm_num [BriefcaseWeights], briefcase_case_weights, briefcase_contents,
    briefcase_papers_laptop, briefcase_difference⟩

theorem fruit_apple_price (a b c d : ℕ) (x : FruitPrices a b c d) : c = 2 := by
  rcases x with ⟨ha, hb, hc, hd⟩
  omega
theorem fruit_banana_price (a b c d : ℕ) (x : FruitPrices a b c d) : d = 3 := by
  have hc0 := fruit_apple_price a b c d x
  rcases x with ⟨ha, hb, hc, hd⟩
  rw [hb, hc0] at hd
  omega
theorem fruit_solution : FruitPrices 7 5 2 3 ∧
    (∀ a b c d, FruitPrices a b c d → c = 2) ∧
    (∀ a b c d, FruitPrices a b c d → d = 3) :=
  ⟨by norm_num [FruitPrices], fruit_apple_price, fruit_banana_price⟩

end LemmaWeave.Tests.GSM8KDaily0914B

#print axioms LemmaWeave.Tests.GSM8KDaily0914B.oranges_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914B.grid_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914B.quiz_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914B.fish_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914B.jar_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914B.reading_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914B.peanut_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914B.ship_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914B.briefcase_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0914B.fruit_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.oranges_solution to "work/gsm8k-daily36-oranges-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.grid_solution to "work/gsm8k-daily36-grid-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.quiz_solution to "work/gsm8k-daily36-quiz-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.fish_solution to "work/gsm8k-daily36-fish-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.jar_solution to "work/gsm8k-daily36-jar-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.reading_solution to "work/gsm8k-daily36-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.peanut_solution to "work/gsm8k-daily36-peanut-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.ship_solution to "work/gsm8k-daily36-ship-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.briefcase_solution to "work/gsm8k-daily36-briefcase-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0914B.fruit_solution to "work/gsm8k-daily36-fruit-graph.json"
