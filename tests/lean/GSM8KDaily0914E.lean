import LemmaWeave.Problems.GSM8K.Daily0914EModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract
namespace LemmaWeave.Tests.GSM8KDaily0914E
open LemmaWeave.Problems.GSM8K.Daily0914E

theorem ratio_boys (t b p e : ℕ) (h : ChildrenShare t b p e) : b = 75 := by rcases h with ⟨ht,hb,hp,hs⟩; omega
theorem ratio_each (t b p e : ℕ) (h : ChildrenShare t b p e) : e = 52 := by
  have hb := ratio_boys t b p e h
  rcases h with ⟨ht,hr,hp,hs⟩
  norm_num [hb, hp] at hs
  omega
theorem ratio_solution : ChildrenShare 180 75 3900 52 ∧ 75=75 ∧ 52=52 := by
  have h : ChildrenShare 180 75 3900 52 := by norm_num [ChildrenShare]
  exact ⟨h, ratio_boys _ _ _ _ h, ratio_each _ _ _ _ h⟩

theorem pills_first (a b c d e f g h : ℕ) (x : Painkillers a b c d e f g h) : b=6 ∧ c=12 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩
  omega
theorem pills_second (a b c d e f g h : ℕ) (x : Painkillers a b c d e f g h) : d=3 ∧ e=9 := by
  have h1 := pills_first a b c d e f g h x
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩
  omega
theorem pills_left (a b c d e f g h : ℕ) (x : Painkillers a b c d e f g h) : h=27 := by
  have h1 := pills_first a b c d e f g h x
  have h2 := pills_second a b c d e f g h x
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩
  omega
theorem pills_solution : Painkillers 50 6 12 3 9 2 23 27 ∧ (6=6 ∧ 12=12) ∧ (3=3 ∧ 9=9) ∧ 27=27 := by
  have h : Painkillers 50 6 12 3 9 2 23 27 := by norm_num [Painkillers]
  exact ⟨h, pills_first _ _ _ _ _ _ _ _ h, pills_second _ _ _ _ _ _ _ _ h, pills_left _ _ _ _ _ _ _ _ h⟩

theorem magazine_issues (a b c d e f : ℕ) (h : MagazineDiscount a b c d e f) : c=36 := by
  rcases h with ⟨ha,hb,hc,hd,he,hf⟩
  norm_num [ha,hb] at hc
  exact hc
theorem magazine_savings (a b c d e f : ℕ) (h : MagazineDiscount a b c d e f) : e=900 ∧ f=9 := by
  have hc := magazine_issues a b c d e f h
  rcases h with ⟨ha,hb,hi,hd,he,hf⟩
  norm_num [hc,hd] at he
  omega
theorem magazine_solution : MagazineDiscount 18 2 36 25 900 9 ∧ 36=36 ∧ (900=900 ∧ 9=9) := by
  have h : MagazineDiscount 18 2 36 25 900 9 := by norm_num [MagazineDiscount]
  exact ⟨h, magazine_issues _ _ _ _ _ _ h, magazine_savings _ _ _ _ _ _ h⟩

theorem dandelions_remaining (a b c d e : ℕ) (h : DandelionShare a b c d e) : c=27 := by
  rcases h with ⟨ha,hb,hc,hd,he⟩
  norm_num at hb
  omega
theorem dandelions_each (a b c d e : ℕ) (h : DandelionShare a b c d e) : e=9 := by
  have hc := dandelions_remaining a b c d e h
  rcases h with ⟨ha,hb,hr,hd,he⟩
  norm_num [hc,hd] at he
  omega
theorem dandelions_solution : DandelionShare 40 13 27 3 9 ∧ 27=27 ∧ 9=9 := by
  have h : DandelionShare 40 13 27 3 9 := by norm_num [DandelionShare]
  exact ⟨h, dandelions_remaining _ _ _ _ _ h, dandelions_each _ _ _ _ _ h⟩

theorem weights_base (a b c d e f : ℕ) (h : LoweringWeight a b c d e f) : c=300 := by
  rcases h with ⟨ha,hb,hc,hd,he,hf⟩
  norm_num [ha,hb] at hc
  exact hc
theorem weights_felt (a b c d e f : ℕ) (h : LoweringWeight a b c d e f) : e=60 ∧ f=360 := by
  have hc := weights_base a b c d e f h
  rcases h with ⟨ha,hb,hbase,hd,he,hf⟩
  norm_num [hc,hd] at he
  omega
theorem weights_solution : LoweringWeight 10 30 300 20 60 360 ∧ 300=300 ∧ (60=60 ∧ 360=360) := by
  have h : LoweringWeight 10 30 300 20 60 360 := by norm_num [LoweringWeight]
  exact ⟨h, weights_base _ _ _ _ _ _ h, weights_felt _ _ _ _ _ _ h⟩

theorem pies_pieces (a b c d e f g h : ℕ) (x : PieProfit a b c d e f g h) : c=36 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩
  norm_num [ha,hb] at hc
  exact hc
theorem pies_revenue_cost (a b c d e f g h : ℕ) (x : PieProfit a b c d e f g h) : e=14400 ∧ g=600 := by
  have hc := pies_pieces a b c d e f g h x
  rcases x with ⟨ha,hb,hp,hd,he,hf,hg,hh⟩
  norm_num [hc,hd] at he
  norm_num [ha,hf] at hg
  exact ⟨he,hg⟩
