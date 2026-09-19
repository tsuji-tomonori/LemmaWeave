import LemmaWeave.Problems.GSM8K.Sprint0919A26Models
import Mathlib.Tactic
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0919A26
open LemmaWeave.Problems.GSM8K.Sprint0919A26

theorem bella_frisbees (a b c d e f g h i j k l : Nat) (x : BellaItems a b c d e f g h i j k l) : b = 30 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj,hk,hl⟩; norm_num [ha] at hb; omega
theorem bella_cards (a b c d e f g h i j k l : Nat) (x : BellaItems a b c d e f g h i j k l) : c = 10 := by
  have hb := bella_frisbees a b c d e f g h i j k l x
  rcases x with ⟨ha,hx,hc,hd,he,hf,hg,hh,hi,hj,hk,hl⟩; omega
theorem bella_added (a b c d e f g h i j k l : Nat) (x : BellaItems a b c d e f g h i j k l) : f = 24 ∧ g = 12 ∧ h = 4 := by
  have hb := bella_frisbees a b c d e f g h i j k l x
  have hc := bella_cards a b c d e f g h i j k l x
  rcases x with ⟨ha,hx,hy,hd,he,hf,hg,hh,hi,hj,hk,hl⟩
  norm_num [ha,hb,hc,hd,he] at hf hg hh; omega
theorem bella_final (a b c d e f g h i j k l : Nat) (x : BellaItems a b c d e f g h i j k l) : i = 84 ∧ j = 42 ∧ k = 14 := by
  have hb := bella_frisbees a b c d e f g h i j k l x
  have hc := bella_cards a b c d e f g h i j k l x
  have hfg := bella_added a b c d e f g h i j k l x
  rcases hfg with ⟨hf,hg,hh⟩
  rcases x with ⟨ha,hx,hy,hd,he,h1,h2,h3,hi,hj,hk,hl⟩; omega
theorem bella_total (a b c d e f g h i j k l : Nat) (x : BellaItems a b c d e f g h i j k l) : l = 140 := by
  have hijk := bella_final a b c d e f g h i j k l x
  rcases hijk with ⟨hi,hj,hk⟩; rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,h1,h2,h3,hl⟩; omega
theorem bella_solution : BellaItems 60 30 10 2 5 24 12 4 84 42 14 140 ∧ 30 = 30 ∧ 10 = 10 ∧
    (24 = 24 ∧ 12 = 12 ∧ 4 = 4) ∧ (84 = 84 ∧ 42 = 42 ∧ 14 = 14) ∧ 140 = 140 := by
  have x : BellaItems 60 30 10 2 5 24 12 4 84 42 14 140 := by norm_num [BellaItems]
  exact ⟨x, bella_frisbees _ _ _ _ _ _ _ _ _ _ _ _ x, bella_cards _ _ _ _ _ _ _ _ _ _ _ _ x,
    bella_added _ _ _ _ _ _ _ _ _ _ _ _ x, bella_final _ _ _ _ _ _ _ _ _ _ _ _ x,
    bella_total _ _ _ _ _ _ _ _ _ _ _ _ x⟩

theorem height_grayson (a b c d e : Nat) (x : Heights a b c d e) : c = 63 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha,hb] at hc; exact hc
theorem height_gracie (a b c d e : Nat) (x : Heights a b c d e) : e = 56 := by
  have hc := height_grayson a b c d e x; rcases x with ⟨ha,hb,hx,hd,he⟩; omega
theorem height_solution : Heights 61 2 63 7 56 ∧ 63 = 63 ∧ 56 = 56 := by
  have x : Heights 61 2 63 7 56 := by norm_num [Heights]
  exact ⟨x, height_grayson _ _ _ _ _ x, height_gracie _ _ _ _ _ x⟩

theorem mango_ripe (a b c d e f g : Nat) (x : Mangoes a b c d e f g) : d = 240 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg⟩; norm_num [ha,hb,hc] at hd; omega
theorem mango_eaten (a b c d e f g : Nat) (x : Mangoes a b c d e f g) : f = 144 := by
  have hd := mango_ripe a b c d e f g x; rcases x with ⟨ha,hb,hc,hx,he,hf,hg⟩
  norm_num [hd,he] at hf; omega
theorem mango_remaining (a b c d e f g : Nat) (x : Mangoes a b c d e f g) : g = 96 := by
  have hd := mango_ripe a b c d e f g x; have hf := mango_eaten a b c d e f g x
  rcases x with ⟨ha,hb,hc,hx,he,hy,hg⟩; omega
