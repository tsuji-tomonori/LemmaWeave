import LemmaWeave.Problems.GSM8K.Sprint0924A08Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A08

theorem walk_detour(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Walk):m.detour=6:=LemmaWeave.Problems.GSM8K.Sprint0924A08.walk_detour m
theorem walk_mark_distance(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Walk):m.markDistance=15:=LemmaWeave.Problems.GSM8K.Sprint0924A08.walk_mark_distance m
theorem walk_mark_time(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Walk):m.markTime=5:=LemmaWeave.Problems.GSM8K.Sprint0924A08.walk_mark_time m
theorem walk_chris_time(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Walk):m.chrisTime=3:=LemmaWeave.Problems.GSM8K.Sprint0924A08.walk_chris_time m
theorem walk_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Walk):m.extraTime=2:=LemmaWeave.Problems.GSM8K.Sprint0924A08.walk_solution m
theorem protest_extra(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Protest):m.extra=1:=LemmaWeave.Problems.GSM8K.Sprint0924A08.protest_extra m
theorem protest_second(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Protest):m.second=5:=LemmaWeave.Problems.GSM8K.Sprint0924A08.protest_second m
theorem protest_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Protest):m.total=9:=LemmaWeave.Problems.GSM8K.Sprint0924A08.protest_solution m
theorem pies_needed(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Pies):m.needed=80:=LemmaWeave.Problems.GSM8K.Sprint0924A08.pies_needed m
theorem pies_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Pies):m.buy=30:=LemmaWeave.Problems.GSM8K.Sprint0924A08.pies_solution m
theorem reading_half(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Reading):m.half=250:=LemmaWeave.Problems.GSM8K.Sprint0924A08.reading_half m
theorem reading_first(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Reading):m.first=25:=LemmaWeave.Problems.GSM8K.Sprint0924A08.reading_first m
theorem reading_second(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Reading):m.second=50:=LemmaWeave.Problems.GSM8K.Sprint0924A08.reading_second m
theorem reading_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Reading):m.total=75:=LemmaWeave.Problems.GSM8K.Sprint0924A08.reading_solution m
theorem orchard_month(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Orchard):m.month=120:=LemmaWeave.Problems.GSM8K.Sprint0924A08.orchard_month m
theorem orchard_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Orchard):m.total=350:=LemmaWeave.Problems.GSM8K.Sprint0924A08.orchard_solution m
theorem sales_thursday(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Sales):m.thursday=45:=LemmaWeave.Problems.GSM8K.Sprint0924A08.sales_thursday m
theorem sales_friday(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Sales):m.friday=9:=LemmaWeave.Problems.GSM8K.Sprint0924A08.sales_friday m
theorem sales_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Sales):m.total=69:=LemmaWeave.Problems.GSM8K.Sprint0924A08.sales_solution m
theorem money_conventional(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.MoneyConventional):m.dailyCents=28800:=LemmaWeave.Problems.GSM8K.Sprint0924A08.money_conventional m
theorem money_literal(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.MoneyLiteral):m.dailyCents=34560:=LemmaWeave.Problems.GSM8K.Sprint0924A08.money_literal m
theorem money_solution(c:LemmaWeave.Problems.GSM8K.Sprint0924A08.MoneyConventional)(l:LemmaWeave.Problems.GSM8K.Sprint0924A08.MoneyLiteral):c.dailyCents=28800 ∧ l.dailyCents=34560 ∧ c.dailyCents≠l.dailyCents:=LemmaWeave.Problems.GSM8K.Sprint0924A08.money_solution c l
theorem wipes_total(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Wipes):m.total=720:=LemmaWeave.Problems.GSM8K.Sprint0924A08.wipes_total m
theorem wipes_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Wipes):m.packs=6:=LemmaWeave.Problems.GSM8K.Sprint0924A08.wipes_solution m
theorem seesaw_impossible:¬∃ n:ℕ,60+4*n=40:=LemmaWeave.Problems.GSM8K.Sprint0924A08.seesaw_impossible
theorem seesaw_corrected:40+4*5=60:=LemmaWeave.Problems.GSM8K.Sprint0924A08.seesaw_corrected
theorem seesaw_solution:(¬∃ n:ℕ,60+4*n=40) ∧ 40+4*5=60:=LemmaWeave.Problems.GSM8K.Sprint0924A08.seesaw_solution
theorem basketball_jay(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Basketball):m.jay=10:=LemmaWeave.Problems.GSM8K.Sprint0924A08.basketball_jay m
theorem basketball_pair(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Basketball):m.pair=14:=LemmaWeave.Problems.GSM8K.Sprint0924A08.basketball_pair m
theorem basketball_sean(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Basketball):m.sean=12:=LemmaWeave.Problems.GSM8K.Sprint0924A08.basketball_sean m
theorem basketball_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Basketball):m.total=26:=LemmaWeave.Problems.GSM8K.Sprint0924A08.basketball_solution m
theorem milk_consumed(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Milk):m.consumed=12:=LemmaWeave.Problems.GSM8K.Sprint0924A08.milk_consumed m
theorem milk_remaining(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Milk):m.remaining=4:=LemmaWeave.Problems.GSM8K.Sprint0924A08.milk_remaining m
theorem milk_cooking(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Milk):m.cooking=2:=LemmaWeave.Problems.GSM8K.Sprint0924A08.milk_cooking m
theorem milk_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Milk):m.left=2:=LemmaWeave.Problems.GSM8K.Sprint0924A08.milk_solution m
theorem field_perimeter(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Field):m.perimeter=300:=LemmaWeave.Problems.GSM8K.Sprint0924A08.field_perimeter m
theorem field_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Field):m.total=1800:=LemmaWeave.Problems.GSM8K.Sprint0924A08.field_solution m
theorem practice_total(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Practice):m.available=120:=LemmaWeave.Problems.GSM8K.Sprint0924A08.practice_total m
theorem practice_used(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Practice):m.used=93:=LemmaWeave.Problems.GSM8K.Sprint0924A08.practice_used m
theorem practice_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Practice):m.left=27:=LemmaWeave.Problems.GSM8K.Sprint0924A08.practice_solution m
theorem frisbee_bess_out(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Frisbee):m.bessOut=80:=LemmaWeave.Problems.GSM8K.Sprint0924A08.frisbee_bess_out m
theorem frisbee_bess_total(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Frisbee):m.bessTotal=160:=LemmaWeave.Problems.GSM8K.Sprint0924A08.frisbee_bess_total m
theorem frisbee_holly(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Frisbee):m.holly=40:=LemmaWeave.Problems.GSM8K.Sprint0924A08.frisbee_holly m
theorem frisbee_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Frisbee):m.total=200:=LemmaWeave.Problems.GSM8K.Sprint0924A08.frisbee_solution m
theorem appliances_washer(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Appliances):m.washer=2785:=LemmaWeave.Problems.GSM8K.Sprint0924A08.appliances_washer m
theorem appliances_solution(m:LemmaWeave.Problems.GSM8K.Sprint0924A08.Appliances):m.total=7060:=LemmaWeave.Problems.GSM8K.Sprint0924A08.appliances_solution m

end LemmaWeave.Tests.GSM8KSprint0924A08

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.walk_solution to "work/gsm8k-sprint118-walk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.protest_solution to "work/gsm8k-sprint118-protest-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.pies_solution to "work/gsm8k-sprint118-pies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.reading_solution to "work/gsm8k-sprint118-reading-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.orchard_solution to "work/gsm8k-sprint118-orchard-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.sales_solution to "work/gsm8k-sprint118-sales-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.money_solution to "work/gsm8k-sprint118-money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.wipes_solution to "work/gsm8k-sprint118-wipes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.seesaw_solution to "work/gsm8k-sprint118-seesaw-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.basketball_solution to "work/gsm8k-sprint118-basketball-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.milk_solution to "work/gsm8k-sprint118-milk-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.field_solution to "work/gsm8k-sprint118-field-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.practice_solution to "work/gsm8k-sprint118-practice-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.frisbee_solution to "work/gsm8k-sprint118-frisbee-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A08.appliances_solution to "work/gsm8k-sprint118-appliances-graph.json"
