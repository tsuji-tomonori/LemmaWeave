import LemmaWeave.Problems.GSM8K.Sprint0919A25Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A25
open LemmaWeave.Problems.GSM8K.Sprint0919A25

theorem pennies_each (a b c d e : Nat) (x : PiggyPennies a b c d e) : d = 8 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; omega
theorem pennies_total (a b c d e : Nat) (x : PiggyPennies a b c d e) : e = 96 := by
  have hd := pennies_each a b c d e x; rcases x with ⟨ha,hb,hc,hx,he⟩; norm_num [ha,hd] at he; exact he
theorem pennies_solution : PiggyPennies 12 2 6 8 96 ∧ 8 = 8 ∧ 96 = 96 := by
  have x : PiggyPennies 12 2 6 8 96 := by norm_num [PiggyPennies]
  exact ⟨x, pennies_each _ _ _ _ _ x, pennies_total _ _ _ _ _ x⟩

theorem battery_spent (a b c d e : Nat) (x : BatteryBudget a b c d e) : c = 1400 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha,hb] at hc; exact hc
theorem battery_left (a b c d e : Nat) (x : BatteryBudget a b c d e) : e = 600 := by
  have hc := battery_spent a b c d e x; rcases x with ⟨ha,hb,hx,hd,he⟩; omega
theorem battery_solution : BatteryBudget 350 4 1400 2000 600 ∧ 1400 = 1400 ∧ 600 = 600 := by
  have x : BatteryBudget 350 4 1400 2000 600 := by norm_num [BatteryBudget]
  exact ⟨x, battery_spent _ _ _ _ _ x, battery_left _ _ _ _ _ x⟩

theorem books_flo (a b c d : Nat) (x : BooksWritten a b c d) : c = 15 := by
  rcases x with ⟨ha,hb,hc,hd⟩; norm_num [ha,hb] at hc; omega
theorem books_total (a b c d : Nat) (x : BooksWritten a b c d) : d = 75 := by
  have hc := books_flo a b c d x; rcases x with ⟨ha,hb,hx,hd⟩; omega
theorem books_solution : BooksWritten 60 4 15 75 ∧ 15 = 15 ∧ 75 = 75 := by
  have x : BooksWritten 60 4 15 75 := by norm_num [BooksWritten]
  exact ⟨x, books_flo _ _ _ _ x, books_total _ _ _ _ x⟩

theorem train_minutes (a b c d e f g : Nat) (x : TrainDeparture a b c d e f g) : d = 80 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg⟩; norm_num [hb,hc] at hd; exact hd
theorem train_travel (a b c d e f g : Nat) (x : TrainDeparture a b c d e f g) : e = 90 := by
  have hd := train_minutes a b c d e f g x; rcases x with ⟨ha,hb,hc,hx,he,hf,hg⟩; omega
theorem train_departure (a b c d e f g : Nat) (x : TrainDeparture a b c d e f g) : g = 450 := by
  have he := train_travel a b c d e f g x; rcases x with ⟨ha,hb,hc,hd,hx,hf,hg⟩; norm_num [he] at hf; omega
theorem train_solution : TrainDeparture 10 1 20 80 90 540 450 ∧ 80 = 80 ∧ 90 = 90 ∧ 450 = 450 := by
  have x : TrainDeparture 10 1 20 80 90 540 450 := by norm_num [TrainDeparture]
  exact ⟨x, train_minutes _ _ _ _ _ _ _ x, train_travel _ _ _ _ _ _ _ x,
    train_departure _ _ _ _ _ _ _ x⟩

theorem computer_first (a b c d e f g h i : Nat) (x : ComputerFaceValue a b c d e f g h i) : d = 893 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi⟩; norm_num [ha,hb] at hc; omega
theorem computer_second (a b c d e f g h i : Nat) (x : ComputerFaceValue a b c d e f g h i) : h = 874 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi⟩; norm_num [he,hf] at hg; omega
theorem computer_face_difference (a b c d e f g h i : Nat) (x : ComputerFaceValue a b c d e f g h i) : i = 19 := by
  have hd := computer_first a b c d e f g h i x; have hh := computer_second a b c d e f g h i x
  rcases x with ⟨ha,hb,hc,hx,he,hf,hg,hy,hi⟩; omega
theorem computer_currency_counterexample :
    ((893 : ℚ) - 874 * 1 = 19) ∧
    (874 * ((11 : ℚ) / 10) - 893 = 342 / 5) := by norm_num
