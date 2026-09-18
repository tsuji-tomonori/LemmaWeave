import LemmaWeave.Problems.GSM8K.Daily0917CModels
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KDaily0917C
open LemmaWeave.Problems.GSM8K.Daily0917C

theorem pingpong_frankie (a b c : Nat) (h : PingPong a b c) : b = 10 := by
  rcases h with ⟨ha, hb, hc⟩
  omega

theorem pingpong_carla (a b c : Nat) (h : PingPong a b c) : b = 10 ∧ c = 20 := by
  have hb := pingpong_frankie a b c h
  rcases h with ⟨ha, hx, hc⟩
  omega

theorem pingpong_solution : PingPong 30 10 20 ∧ 10 = 10 ∧ 20 = 20 := by
  have h : PingPong 30 10 20 := by norm_num [PingPong]
  exact ⟨h, pingpong_carla _ _ _ h⟩

theorem routes_first (a b c d e f : Nat) (h : RouteComparison a b c d e f) : d = 19 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  norm_num [ha, hb, hc] at hd
  exact hd

theorem routes_longer (a b c d e f : Nat) (h : RouteComparison a b c d e f) : d = 19 ∧ f = 5 := by
  have hd := routes_first a b c d e f h
  rcases h with ⟨ha, hb, hc, hx, he, hf⟩
  omega

theorem routes_solution : RouteComparison 10 3 3 19 14 5 ∧ 19 = 19 ∧ 5 = 5 := by
  have h : RouteComparison 10 3 3 19 14 5 := by norm_num [RouteComparison]
  exact ⟨h, routes_longer _ _ _ _ _ _ h⟩

theorem leave_days (a b c d e f g h : Nat) (x : PaidLeave a b c d e f g h) :
    e = 5 ∧ f = 5 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  omega

theorem leave_hours (a b c d e f g h : Nat) (x : PaidLeave a b c d e f g h) :
    (e = 5 ∧ f = 5) ∧ h = 80 := by
  have hef := leave_days a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hef.1, hef.2, hg] at hh
  exact ⟨hef, hh⟩

theorem leave_solution : PaidLeave 10 10 5 5 5 5 8 80 ∧
    (5 = 5 ∧ 5 = 5) ∧ 80 = 80 := by
  have h : PaidLeave 10 10 5 5 5 5 8 80 := by norm_num [PaidLeave]
  have hh := leave_hours _ _ _ _ _ _ _ _ h
  exact ⟨h, hh⟩

theorem walk_segments (a b c d : Nat) (h : BootWalk a b c d) : b = 1 ∧ c = 3 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  omega

theorem walk_total (a b c d : Nat) (h : BootWalk a b c d) : (b = 1 ∧ c = 3) ∧ d = 6 := by
  have hbc := walk_segments a b c d h
  rcases h with ⟨ha, hb, hc, hd⟩
  omega

theorem walk_solution : BootWalk 2 1 3 6 ∧ (1 = 1 ∧ 3 = 3) ∧ 6 = 6 := by
  have h : BootWalk 2 1 3 6 := by norm_num [BootWalk]
  exact ⟨h, walk_total _ _ _ _ h⟩

theorem shopping_subtotal (a b c d e f g h : Nat) (x : ShoppingCost a b c d e f g h) :
    a = 48 ∧ b = 72 ∧ c = 400 ∧ d = 40 ∧ e = 360 ∧ f = 480 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num at ha hb hc
  norm_num [hc] at hd
  omega

theorem shopping_total (a b c d e f g h : Nat) (x : ShoppingCost a b c d e f g h) :
    (a = 48 ∧ b = 72 ∧ c = 400 ∧ d = 40 ∧ e = 360 ∧ f = 480) ∧
    g = 24 ∧ h = 504 := by
  have hs := shopping_subtotal a b c d e f g h x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh⟩
  norm_num [hs.2.2.2.2.2] at hg
  have hg' : g = 24 := by omega
  exact ⟨hs, hg', by omega⟩

theorem shopping_solution : ShoppingCost 48 72 400 40 360 480 24 504 ∧
    (48 = 48 ∧ 72 = 72 ∧ 400 = 400 ∧ 40 = 40 ∧ 360 = 360 ∧ 480 = 480) ∧
    24 = 24 ∧ 504 = 504 := by
  have h : ShoppingCost 48 72 400 40 360 480 24 504 := by norm_num [ShoppingCost]
  exact ⟨h, shopping_total _ _ _ _ _ _ _ _ h⟩

