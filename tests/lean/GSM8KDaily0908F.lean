import LemmaWeave.Problems.GSM8K.Daily0908FModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0908F
open LemmaWeave.Problems.GSM8K.Daily0908F

theorem boat_per_day (a b d p t : ℕ) (x : BoatTransport a b d p t) : p = 48 := by
  rcases x with ⟨ha, hb, hd, hp, ht⟩
  simp [ha, hb] at hp
  exact hp
theorem boat_total (a b d p t : ℕ) (x : BoatTransport a b d p t) : t = 96 := by
  have hp := boat_per_day a b d p t x
  rcases x with ⟨ha, hb, hd, hper, ht⟩
  simp [hd, hp] at ht
  exact ht
theorem boat_exists : BoatTransport 4 12 2 48 96 := by
  norm_num [BoatTransport]
theorem boat_solution : BoatTransport 4 12 2 48 96 ∧
    (∀ a b d p t, BoatTransport a b d p t → p = 48) ∧
    (∀ a b d p t, BoatTransport a b d p t → t = 96) :=
  ⟨boat_exists, boat_per_day, boat_total⟩

theorem goats_paddington (w p t : ℕ) (x : GoatTotal w p t) : p = 180 := by
  rcases x with ⟨hw, hp, ht⟩
  omega
theorem goats_total (w p t : ℕ) (x : GoatTotal w p t) : t = 320 := by
  have hp := goats_paddington w p t x
  rcases x with ⟨hw, hpad, ht⟩
  omega
theorem goats_exists : GoatTotal 140 180 320 := by norm_num [GoatTotal]
theorem goats_solution : GoatTotal 140 180 320 ∧
    (∀ w p t, GoatTotal w p t → p = 180) ∧
    (∀ w p t, GoatTotal w p t → t = 320) :=
  ⟨goats_exists, goats_paddington, goats_total⟩

theorem uncommon_per_pack (p t : ℕ) (x : UncommonCards p t) : p = 5 := by
  norm_num [UncommonCards] at x
  exact x.1
theorem uncommon_total (p t : ℕ) (x : UncommonCards p t) : t = 50 := by
  have hp := uncommon_per_pack p t x
  have ht := x.2
  omega
theorem uncommon_exists : UncommonCards 5 50 := by norm_num [UncommonCards]
theorem uncommon_solution : UncommonCards 5 50 ∧
    (∀ p t, UncommonCards p t → p = 5) ∧
    (∀ p t, UncommonCards p t → t = 50) :=
  ⟨uncommon_exists, uncommon_per_pack, uncommon_total⟩

theorem traffic_monday (m w tf e t : ℕ) (x : StreetTraffic m w tf e t) : m = 20 := by
  norm_num [StreetTraffic] at x
  exact x.1
theorem traffic_wednesday (m w tf e t : ℕ) (x : StreetTraffic m w tf e t) : w = 22 := by
  have hm := traffic_monday m w tf e t x
  have hw := x.2.1
  omega
theorem traffic_weekdays (m w tf e t : ℕ) (x : StreetTraffic m w tf e t) : tf = 20 := by
  norm_num [StreetTraffic] at x
  exact x.2.2.1
theorem traffic_weekend (m w tf e t : ℕ) (x : StreetTraffic m w tf e t) : e = 10 := by
  norm_num [StreetTraffic] at x
  exact x.2.2.2.1
theorem traffic_total (m w tf e t : ℕ) (x : StreetTraffic m w tf e t) : t = 97 := by
  have hm := traffic_monday m w tf e t x
  have hw := traffic_wednesday m w tf e t x
  have htf := traffic_weekdays m w tf e t x
  have he := traffic_weekend m w tf e t x
  have ht := x.2.2.2.2
  omega
theorem traffic_exists : StreetTraffic 20 22 20 10 97 := by norm_num [StreetTraffic]
theorem traffic_solution : StreetTraffic 20 22 20 10 97 ∧
    (∀ m w tf e t, StreetTraffic m w tf e t → m = 20) ∧
    (∀ m w tf e t, StreetTraffic m w tf e t → w = 22) ∧
    (∀ m w tf e t, StreetTraffic m w tf e t → tf = 20) ∧
    (∀ m w tf e t, StreetTraffic m w tf e t → e = 10) ∧
    (∀ m w tf e t, StreetTraffic m w tf e t → t = 97) :=
  ⟨traffic_exists, traffic_monday, traffic_wednesday,
    traffic_weekdays, traffic_weekend, traffic_total⟩