theorem computer_solution :
    ComputerFaceValue 950 6 57 893 920 5 46 874 19 ∧
    893 = 893 ∧ 874 = 874 ∧ 19 = 19 ∧
    ((893 : ℚ) - 874 * 1 = 19) ∧
    (874 * ((11 : ℚ) / 10) - 893 = 342 / 5) := by
  have x : ComputerFaceValue 950 6 57 893 920 5 46 874 19 := by norm_num [ComputerFaceValue]
  exact ⟨x, computer_first _ _ _ _ _ _ _ _ _ x, computer_second _ _ _ _ _ _ _ _ _ x,
    computer_face_difference _ _ _ _ _ _ _ _ _ x, computer_currency_counterexample⟩

theorem granola_cost (a b c d e f g h i j k : Nat) (x : GranolaProfit a b c d e f g h i j k) : c = 60 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj,hk⟩; norm_num [ha,hb] at hc; exact hc
theorem granola_full_revenue (a b c d e f g h i j k : Nat) (x : GranolaProfit a b c d e f g h i j k) : f = 90 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj,hk⟩; norm_num [hd,he] at hf; exact hf
theorem granola_marked_revenue (a b c d e f g h i j k : Nat) (x : GranolaProfit a b c d e f g h i j k) : i = 20 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj,hk⟩; norm_num [hg,hh] at hi; exact hi
theorem granola_profit (a b c d e f g h i j k : Nat) (x : GranolaProfit a b c d e f g h i j k) : k = 50 := by
  have hc := granola_cost a b c d e f g h i j k x
  have hf := granola_full_revenue a b c d e f g h i j k x
  have hi := granola_marked_revenue a b c d e f g h i j k x
  rcases x with ⟨ha,hb,hx,hd,he,hy,hg,hh,hz,hj,hk⟩; omega
theorem granola_solution : GranolaProfit 3 20 60 15 6 90 5 4 20 110 50 ∧ 60 = 60 ∧ 90 = 90 ∧ 20 = 20 ∧ 50 = 50 := by
  have x : GranolaProfit 3 20 60 15 6 90 5 4 20 110 50 := by norm_num [GranolaProfit]
  exact ⟨x, granola_cost _ _ _ _ _ _ _ _ _ _ _ x, granola_full_revenue _ _ _ _ _ _ _ _ _ _ _ x,
    granola_marked_revenue _ _ _ _ _ _ _ _ _ _ _ x, granola_profit _ _ _ _ _ _ _ _ _ _ _ x⟩

theorem ants_beth (a b c d e f : Nat) (x : AntCount a b c d e f) : c = 6 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf⟩; norm_num [ha] at hb; omega
theorem ants_cece (a b c d e f : Nat) (x : AntCount a b c d e f) : d = 8 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf⟩; norm_num [ha] at hd; exact hd
theorem ants_duke (a b c d e f : Nat) (x : AntCount a b c d e f) : e = 2 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf⟩; omega
theorem ants_total (a b c d e f : Nat) (x : AntCount a b c d e f) : f = 20 := by
  have hc := ants_beth a b c d e f x; have hd := ants_cece a b c d e f x; have he := ants_duke a b c d e f x
  rcases x with ⟨ha,hb,hx,hy,hz,hf⟩; omega
theorem ants_solution : AntCount 4 2 6 8 2 20 ∧ 6 = 6 ∧ 8 = 8 ∧ 2 = 2 ∧ 20 = 20 := by
  have x : AntCount 4 2 6 8 2 20 := by norm_num [AntCount]
  exact ⟨x, ants_beth _ _ _ _ _ _ x, ants_cece _ _ _ _ _ _ x, ants_duke _ _ _ _ _ _ x,
    ants_total _ _ _ _ _ _ x⟩

theorem nuts_eaten (a b c d e : Nat) (x : NutsLeft a b c d e) : d = 25 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha,hb,hc] at hd; omega
theorem nuts_left (a b c d e : Nat) (x : NutsLeft a b c d e) : e = 5 := by
  have hd := nuts_eaten a b c d e x; rcases x with ⟨ha,hb,hc,hx,he⟩; omega
theorem nuts_solution : NutsLeft 30 5 6 25 5 ∧ 25 = 25 ∧ 5 = 5 := by
  have x : NutsLeft 30 5 6 25 5 := by norm_num [NutsLeft]
  exact ⟨x, nuts_eaten _ _ _ _ _ x, nuts_left _ _ _ _ _ x⟩