theorem champagne_gross (a b c d e f g h i : Nat) (x : ChampagneCost a b c d e f g h i) :
    c = 160 ∧ e = 8000 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [ha, hb] at hc
  have hc' : c = 160 := hc
  norm_num [hc', hd] at he
  exact ⟨hc', he⟩

theorem champagne_total (a b c d e f g h i : Nat) (x : ChampagneCost a b c d e f g h i) :
    (c = 160 ∧ e = 8000) ∧ h = 1600 ∧ i = 6400 := by
  have hce := champagne_gross a b c d e f g h i x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi⟩
  norm_num [hce.2, hf, hg] at hh
  have hh' : h = 1600 := by omega
  exact ⟨hce, hh', by omega⟩

theorem champagne_solution : ChampagneCost 40 4 160 50 8000 100 20 1600 6400 ∧
    (160 = 160 ∧ 8000 = 8000) ∧ 1600 = 1600 ∧ 6400 = 6400 := by
  have h : ChampagneCost 40 4 160 50 8000 100 20 1600 6400 := by norm_num [ChampagneCost]
  exact ⟨h, champagne_total _ _ _ _ _ _ _ _ _ h⟩

theorem overtime_parts (a b c d e f g h i j : Nat) (x : OvertimePay a b c d e f g h i j) :
    d = 480 ∧ g = 18 ∧ h = 216 := by
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hb, hc] at hd
  norm_num [he, hf, hb] at hg
  omega

theorem overtime_hours (a b c d e f g h i j : Nat) (x : OvertimePay a b c d e f g h i j) :
    (d = 480 ∧ g = 18 ∧ h = 216) ∧ i = 12 ∧ j = 52 := by
  have hp := overtime_parts a b c d e f g h i j x
  rcases x with ⟨ha, hb, hc, hd, he, hf, hg, hh, hi, hj⟩
  norm_num [hp.2.1, hp.2.2] at hi
  have hi' : i = 12 := by omega
  exact ⟨hp, hi', by omega⟩

theorem overtime_solution : OvertimePay 696 12 40 480 3 2 18 216 12 52 ∧
    (480 = 480 ∧ 18 = 18 ∧ 216 = 216) ∧ 12 = 12 ∧ 52 = 52 := by
  have h : OvertimePay 696 12 40 480 3 2 18 216 12 52 := by norm_num [OvertimePay]
  exact ⟨h, overtime_hours _ _ _ _ _ _ _ _ _ _ h⟩

theorem floors_current (a b c d e f : Nat) (h : BuildingFloors a b c d e f) :
    b = 6 ∧ c = 4 ∧ d = 11 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem floors_top (a b c d e f : Nat) (h : BuildingFloors a b c d e f) :
    (b = 6 ∧ c = 4 ∧ d = 11) ∧ f = 20 := by
  have hcur := floors_current a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem floors_solution : BuildingFloors 1 6 4 11 9 20 ∧
    (6 = 6 ∧ 4 = 4 ∧ 11 = 11) ∧ 20 = 20 := by
  have h : BuildingFloors 1 6 4 11 9 20 := by norm_num [BuildingFloors]
  exact ⟨h, floors_top _ _ _ _ _ _ h⟩

theorem apple_wait (a b c d e f : Nat) (h : AppleTree a b c d e f) : d = 5 ∧ e = 2 := by
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem apple_age (a b c d e f : Nat) (h : AppleTree a b c d e f) :
    (d = 5 ∧ e = 2) ∧ f = 11 := by
  have hde := apple_wait a b c d e f h
  rcases h with ⟨ha, hb, hc, hd, he, hf⟩
  omega

theorem apple_solution : AppleTree 4 9 7 5 2 11 ∧ (5 = 5 ∧ 2 = 2) ∧ 11 = 11 := by
  have h : AppleTree 4 9 7 5 2 11 := by norm_num [AppleTree]
  exact ⟨h, apple_age _ _ _ _ _ _ h⟩

theorem money_ali (a b c d : Nat) (h : SharedMoney a b c d) : c = 105 := by
  rcases h with ⟨ha, hb, hc, hd⟩
  omega

theorem money_james (a b c d : Nat) (h : SharedMoney a b c d) : c = 105 ∧ d = 145 := by
  have hc := money_ali a b c d h
  rcases h with ⟨ha, hb, hx, hd⟩
  omega

theorem money_solution : SharedMoney 250 40 105 145 ∧ 105 = 105 ∧ 145 = 145 := by
  have h : SharedMoney 250 40 105 145 := by norm_num [SharedMoney]
  exact ⟨h, money_james _ _ _ _ h⟩

#print axioms pingpong_solution
#print axioms routes_solution
#print axioms leave_solution
#print axioms walk_solution
#print axioms shopping_solution
#print axioms champagne_solution
#print axioms overtime_solution
#print axioms floors_solution
#print axioms apple_solution
#print axioms money_solution
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.pingpong_solution to "work/gsm8k-daily47-pingpong-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.routes_solution to "work/gsm8k-daily47-routes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.leave_solution to "work/gsm8k-daily47-leave-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.walk_solution to "work/gsm8k-daily47-walk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.shopping_solution to "work/gsm8k-daily47-shopping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.champagne_solution to "work/gsm8k-daily47-champagne-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.overtime_solution to "work/gsm8k-daily47-overtime-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.floors_solution to "work/gsm8k-daily47-floors-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.apple_solution to "work/gsm8k-daily47-apple-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KDaily0917C.money_solution to "work/gsm8k-daily47-money-graph.json"

end LemmaWeave.Tests.GSM8KDaily0917C