theorem mango_solution : Mangoes 400 3 5 240 60 144 96 ∧ 240 = 240 ∧ 144 = 144 ∧ 96 = 96 := by
  have x : Mangoes 400 3 5 240 60 144 96 := by norm_num [Mangoes]
  exact ⟨x, mango_ripe _ _ _ _ _ _ _ x, mango_eaten _ _ _ _ _ _ _ x,
    mango_remaining _ _ _ _ _ _ _ x⟩

theorem carrot_total (a b c d e f g : Nat) (x : CarrotYear a b c d e f g) : c = 365 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg⟩; norm_num [ha,hb] at hc; exact hc
theorem carrot_bags (a b c d e f g : Nat) (x : CarrotYear a b c d e f g) : e = 73 := by
  have hc := carrot_total a b c d e f g x; rcases x with ⟨ha,hb,hx,hd,he,hf,hg⟩
  norm_num [hc,hd] at he; omega
theorem carrot_cost (a b c d e f g : Nat) (x : CarrotYear a b c d e f g) : g = 146 := by
  have he := carrot_bags a b c d e f g x; rcases x with ⟨ha,hb,hc,hd,hx,hf,hg⟩
  norm_num [he,hf] at hg; exact hg
theorem carrot_leap_year : 366 ≤ 74 * 5 ∧ 73 * 5 < 366 ∧ 74 * 2 = 148 := by norm_num
theorem carrot_solution : CarrotYear 365 1 365 5 73 2 146 ∧ 365 = 365 ∧ 73 = 73 ∧ 146 = 146 ∧
    (366 ≤ 74 * 5 ∧ 73 * 5 < 366 ∧ 74 * 2 = 148) := by
  have x : CarrotYear 365 1 365 5 73 2 146 := by norm_num [CarrotYear]
  exact ⟨x, carrot_total _ _ _ _ _ _ _ x, carrot_bags _ _ _ _ _ _ _ x,
    carrot_cost _ _ _ _ _ _ _ x, carrot_leap_year⟩

theorem ping_subtotal (a b c d e f : Nat) (x : PingPong a b c d e f) : c = 100000 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf⟩; norm_num [ha,hb] at hc; exact hc
theorem ping_discount (a b c d e f : Nat) (x : PingPong a b c d e f) : e = 30000 := by
  have hc := ping_subtotal a b c d e f x; rcases x with ⟨ha,hb,hx,hd,he,hf⟩
  norm_num [hc,hd] at he; omega
theorem ping_paid (a b c d e f : Nat) (x : PingPong a b c d e f) : f = 70000 := by
  have hc := ping_subtotal a b c d e f x; have he := ping_discount a b c d e f x
  rcases x with ⟨ha,hb,hx,hd,hy,hf⟩; omega
theorem ping_solution : PingPong 10 10000 100000 30 30000 70000 ∧ 100000 = 100000 ∧ 30000 = 30000 ∧ 70000 = 70000 := by
  have x : PingPong 10 10000 100000 30 30000 70000 := by norm_num [PingPong]
  exact ⟨x, ping_subtotal _ _ _ _ _ _ x, ping_discount _ _ _ _ _ _ x, ping_paid _ _ _ _ _ _ x⟩

theorem parking_capacity (a b c d e f g h i j k : Nat) (x : ParkingGarage a b c d e f g h i j k) : c = 400 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj,hk⟩; norm_num [ha,hb] at hc; exact hc
theorem parking_second (a b c d e f g h i j k : Nat) (x : ParkingGarage a b c d e f g h i j k) : f = 60 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi,hj,hk⟩; norm_num [hd,he] at hf; exact hf
theorem parking_third (a b c d e f g h i j k : Nat) (x : ParkingGarage a b c d e f g h i j k) : h = 65 := by
  have hf := parking_second a b c d e f g h i j k x
  rcases x with ⟨ha,hb,hc,hd,he,hx,hg,hh,hi,hj,hk⟩; norm_num [hf,hg] at hh; exact hh
theorem parking_open (a b c d e f g h i j k : Nat) (x : ParkingGarage a b c d e f g h i j k) : j = 214 := by
  have hf := parking_second a b c d e f g h i j k x; have hh := parking_third a b c d e f g h i j k x
  rcases x with ⟨ha,hb,hc,hd,he,hx,hg,hy,hi,hj,hk⟩; norm_num [hd,hf,hh,hi] at hj; exact hj