theorem family_flora (a b c d e : Nat) (x : FamilyBooks a b c d e) : c = 100 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha,hb] at hc; exact hc
theorem family_gary (a b c d e : Nat) (x : FamilyBooks a b c d e) : d = 25 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha] at hd; omega
theorem family_total (a b c d e : Nat) (x : FamilyBooks a b c d e) : e = 175 := by
  have hc := family_flora a b c d e x; have hd := family_gary a b c d e x
  rcases x with ⟨ha,hb,hx,hy,he⟩; omega
theorem family_solution : FamilyBooks 50 2 100 25 175 ∧ 100 = 100 ∧ 25 = 25 ∧ 175 = 175 := by
  have x : FamilyBooks 50 2 100 25 175 := by norm_num [FamilyBooks]
  exact ⟨x, family_flora _ _ _ _ _ x, family_gary _ _ _ _ _ x, family_total _ _ _ _ _ x⟩

theorem flower_length (a b c d : Nat) (x : Flowerbed a b c d) : c = 7 := by
  rcases x with ⟨ha,hb,hc,hd⟩; norm_num [ha] at hb; omega
theorem flower_perimeter (a b c d : Nat) (x : Flowerbed a b c d) : d = 22 := by
  have hc := flower_length a b c d x; rcases x with ⟨ha,hb,hx,hd⟩; norm_num [ha,hc] at hd; exact hd
theorem flower_solution : Flowerbed 4 8 7 22 ∧ 7 = 7 ∧ 22 = 22 := by
  have x : Flowerbed 4 8 7 22 := by norm_num [Flowerbed]
  exact ⟨x, flower_length _ _ _ _ x, flower_perimeter _ _ _ _ x⟩

theorem fish_dog (a b c d e : Nat) (x : FishLifeHalfYears a b c d e) : c = 20 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha,hb] at hc; exact hc
theorem fish_total (a b c d e : Nat) (x : FishLifeHalfYears a b c d e) : e = 24 := by
  have hc := fish_dog a b c d e x; rcases x with ⟨ha,hb,hx,hd,he⟩; omega
theorem fish_solution : FishLifeHalfYears 5 4 20 4 24 ∧ 20 = 20 ∧ 24 = 24 := by
  have x : FishLifeHalfYears 5 4 20 4 24 := by norm_num [FishLifeHalfYears]
  exact ⟨x, fish_dog _ _ _ _ _ x, fish_total _ _ _ _ _ x⟩

theorem apples_school (a b c d e f g h i : Nat) (x : ApplesLeft a b c d e f g h i) : d = 6 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi⟩; norm_num [hb,hc] at hd; exact hd
theorem apples_pies (a b c d e f g h i : Nat) (x : ApplesLeft a b c d e f g h i) : g = 20 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi⟩; norm_num [he,hf] at hg; exact hg
theorem apples_left (a b c d e f g h i : Nat) (x : ApplesLeft a b c d e f g h i) : i = 24 := by
  have hd := apples_school a b c d e f g h i x; have hg := apples_pies a b c d e f g h i x
  rcases x with ⟨ha,hb,hc,hx,he,hf,hy,hh,hi⟩; omega
theorem apples_solution : ApplesLeft 50 2 3 6 2 10 20 26 24 ∧ 6 = 6 ∧ 20 = 20 ∧ 24 = 24 := by
  have x : ApplesLeft 50 2 3 6 2 10 20 26 24 := by norm_num [ApplesLeft]
  exact ⟨x, apples_school _ _ _ _ _ _ _ _ _ x, apples_pies _ _ _ _ _ _ _ _ _ x,
    apples_left _ _ _ _ _ _ _ _ _ x⟩

theorem jackson_reference (a b c d : Nat) (x : JacksonMultiplier a b c d) : c = 125 := by
  rcases x with ⟨hb,hc,hd,he⟩; norm_num [hb] at hc; omega
theorem jackson_literal :
    ((150 : ℚ) / 7 + 6 * ((150 : ℚ) / 7) = 150) ∧
    (6 * ((150 : ℚ) / 7) = 900 / 7) := by norm_num