theorem pills_other_count (n u d t : ℕ) (x : PillCost n u d t) : n = 5 := by
  norm_num [PillCost] at x
  exact x.1
theorem pills_other_unit (n u d t : ℕ) (x : PillCost n u d t) : u = 700 := by
  norm_num [PillCost] at x
  exact x.2.1
theorem pills_daily (n u d t : ℕ) (x : PillCost n u d t) : d = 4100 := by
  have hn := pills_other_count n u d t x
  have hu := pills_other_unit n u d t x
  have hd := x.2.2.1
  simp [hn, hu] at hd
  exact hd
theorem pills_total (n u d t : ℕ) (x : PillCost n u d t) : t = 57400 := by
  have hd := pills_daily n u d t x
  have ht := x.2.2.2
  omega
theorem pills_exists : PillCost 5 700 4100 57400 := by norm_num [PillCost]
theorem pills_solution : PillCost 5 700 4100 57400 ∧
    (∀ n u d t, PillCost n u d t → n = 5) ∧
    (∀ n u d t, PillCost n u d t → u = 700) ∧
    (∀ n u d t, PillCost n u d t → d = 4100) ∧
    (∀ n u d t, PillCost n u d t → t = 57400) :=
  ⟨pills_exists, pills_other_count, pills_other_unit, pills_daily, pills_total⟩

theorem nuggets_keely (a k n t : ℕ) (x : NuggetShare a k n t) : k = 2 * a := x.1
theorem nuggets_kendall (a k n t : ℕ) (x : NuggetShare a k n t) : n = 2 * a := x.2.1
theorem nuggets_alyssa (a k n t : ℕ) (x : NuggetShare a k n t) : a = 20 := by
  rcases x with ⟨hk, hn, hsum, ht⟩
  omega
theorem nuggets_total (a k n t : ℕ) (x : NuggetShare a k n t) : t = 100 := x.2.2.2
theorem nuggets_exists : NuggetShare 20 40 40 100 := by norm_num [NuggetShare]
theorem nuggets_solution : NuggetShare 20 40 40 100 ∧
    (∀ a k n t, NuggetShare a k n t → k = 2 * a) ∧
    (∀ a k n t, NuggetShare a k n t → n = 2 * a) ∧
    (∀ a k n t, NuggetShare a k n t → a = 20) ∧
    (∀ a k n t, NuggetShare a k n t → t = 100) :=
  ⟨nuggets_exists, nuggets_keely, nuggets_kendall, nuggets_alyssa, nuggets_total⟩

theorem candy_tina_bars (b m t d : ℕ) (x : CandyRevenue b m t d) : b = 105 := by
  norm_num [CandyRevenue] at x
  exact x.1
theorem candy_marvin (b m t d : ℕ) (x : CandyRevenue b m t d) : m = 70 := by
  norm_num [CandyRevenue] at x
  exact x.2.1
theorem candy_tina (b m t d : ℕ) (x : CandyRevenue b m t d) : t = 210 := by
  have hb := candy_tina_bars b m t d x
  have ht := x.2.2.1
  omega
theorem candy_difference (b m t d : ℕ) (x : CandyRevenue b m t d) : d = 140 := by
  have hm := candy_marvin b m t d x
  have ht := candy_tina b m t d x
  have hd := x.2.2.2
  omega
theorem candy_exists : CandyRevenue 105 70 210 140 := by norm_num [CandyRevenue]
theorem candy_solution : CandyRevenue 105 70 210 140 ∧
    (∀ b m t d, CandyRevenue b m t d → b = 105) ∧
    (∀ b m t d, CandyRevenue b m t d → m = 70) ∧
    (∀ b m t d, CandyRevenue b m t d → t = 210) ∧
    (∀ b m t d, CandyRevenue b m t d → d = 140) :=
  ⟨candy_exists, candy_tina_bars, candy_marvin, candy_tina, candy_difference⟩

theorem grocery_juice (j s l : ℕ) (x : GroceryBalance j s l) : j = 4 := by
  norm_num [GroceryBalance] at x
  exact x.1
theorem grocery_spent (j s l : ℕ) (x : GroceryBalance j s l) : s = 9 := by
  have hj := grocery_juice j s l x
  have hs := x.2.1
  omega
theorem grocery_left (j s l : ℕ) (x : GroceryBalance j s l) : l = 6 := by
  have hs := grocery_spent j s l x
  have hl := x.2.2
  omega