theorem parking_occupied (a b c d e f g h i j k : Nat) (x : ParkingGarage a b c d e f g h i j k) : k = 186 := by
  have hc := parking_capacity a b c d e f g h i j k x; have hj := parking_open a b c d e f g h i j k x
  rcases x with ⟨ha,hb,hx,hd,he,hf,hg,hh,hi,hy,hk⟩; omega
theorem parking_solution : ParkingGarage 4 100 400 58 2 60 5 65 31 214 186 ∧
    400 = 400 ∧ 60 = 60 ∧ 65 = 65 ∧ 214 = 214 ∧ 186 = 186 := by
  have x : ParkingGarage 4 100 400 58 2 60 5 65 31 214 186 := by norm_num [ParkingGarage]
  exact ⟨x, parking_capacity _ _ _ _ _ _ _ _ _ _ _ x, parking_second _ _ _ _ _ _ _ _ _ _ _ x,
    parking_third _ _ _ _ _ _ _ _ _ _ _ x, parking_open _ _ _ _ _ _ _ _ _ _ _ x,
    parking_occupied _ _ _ _ _ _ _ _ _ _ _ x⟩

theorem lawsuit_difference (a b c d e f : Nat) (x : LawsuitDifference a b c d e f) : f = 20 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg⟩; omega
theorem lawsuit_independent_joint : 30 * 50 = 15 * 100 := by norm_num
theorem lawsuit_independent_loss : 35 + 30 + 50 = 100 + 15 ∧ 20 + 15 = 35 := by norm_num
theorem lawsuit_solution : LawsuitDifference 30 50 100 15 35 20 ∧ 20 = 20 ∧
    30 * 50 = 15 * 100 ∧ (35 + 30 + 50 = 100 + 15 ∧ 20 + 15 = 35) := by
  have x : LawsuitDifference 30 50 100 15 35 20 := by norm_num [LawsuitDifference]
  exact ⟨x, lawsuit_difference _ _ _ _ _ _ x, lawsuit_independent_joint, lawsuit_independent_loss⟩

theorem pills_count (a b c d e f g h : Nat) (x : Pills a b c d e f g h) : c = 60 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩; norm_num [ha,hb] at hc; exact hc
theorem pills_gross (a b c d e f g h : Nat) (x : Pills a b c d e f g h) : e = 9000 := by
  have hc := pills_count a b c d e f g h x; rcases x with ⟨ha,hb,hx,hd,he,hf,hg,hh⟩
  norm_num [hc,hd] at he; exact he
theorem pills_covered (a b c d e f g h : Nat) (x : Pills a b c d e f g h) : g = 3600 := by
  have he := pills_gross a b c d e f g h x; rcases x with ⟨ha,hb,hc,hd,hx,hf,hg,hh⟩
  norm_num [he,hf] at hg; omega
theorem pills_paid (a b c d e f g h : Nat) (x : Pills a b c d e f g h) : h = 5400 := by
  have he := pills_gross a b c d e f g h x; have hg := pills_covered a b c d e f g h x
  rcases x with ⟨ha,hb,hc,hd,hx,hf,hy,hh⟩; omega
theorem pills_solution : Pills 2 30 60 150 9000 40 3600 5400 ∧ 60 = 60 ∧ 9000 = 9000 ∧ 3600 = 3600 ∧ 5400 = 5400 := by
  have x : Pills 2 30 60 150 9000 40 3600 5400 := by norm_num [Pills]
  exact ⟨x, pills_count _ _ _ _ _ _ _ _ x, pills_gross _ _ _ _ _ _ _ _ x,
    pills_covered _ _ _ _ _ _ _ _ x, pills_paid _ _ _ _ _ _ _ _ x⟩

theorem roof_remaining (a b c d e : Nat) (x : Roofing a b c d e) : c = 50 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; omega
theorem roof_cost (a b c d e : Nat) (x : Roofing a b c d e) : e = 400 := by
  have hc := roof_remaining a b c d e x; rcases x with ⟨ha,hb,hx,hd,he⟩; norm_num [hc,hd] at he; exact he
theorem roof_solution : Roofing 300 250 50 8 400 ∧ 50 = 50 ∧ 400 = 400 := by
  have x : Roofing 300 250 50 8 400 := by norm_num [Roofing]
  exact ⟨x, roof_remaining _ _ _ _ _ x, roof_cost _ _ _ _ _ x⟩

