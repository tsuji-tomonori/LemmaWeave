import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0924A08
structure Walk where
  detour : ℕ
  markDistance : ℕ
  markTime : ℕ
  chrisTime : ℕ
  extraTime : ℕ
  hD:detour=3*2
  hMD:markDistance=detour+9
  hMT:3*markTime=markDistance
  hCT:3*chrisTime=9
  hE:chrisTime+extraTime=markTime
theorem walk_detour(m:Walk):m.detour=6:=by omega
theorem walk_mark_distance(m:Walk):m.markDistance=15:=by omega
theorem walk_mark_time(m:Walk):m.markTime=5:=by omega
theorem walk_chris_time(m:Walk):m.chrisTime=3:=by omega
theorem walk_solution(m:Walk):m.extraTime=2:=by omega
structure Protest where
  extra : ℕ
  second : ℕ
  total : ℕ
  hE:4*extra=4
  hS:second=4+extra
  hT:total=4+second
theorem protest_extra(m:Protest):m.extra=1:=by omega
theorem protest_second(m:Protest):m.second=5:=by omega
theorem protest_solution(m:Protest):m.total=9:=by omega
structure Pies where
  needed : ℕ
  buy : ℕ
  hN:needed=10*8
  hB:buy+50=needed
theorem pies_needed(m:Pies):m.needed=80:=by omega
theorem pies_solution(m:Pies):m.buy=30:=by omega
structure Reading where
  half : ℕ
  first : ℕ
  second : ℕ
  total : ℕ
  hH:2*half=500
  hF:10*first=half
  hS:5*second=half
  hT:total=first+second
theorem reading_half(m:Reading):m.half=250:=by omega
theorem reading_first(m:Reading):m.first=25:=by omega
theorem reading_second(m:Reading):m.second=50:=by omega
theorem reading_solution(m:Reading):m.total=75:=by omega
structure Orchard where
  month : ℕ
  total : ℕ
  hM:month=4*30
  hT:total=month+230
theorem orchard_month(m:Orchard):m.month=120:=by omega
theorem orchard_solution(m:Orchard):m.total=350:=by omega
structure Sales where
  thursday : ℕ
  friday : ℕ
  total : ℕ
  hTh:thursday=3*15
  hF:5*friday=thursday
  hT:total=15+thursday+friday
theorem sales_thursday(m:Sales):m.thursday=45:=by omega
theorem sales_friday(m:Sales):m.friday=9:=by omega
theorem sales_solution(m:Sales):m.total=69:=by omega
structure MoneyConventional where
  dailyCents : ℕ
  h:dailyCents=720*5*8
structure MoneyLiteral where
  dailyCents : ℕ
  h:dailyCents=720*6*8
theorem money_conventional(m:MoneyConventional):m.dailyCents=28800:=by omega
theorem money_literal(m:MoneyLiteral):m.dailyCents=34560:=by omega
theorem money_solution(c:MoneyConventional)(l:MoneyLiteral):c.dailyCents=28800 ∧ l.dailyCents=34560 ∧ c.dailyCents≠l.dailyCents:=by omega
structure Wipes where
  total : ℕ
  packs : ℕ
  hT:total=2*360
  hP:120*packs=total
theorem wipes_total(m:Wipes):m.total=720:=by omega
theorem wipes_solution(m:Wipes):m.packs=6:=by omega
theorem seesaw_impossible : ¬∃ n:ℕ,60+4*n=40:=by omega
theorem seesaw_corrected : 40+4*5=60:=by omega
theorem seesaw_solution : (¬∃ n:ℕ,60+4*n=40) ∧ 40+4*5=60:=by constructor; exact seesaw_impossible; exact seesaw_corrected
structure Basketball where
  jay : ℕ
  pair : ℕ
  sean : ℕ
  total : ℕ
  hJ:jay=4+6
  hP:pair=4+jay
  hS:sean+2=pair
  hT:total=4+jay+sean
theorem basketball_jay(m:Basketball):m.jay=10:=by omega
theorem basketball_pair(m:Basketball):m.pair=14:=by omega
theorem basketball_sean(m:Basketball):m.sean=12:=by omega
theorem basketball_solution(m:Basketball):m.total=26:=by omega
structure Yellow where
  fixed : ℕ
  yellow : ℕ
  total : ℕ
  hF:fixed=7+11
  hT:total=fixed+yellow
  hProbability:4*yellow=total
theorem yellow_total_fixed(m:Yellow):m.fixed=18:=by omega
theorem yellow_equation(m:Yellow):4*m.yellow=18+m.yellow:=by omega
theorem yellow_solution(m:Yellow):m.yellow=6:=by omega
structure Milk where
  consumed : ℕ
  remaining : ℕ
  cooking : ℕ
  left : ℕ
  hC:4*consumed=3*16
  hR:remaining+consumed=16
  hCook:2*cooking=remaining
  hL:left+cooking=remaining
theorem milk_consumed(m:Milk):m.consumed=12:=by omega
theorem milk_remaining(m:Milk):m.remaining=4:=by omega
theorem milk_cooking(m:Milk):m.cooking=2:=by omega
theorem milk_solution(m:Milk):m.left=2:=by omega
structure Field where
  perimeter : ℕ
  total : ℕ
  hP:perimeter=2*100+2*50
  hT:total=6*perimeter
theorem field_perimeter(m:Field):m.perimeter=300:=by omega
theorem field_solution(m:Field):m.total=1800:=by omega
structure Practice where
  available : ℕ
  used : ℕ
  left : ℕ
  hA:available=2*60
  hU:used=30+25+38
  hL:left+used=available
theorem practice_total(m:Practice):m.available=120:=by omega
theorem practice_used(m:Practice):m.used=93:=by omega
theorem practice_solution(m:Practice):m.left=27:=by omega
structure Frisbee where
  bessOut : ℕ
  bessTotal : ℕ
  holly : ℕ
  total : ℕ
  hBO:bessOut=4*20
  hBT:bessTotal=2*bessOut
  hH:holly=5*8
  hT:total=bessTotal+holly
theorem frisbee_bess_out(m:Frisbee):m.bessOut=80:=by omega
theorem frisbee_bess_total(m:Frisbee):m.bessTotal=160:=by omega
theorem frisbee_holly(m:Frisbee):m.holly=40:=by omega
theorem frisbee_solution(m:Frisbee):m.total=200:=by omega
structure Appliances where
  washer : ℕ
  total : ℕ
  hW:washer+1490=4275
  hT:total=4275+washer
theorem appliances_washer(m:Appliances):m.washer=2785:=by omega
theorem appliances_solution(m:Appliances):m.total=7060:=by omega
end LemmaWeave.Problems.GSM8K.Sprint0924A08
