import LemmaWeave.Problems.GSM8K.Sprint0924A08Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A08
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A08

theorem walk_detour(m:P.Walk):m.detour=6:=P.walk_detour m
theorem walk_mark_distance(m:P.Walk):m.markDistance=15:=P.walk_mark_distance m
theorem walk_mark_time(m:P.Walk):m.markTime=5:=P.walk_mark_time m
theorem walk_chris_time(m:P.Walk):m.chrisTime=3:=P.walk_chris_time m
theorem walk_solution(m:P.Walk):m.extraTime=2:=P.walk_solution m
theorem protest_extra(m:P.Protest):m.extra=1:=P.protest_extra m
theorem protest_second(m:P.Protest):m.second=5:=P.protest_second m
theorem protest_solution(m:P.Protest):m.total=9:=P.protest_solution m
theorem pies_needed(m:P.Pies):m.needed=80:=P.pies_needed m
theorem pies_solution(m:P.Pies):m.buy=30:=P.pies_solution m
theorem reading_half(m:P.Reading):m.half=250:=P.reading_half m
theorem reading_first(m:P.Reading):m.first=25:=P.reading_first m
theorem reading_second(m:P.Reading):m.second=50:=P.reading_second m
theorem reading_solution(m:P.Reading):m.total=75:=P.reading_solution m
theorem orchard_month(m:P.Orchard):m.month=120:=P.orchard_month m
theorem orchard_solution(m:P.Orchard):m.total=350:=P.orchard_solution m
theorem sales_thursday(m:P.Sales):m.thursday=45:=P.sales_thursday m
theorem sales_friday(m:P.Sales):m.friday=9:=P.sales_friday m
theorem sales_solution(m:P.Sales):m.total=69:=P.sales_solution m
theorem money_conventional(m:P.MoneyConventional):m.dailyCents=28800:=P.money_conventional m
theorem money_literal(m:P.MoneyLiteral):m.dailyCents=34560:=P.money_literal m
theorem money_solution(c:P.MoneyConventional)(l:P.MoneyLiteral):c.dailyCents=28800 ∧ l.dailyCents=34560 ∧ c.dailyCents≠l.dailyCents:=P.money_solution c l
theorem wipes_total(m:P.Wipes):m.total=720:=P.wipes_total m
theorem wipes_solution(m:P.Wipes):m.packs=6:=P.wipes_solution m
theorem seesaw_impossible:¬∃ n:ℕ,60+4*n=40:=P.seesaw_impossible
theorem seesaw_corrected:40+4*5=60:=P.seesaw_corrected
theorem seesaw_solution:(¬∃ n:ℕ,60+4*n=40) ∧ 40+4*5=60:=P.seesaw_solution
theorem basketball_jay(m:P.Basketball):m.jay=10:=P.basketball_jay m
theorem basketball_pair(m:P.Basketball):m.pair=14:=P.basketball_pair m
theorem basketball_sean(m:P.Basketball):m.sean=12:=P.basketball_sean m
theorem basketball_solution(m:P.Basketball):m.total=26:=P.basketball_solution m
theorem milk_consumed(m:P.Milk):m.consumed=12:=P.milk_consumed m
theorem milk_remaining(m:P.Milk):m.remaining=4:=P.milk_remaining m
theorem milk_cooking(m:P.Milk):m.cooking=2:=P.milk_cooking m
theorem milk_solution(m:P.Milk):m.left=2:=P.milk_solution m
theorem field_perimeter(m:P.Field):m.perimeter=300:=P.field_perimeter m
theorem field_solution(m:P.Field):m.total=1800:=P.field_solution m
theorem practice_total(m:P.Practice):m.available=120:=P.practice_total m
theorem practice_used(m:P.Practice):m.used=93:=P.practice_used m
theorem practice_solution(m:P.Practice):m.left=27:=P.practice_solution m
theorem frisbee_bess_out(m:P.Frisbee):m.bessOut=80:=P.frisbee_bess_out m
theorem frisbee_bess_total(m:P.Frisbee):m.bessTotal=160:=P.frisbee_bess_total m
theorem frisbee_holly(m:P.Frisbee):m.holly=40:=P.frisbee_holly m
theorem frisbee_solution(m:P.Frisbee):m.total=200:=P.frisbee_solution m
theorem appliances_washer(m:P.Appliances):m.washer=2785:=P.appliances_washer m
theorem appliances_solution(m:P.Appliances):m.total=7060:=P.appliances_solution m

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