theorem pies_profit (a b c d e f g h : ℕ) (x : PieProfit a b c d e f g h) : h=13800 := by
  have heg := pies_revenue_cost a b c d e f g h x
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩
  omega
theorem pies_solution : PieProfit 12 3 36 400 14400 50 600 13800 ∧ 36=36 ∧ (14400=14400 ∧ 600=600) ∧ 13800=13800 := by
  have h : PieProfit 12 3 36 400 14400 50 600 13800 := by norm_num [PieProfit]
  exact ⟨h, pies_pieces _ _ _ _ _ _ _ _ h, pies_revenue_cost _ _ _ _ _ _ _ _ h, pies_profit _ _ _ _ _ _ _ _ h⟩

theorem coffee_cups (a b c d e : ℕ) (h : CoffeeSupply a b c d e) : c=120 := by
  rcases h with ⟨ha,hb,hc,hd,he⟩
  norm_num [ha,hb] at hc
  exact hc
theorem coffee_days (a b c d e : ℕ) (h : CoffeeSupply a b c d e) : e=40 := by
  have hc := coffee_cups a b c d e h
  rcases h with ⟨ha,hb,ht,hd,he⟩
  norm_num [hc,hd] at he
  omega
theorem coffee_solution : CoffeeSupply 3 40 120 3 40 ∧ 120=120 ∧ 40=40 := by
  have h : CoffeeSupply 3 40 120 3 40 := by norm_num [CoffeeSupply]
  exact ⟨h, coffee_cups _ _ _ _ _ h, coffee_days _ _ _ _ _ h⟩

theorem fence_perimeter (a b c d : ℕ) (h : FenceReplacement a b c d) : c=8*a := by
  rcases h with ⟨hb,hc,hp,hd⟩
  omega
theorem fence_short (a b c d : ℕ) (h : FenceReplacement a b c d) : a=80 ∧ d=80 := by
  have hc := fence_perimeter a b c d h
  rcases h with ⟨hb,hp,ht,hd⟩
  omega
theorem fence_solution : FenceReplacement 80 240 640 80 ∧ 640=8*80 ∧ (80=80 ∧ 80=80) := by
  have h : FenceReplacement 80 240 640 80 := by norm_num [FenceReplacement]
  exact ⟨h, fence_perimeter _ _ _ _ h, fence_short _ _ _ _ h⟩

theorem parking_sections (a b c d e f g : ℕ) (h : ParkingSearch a b c d e f g) : e=330 := by
  rcases h with ⟨ha,hb,hc,hd,he,hf,hg⟩
  norm_num [ha,hb,hc,hd] at he
  exact he
theorem parking_time (a b c d e f g : ℕ) (h : ParkingSearch a b c d e f g) : g=30 := by
  have he := parking_sections a b c d e f g h
  rcases h with ⟨ha,hb,hc,hd,ht,hf,hg⟩
  norm_num [he,hf] at hg
  omega
theorem parking_solution : ParkingSearch 15 10 20 9 330 11 30 ∧ 330=330 ∧ 30=30 := by
  have h : ParkingSearch 15 10 20 9 330 11 30 := by norm_num [ParkingSearch]
  exact ⟨h, parking_sections _ _ _ _ _ _ _ h, parking_time _ _ _ _ _ _ _ h⟩

theorem ages_matt_now (a b c d e : ℕ) (h : FutureAge a b c d e) : c=15 := by
  rcases h with ⟨ha,hb,hc,hd,he⟩
  omega
theorem ages_future (a b c d e : ℕ) (h : FutureAge a b c d e) : e=25 := by
  have hc := ages_matt_now a b c d e h
  rcases h with ⟨ha,hb,hn,hd,he⟩
  omega
theorem ages_solution : FutureAge 12 3 15 10 25 ∧ 15=15 ∧ 25=25 := by
  have h : FutureAge 12 3 15 10 25 := by norm_num [FutureAge]
  exact ⟨h, ages_matt_now _ _ _ _ _ h, ages_future _ _ _ _ _ h⟩

#print axioms ratio_solution
#print axioms pills_solution
#print axioms magazine_solution
#print axioms dandelions_solution
#print axioms weights_solution
#print axioms pies_solution
#print axioms coffee_solution
#print axioms fence_solution
#print axioms parking_solution
#print axioms ages_solution
#lw_dependencies ratio_solution to "work/gsm8k-daily39-ratio-graph.json"
#lw_dependencies pills_solution to "work/gsm8k-daily39-pills-graph.json"
#lw_dependencies magazine_solution to "work/gsm8k-daily39-magazine-graph.json"
#lw_dependencies dandelions_solution to "work/gsm8k-daily39-dandelions-graph.json"
#lw_dependencies weights_solution to "work/gsm8k-daily39-weights-graph.json"
#lw_dependencies pies_solution to "work/gsm8k-daily39-pies-graph.json"
#lw_dependencies coffee_solution to "work/gsm8k-daily39-coffee-graph.json"
#lw_dependencies fence_solution to "work/gsm8k-daily39-fence-graph.json"
#lw_dependencies parking_solution to "work/gsm8k-daily39-parking-graph.json"
#lw_dependencies ages_solution to "work/gsm8k-daily39-ages-graph.json"
end LemmaWeave.Tests.GSM8KDaily0914E
