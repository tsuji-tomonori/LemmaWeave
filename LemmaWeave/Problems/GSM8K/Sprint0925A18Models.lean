import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0925A18
structure Fish where blue spotted : ℕ; hb : 3*blue=30; hs : 2*spotted=blue
theorem fish_blue (m:Fish) : m.blue=10 := by cases m; omega
theorem fish_solution (m:Fish) : m.spotted=5 := by cases m; omega
structure Hoop where casey morgan : ℕ; hc : casey+3=10; hm : morgan=3*casey
theorem hoop_casey (m:Hoop) : m.casey=7 := by cases m; omega
theorem hoop_solution (m:Hoop) : m.morgan=21 := by cases m; omega
structure Circus where adult children total change : ℕ; ha:adult=2; hc:children=3*1; ht:total=adult+children; hh:change+total=20
theorem circus_adult (m:Circus):m.adult=2:=by cases m; omega
theorem circus_children (m:Circus):m.children=3:=by cases m; omega
theorem circus_total (m:Circus):m.total=5:=by cases m; omega
theorem circus_solution (m:Circus):m.change=15:=by cases m; omega
structure Fundraiser where bronze silver gold raised need : ℕ; hb:bronze=10*25; hs:silver=7*50; hg:gold=1*100; hr:raised=bronze+silver+gold; hn:need+raised=750
theorem fund_bronze (m:Fundraiser):m.bronze=250:=by cases m; omega
theorem fund_silver (m:Fundraiser):m.silver=350:=by cases m; omega
theorem fund_gold (m:Fundraiser):m.gold=100:=by cases m; omega
theorem fund_raised (m:Fundraiser):m.raised=700:=by cases m; omega
theorem fund_solution (m:Fundraiser):m.need=50:=by cases m; omega
structure Lizard where eyes wrinkles spots combined fewer : ℕ; he:eyes=3; hw:wrinkles=3*eyes; hs:spots=7*wrinkles; hc:combined=spots+wrinkles; hf:fewer+eyes=combined
theorem lizard_wrinkles (m:Lizard):m.wrinkles=9:=by cases m; omega
theorem lizard_spots (m:Lizard):m.spots=63:=by cases m; omega
theorem lizard_combined (m:Lizard):m.combined=72:=by cases m; omega
theorem lizard_literal : 105 ≠ 69 := by norm_num
theorem lizard_solution (m:Lizard):m.fewer=69:=by cases m; omega
structure Skips where bob jim total : ℕ; hb:bob=12*10; hj:jim=15*10; ht:total=bob+jim
theorem skips_bob (m:Skips):m.bob=120:=by cases m; omega
theorem skips_jim (m:Skips):m.jim=150:=by cases m; omega
theorem skips_solution (m:Skips):m.total=270:=by cases m; omega
structure Blankets where added warming : ℕ; ha:2*added=14; hw:warming=3*added
theorem blankets_added (m:Blankets):m.added=7:=by cases m; omega
theorem blankets_solution (m:Blankets):m.warming=21:=by cases m; omega
structure Bottles where each perBox total : ℕ; he:4*each=3*12; hp:perBox=50*each; ht:total=10*perBox
theorem bottles_each (m:Bottles):m.each=9:=by cases m; omega
theorem bottles_box (m:Bottles):m.perBox=450:=by cases m; omega
theorem bottles_solution (m:Bottles):m.total=4500:=by cases m; omega
structure Shopping where shirts sandals spent change : ℕ; hh:shirts=10*5; hs:sandals=3*3; hp:spent=shirts+sandals; hc:change+spent=100
theorem shopping_shirts (m:Shopping):m.shirts=50:=by cases m; omega
theorem shopping_sandals (m:Shopping):m.sandals=9:=by cases m; omega
theorem shopping_spent (m:Shopping):m.spent=59:=by cases m; omega
theorem shopping_solution (m:Shopping):m.change=41:=by cases m; omega
structure Ladder where perFoot rungs : ℕ; hp:6*perFoot=12; hr:rungs=20*perFoot
theorem ladder_rate (m:Ladder):m.perFoot=2:=by cases m; omega
theorem ladder_solution (m:Ladder):m.rungs=40:=by cases m; omega
structure Towels where perDay days : ℕ; hp:perDay=7*2; hd:days*14=98
theorem towels_daily (m:Towels):m.perDay=14:=by cases m; omega
theorem towels_solution (m:Towels):m.days=7:=by cases m; omega
structure Birds where birds : ℕ; h:10+2*birds=50
theorem birds_solution (m:Birds):m.birds=20:=by cases m; omega
structure Photos where afterDelete afterCat shoot : ℕ; hd:afterDelete+7=63; hc:afterCat=afterDelete+15; hf:afterCat+shoot=84+3
theorem photos_after_delete (m:Photos):m.afterDelete=56:=by cases m; omega
theorem photos_after_cat (m:Photos):m.afterCat=71:=by cases m; omega
theorem photos_solution (m:Photos):m.shoot=16:=by cases m; omega
structure Clothes where striped checkered shorts difference : ℕ; hs:3*striped=2*81; hc:striped+checkered=81; hh:shorts=checkered+19; hd:shorts+difference=striped
theorem clothes_striped (m:Clothes):m.striped=54:=by cases m; omega
theorem clothes_checkered (m:Clothes):m.checkered=27:=by cases m; omega
theorem clothes_shorts (m:Clothes):m.shorts=46:=by cases m; omega
theorem clothes_solution (m:Clothes):m.difference=8:=by cases m; omega
structure Supplies where perStudent total : ℕ; hp:perStudent=5+2+1; ht:total=23*perStudent
theorem supplies_each (m:Supplies):m.perStudent=8:=by cases m; omega
theorem supplies_solution (m:Supplies):m.total=184:=by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0925A18