theorem jackson_solution :
    JacksonMultiplier 25 5 125 150 ∧ 125 = 125 ∧
    ((150 : ℚ) / 7 + 6 * ((150 : ℚ) / 7) = 150) ∧
    (6 * ((150 : ℚ) / 7) = 900 / 7) := by
  have x : JacksonMultiplier 25 5 125 150 := by norm_num [JacksonMultiplier]
  exact ⟨x, jackson_reference _ _ _ _ x, jackson_literal⟩

theorem dogs_total (a b c : Nat) (x : DogPark a b c) : b = 30 := by
  rcases x with ⟨ha,hb,hc⟩; norm_num [ha] at hb; exact hb
theorem dogs_pointy (a b c : Nat) (x : DogPark a b c) : c = 6 := by
  have hb := dogs_total a b c x; rcases x with ⟨ha,hx,hc⟩; norm_num [hb] at hc; omega
theorem dogs_solution : DogPark 15 30 6 ∧ 30 = 30 ∧ 6 = 6 := by
  have x : DogPark 15 30 6 := by norm_num [DogPark]
  exact ⟨x, dogs_total _ _ _ x, dogs_pointy _ _ _ x⟩

theorem box_volume (a b c d e f g h i j k l : Nat) (x : BoxPacking a b c d e f g h i j k l) : k = 960 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj,hk,hl,hm⟩; norm_num [ha,hb,hc] at hk; exact hk
theorem block_volume (a b c d e f g h i j k l : Nat) (x : BoxPacking a b c d e f g h i j k l) : l = 24 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj,hk,hl,hm⟩; norm_num [hd,he,hf] at hl; exact hl
theorem box_orientation (a b c d e f g h i j k l : Nat) (x : BoxPacking a b c d e f g h i j k l) : g = 2 ∧ h = 5 ∧ i = 4 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj,hk,hl,hm⟩
  norm_num [ha,hf] at hg; norm_num [hb,he] at hh; norm_num [hc,hd] at hi; omega
theorem box_count (a b c d e f g h i j k l : Nat) (x : BoxPacking a b c d e f g h i j k l) : j = 40 := by
  have hghi := box_orientation a b c d e f g h i j k l x
  rcases hghi with ⟨hg,hh,hi⟩; rcases x with ⟨ha,hb,hc,hd,he,hf,hx,hy,hz,hj,hk,hl,hm⟩
  norm_num [hg,hh,hi] at hj; exact hj
theorem box_solution : BoxPacking 8 10 12 3 2 4 2 5 4 40 960 24 ∧ 960 = 960 ∧ 24 = 24 ∧ (2 = 2 ∧ 5 = 5 ∧ 4 = 4) ∧ 40 = 40 := by
  have x : BoxPacking 8 10 12 3 2 4 2 5 4 40 960 24 := by norm_num [BoxPacking]
  exact ⟨x, box_volume _ _ _ _ _ _ _ _ _ _ _ _ x, block_volume _ _ _ _ _ _ _ _ _ _ _ _ x,
    box_orientation _ _ _ _ _ _ _ _ _ _ _ _ x, box_count _ _ _ _ _ _ _ _ _ _ _ _ x⟩

#print axioms pennies_solution
#print axioms battery_solution
#print axioms books_solution
#print axioms train_solution
#print axioms computer_solution
#print axioms granola_solution
#print axioms ants_solution
#print axioms nuts_solution
#print axioms family_solution
#print axioms flower_solution
#print axioms fish_solution
#print axioms apples_solution
#print axioms jackson_solution
#print axioms dogs_solution
#print axioms box_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.pennies_solution to "work/gsm8k-sprint25-pennies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.battery_solution to "work/gsm8k-sprint25-battery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.books_solution to "work/gsm8k-sprint25-books-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.train_solution to "work/gsm8k-sprint25-train-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.computer_solution to "work/gsm8k-sprint25-computer-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.granola_solution to "work/gsm8k-sprint25-granola-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.ants_solution to "work/gsm8k-sprint25-ants-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.nuts_solution to "work/gsm8k-sprint25-nuts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.family_solution to "work/gsm8k-sprint25-family-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.flower_solution to "work/gsm8k-sprint25-flower-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.fish_solution to "work/gsm8k-sprint25-fish-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.apples_solution to "work/gsm8k-sprint25-apples-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.jackson_solution to "work/gsm8k-sprint25-jackson-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.dogs_solution to "work/gsm8k-sprint25-dogs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A25.box_solution to "work/gsm8k-sprint25-box-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A25