theorem ball_distance (a b c d e f g h : Nat) (x : BallCatch a b c d e f g h) : c = 160 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh⟩; norm_num [ha,hb] at hc; exact hc
theorem ball_extra (a b c d e f g h : Nat) (x : BallCatch a b c d e f g h) : g = 24 := by
  have hc := ball_distance a b c d e f g h x
  rcases x with ⟨ha,hb,hx,hd,he,hf,hg,hh⟩; norm_num [hb,hd] at he; omega
theorem ball_total (a b c d e f g h : Nat) (x : BallCatch a b c d e f g h) : h = 32 := by
  have hg := ball_extra a b c d e f g h x; rcases x with ⟨ha,hb,hc,hd,he,hf,hx,hh⟩; omega
theorem ball_solution : BallCatch 20 8 160 5 40 120 24 32 ∧ 160 = 160 ∧ 24 = 24 ∧ 32 = 32 := by
  have x : BallCatch 20 8 160 5 40 120 24 32 := by norm_num [BallCatch]
  exact ⟨x, ball_distance _ _ _ _ _ _ _ _ x, ball_extra _ _ _ _ _ _ _ _ x, ball_total _ _ _ _ _ _ _ _ x⟩

theorem pad_count (a b c d e : Nat) (x : Notepads a b c d e) : c = 8 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha,hb] at hc; omega
theorem pad_pages (a b c d e : Nat) (x : Notepads a b c d e) : e = 480 := by
  have hc := pad_count a b c d e x; rcases x with ⟨ha,hb,hx,hd,he⟩; norm_num [hc,hd] at he; exact he
theorem pad_solution : Notepads 1000 125 8 60 480 ∧ 8 = 8 ∧ 480 = 480 := by
  have x : Notepads 1000 125 8 60 480 := by norm_num [Notepads]
  exact ⟨x, pad_count _ _ _ _ _ x, pad_pages _ _ _ _ _ x⟩

theorem money_twice (a b c d e f g : Nat) (x : ThreePeopleMoney a b c d e f g) : b = 1200 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg⟩; norm_num [ha] at hb; exact hb
theorem money_catherine (a b c d e f g : Nat) (x : ThreePeopleMoney a b c d e f g) : d = 950 := by
  have hb := money_twice a b c d e f g x; rcases x with ⟨ha,hx,hc,hd,he,hf,hg⟩; omega
theorem money_carmela (a b c d e f g : Nat) (x : ThreePeopleMoney a b c d e f g) : f = 1250 := by
  have hb := money_twice a b c d e f g x; rcases x with ⟨ha,hx,hc,hd,he,hf,hg⟩; omega
theorem money_total (a b c d e f g : Nat) (x : ThreePeopleMoney a b c d e f g) : g = 2800 := by
  have hd := money_catherine a b c d e f g x; have hf := money_carmela a b c d e f g x
  rcases x with ⟨ha,hb,hc,hx,he,hy,hg⟩; omega
theorem money_solution : ThreePeopleMoney 600 1200 250 950 50 1250 2800 ∧
    1200 = 1200 ∧ 950 = 950 ∧ 1250 = 1250 ∧ 2800 = 2800 := by
  have x : ThreePeopleMoney 600 1200 250 950 50 1250 2800 := by norm_num [ThreePeopleMoney]
  exact ⟨x, money_twice _ _ _ _ _ _ _ x, money_catherine _ _ _ _ _ _ _ x,
    money_carmela _ _ _ _ _ _ _ x, money_total _ _ _ _ _ _ _ x⟩

theorem audio_hours (a b c d e : Nat) (x : Audiobooks a b c d e) : c = 180 := by
  rcases x with ⟨ha,hb,hc,hd,he⟩; norm_num [ha,hb] at hc; exact hc
theorem audio_days (a b c d e : Nat) (x : Audiobooks a b c d e) : e = 90 := by
  have hc := audio_hours a b c d e x; rcases x with ⟨ha,hb,hx,hd,he⟩; norm_num [hc,hd] at he; omega
theorem audio_solution : Audiobooks 6 30 180 2 90 ∧ 180 = 180 ∧ 90 = 90 := by
  have x : Audiobooks 6 30 180 2 90 := by norm_num [Audiobooks]
  exact ⟨x, audio_hours _ _ _ _ _ x, audio_days _ _ _ _ _ x⟩