theorem grocery_exists : GroceryBalance 4 9 6 := by norm_num [GroceryBalance]
theorem grocery_solution : GroceryBalance 4 9 6 ∧
    (∀ j s l, GroceryBalance j s l → j = 4) ∧
    (∀ j s l, GroceryBalance j s l → s = 9) ∧
    (∀ j s l, GroceryBalance j s l → l = 6) :=
  ⟨grocery_exists, grocery_juice, grocery_spent, grocery_left⟩

theorem gallery_first (f s p t : ℕ) (x : GalleryPhotos f s p t) : f = 200 := by
  norm_num [GalleryPhotos] at x
  exact x.1
theorem gallery_second (f s p t : ℕ) (x : GalleryPhotos f s p t) : s = 320 := by
  have hf := gallery_first f s p t x
  have hs := x.2.1
  omega
theorem gallery_trip (f s p t : ℕ) (x : GalleryPhotos f s p t) : p = 520 := by
  have hf := gallery_first f s p t x
  have hs := gallery_second f s p t x
  have hp := x.2.2.1
  omega
theorem gallery_total (f s p t : ℕ) (x : GalleryPhotos f s p t) : t = 920 := by
  have hp := gallery_trip f s p t x
  have ht := x.2.2.2
  omega
theorem gallery_exists : GalleryPhotos 200 320 520 920 := by norm_num [GalleryPhotos]
theorem gallery_solution : GalleryPhotos 200 320 520 920 ∧
    (∀ f s p t, GalleryPhotos f s p t → f = 200) ∧
    (∀ f s p t, GalleryPhotos f s p t → s = 320) ∧
    (∀ f s p t, GalleryPhotos f s p t → p = 520) ∧
    (∀ f s p t, GalleryPhotos f s p t → t = 920) :=
  ⟨gallery_exists, gallery_first, gallery_second, gallery_trip, gallery_total⟩

theorem marbles_lost (l a g f : ℕ) (x : MarbleChange l a g f) : l = 5 := by
  norm_num [MarbleChange] at x
  exact x.1
theorem marbles_after_loss (l a g f : ℕ) (x : MarbleChange l a g f) : a = 20 := by
  have hl := marbles_lost l a g f x
  have ha := x.2.1
  omega
theorem marbles_gift (l a g f : ℕ) (x : MarbleChange l a g f) : g = 40 := by
  have ha := marbles_after_loss l a g f x
  have hg := x.2.2.1
  omega
theorem marbles_final (l a g f : ℕ) (x : MarbleChange l a g f) : f = 60 := by
  have ha := marbles_after_loss l a g f x
  have hg := marbles_gift l a g f x
  have hf := x.2.2.2
  omega
theorem marbles_exists : MarbleChange 5 20 40 60 := by norm_num [MarbleChange]
theorem marbles_solution : MarbleChange 5 20 40 60 ∧
    (∀ l a g f, MarbleChange l a g f → l = 5) ∧
    (∀ l a g f, MarbleChange l a g f → a = 20) ∧
    (∀ l a g f, MarbleChange l a g f → g = 40) ∧
    (∀ l a g f, MarbleChange l a g f → f = 60) :=
  ⟨marbles_exists, marbles_lost, marbles_after_loss, marbles_gift, marbles_final⟩

end LemmaWeave.Tests.GSM8KDaily0908F

#print axioms LemmaWeave.Tests.GSM8KDaily0908F.boat_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908F.goats_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908F.uncommon_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908F.traffic_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908F.pills_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908F.nuggets_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908F.candy_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908F.grocery_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908F.gallery_solution
#print axioms LemmaWeave.Tests.GSM8KDaily0908F.marbles_solution

#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.boat_solution to "work/gsm8k-daily11-boat-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.goats_solution to "work/gsm8k-daily11-goats-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.uncommon_solution to "work/gsm8k-daily11-uncommon-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.traffic_solution to "work/gsm8k-daily11-traffic-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.pills_solution to "work/gsm8k-daily11-pills-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.nuggets_solution to "work/gsm8k-daily11-nuggets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.candy_solution to "work/gsm8k-daily11-candy-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.grocery_solution to "work/gsm8k-daily11-grocery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.gallery_solution to "work/gsm8k-daily11-gallery-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0908F.marbles_solution to "work/gsm8k-daily11-marbles-graph.json"