theorem save_first (a b c d e f g h i : Nat) (x : Savings a b c d e f g h i) : c = 70 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi⟩; norm_num [ha,hb] at hc; exact hc
theorem save_second (a b c d e f g h i : Nat) (x : Savings a b c d e f g h i) : f = 60 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg,hh,hi⟩; norm_num [hd,he] at hf; exact hf
theorem save_before (a b c d e f g h i : Nat) (x : Savings a b c d e f g h i) : g = 130 := by
  have hc := save_first a b c d e f g h i x; have hf := save_second a b c d e f g h i x
  rcases x with ⟨ha,hb,hx,hd,he,hy,hg,hh,hi⟩; omega
theorem save_december (a b c d e f g h i : Nat) (x : Savings a b c d e f g h i) : i = 20 := by
  have hg := save_before a b c d e f g h i x; rcases x with ⟨ha,hb,hc,hd,he,hf,hx,hh,hi⟩; omega
theorem save_solution : Savings 7 10 70 4 15 60 130 150 20 ∧ 70 = 70 ∧ 60 = 60 ∧ 130 = 130 ∧ 20 = 20 := by
  have x : Savings 7 10 70 4 15 60 130 150 20 := by norm_num [Savings]
  exact ⟨x, save_first _ _ _ _ _ _ _ _ _ x, save_second _ _ _ _ _ _ _ _ _ x,
    save_before _ _ _ _ _ _ _ _ _ x, save_december _ _ _ _ _ _ _ _ _ x⟩

theorem julia_game (a b c d e f g : Nat) (x : JuliaMoney a b c d e f g) : c = 20 := by
  rcases x with ⟨ha,hb,hc,hd,he,hf,hg⟩; norm_num [ha,hb] at hc; omega
theorem julia_after_game (a b c d e f g : Nat) (x : JuliaMoney a b c d e f g) : d = 20 := by
  have hc := julia_game a b c d e f g x; rcases x with ⟨ha,hb,hx,hd,he,hf,hg⟩; omega
theorem julia_purchase (a b c d e f g : Nat) (x : JuliaMoney a b c d e f g) : f = 5 := by
  have hd := julia_after_game a b c d e f g x; rcases x with ⟨ha,hb,hc,hx,he,hf,hg⟩
  norm_num [hd,he] at hf; omega
theorem julia_left (a b c d e f g : Nat) (x : JuliaMoney a b c d e f g) : g = 15 := by
  have hd := julia_after_game a b c d e f g x; have hf := julia_purchase a b c d e f g x
  rcases x with ⟨ha,hb,hc,hx,he,hy,hg⟩; omega
theorem julia_solution : JuliaMoney 40 2 20 20 4 5 15 ∧ 20 = 20 ∧ 20 = 20 ∧ 5 = 5 ∧ 15 = 15 := by
  have x : JuliaMoney 40 2 20 20 4 5 15 := by norm_num [JuliaMoney]
  exact ⟨x, julia_game _ _ _ _ _ _ _ x, julia_after_game _ _ _ _ _ _ _ x,
    julia_purchase _ _ _ _ _ _ _ x, julia_left _ _ _ _ _ _ _ x⟩

#print axioms bella_solution
#print axioms height_solution
#print axioms mango_solution
#print axioms carrot_solution
#print axioms ping_solution
#print axioms parking_solution
#print axioms lawsuit_solution
#print axioms pills_solution
#print axioms roof_solution
#print axioms ball_solution
#print axioms pad_solution
#print axioms money_solution
#print axioms audio_solution
#print axioms save_solution
#print axioms julia_solution
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.bella_solution to "work/gsm8k-sprint26-bella-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.height_solution to "work/gsm8k-sprint26-height-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.mango_solution to "work/gsm8k-sprint26-mango-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.carrot_solution to "work/gsm8k-sprint26-carrot-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.ping_solution to "work/gsm8k-sprint26-ping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.parking_solution to "work/gsm8k-sprint26-parking-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.lawsuit_solution to "work/gsm8k-sprint26-lawsuit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.pills_solution to "work/gsm8k-sprint26-pills-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.roof_solution to "work/gsm8k-sprint26-roof-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.ball_solution to "work/gsm8k-sprint26-ball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.pad_solution to "work/gsm8k-sprint26-pad-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.money_solution to "work/gsm8k-sprint26-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.audio_solution to "work/gsm8k-sprint26-audio-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.save_solution to "work/gsm8k-sprint26-save-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0919A26.julia_solution to "work/gsm8k-sprint26-julia-graph.json"

end LemmaWeave.Tests.GSM8KSprint0919A26
