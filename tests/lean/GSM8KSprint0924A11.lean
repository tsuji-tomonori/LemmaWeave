import LemmaWeave.Problems.GSM8K.Sprint0924A11Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A11
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A11

theorem haircut_normal (m:P.Haircut) : m.normal=25 := P.haircut_normal m
theorem haircut_special (m:P.Haircut) : m.special=18 := P.haircut_special m
theorem haircut_trendy (m:P.Haircut) : m.trendy=16 := P.haircut_trendy m
theorem haircut_daily (m:P.Haircut) : m.daily=59 := P.haircut_daily m
theorem haircut_solution (m:P.Haircut) : m.weekly=413 := P.haircut_solution m
theorem grounded_extra (m:P.Grounded) : m.extra=12 := P.grounded_extra m
theorem grounded_solution (m:P.Grounded) : m.total=26 := P.grounded_solution m
theorem market_spent (m:P.Market) : m.spent=60 := P.market_spent m
theorem market_solution (m:P.Market) : m.remaining=40 := P.market_solution m
theorem pistachios_unit (m:P.Pistachios) : m.costPerOunce=2 := P.pistachios_unit m
theorem pistachios_daily (m:P.Pistachios) : m.dailyOunces=6 := P.pistachios_daily m
theorem pistachios_daily_cost (m:P.Pistachios) : m.dailyCost=12 := P.pistachios_daily_cost m
theorem pistachios_solution (m:P.Pistachios) : m.weeklyCost=84 := P.pistachios_solution m
theorem wheels_cars (m:P.Wheels) : m.cars=8 := P.wheels_cars m
theorem wheels_bicycles (m:P.Wheels) : m.bicycles=6 := P.wheels_bicycles m
theorem wheels_solution (m:P.Wheels) : m.total=22 := P.wheels_solution m
theorem nes_trade_credit (m:P.NES) : m.tradeCredit=120 := P.nes_trade_credit m
theorem nes_tendered (m:P.NES) : m.tendered=200 := P.nes_tendered m
theorem nes_nonconsole (m:P.NES) : m.nonconsole=40 := P.nes_nonconsole m
theorem nes_solution (m:P.NES) : m.price=160 := P.nes_solution m
theorem jewelry_necklaces (m:P.Jewelry) : m.necklaceCost=28 := P.jewelry_necklaces m
theorem jewelry_rings (m:P.Jewelry) : m.ringCost=120 := P.jewelry_rings m
theorem jewelry_bracelets (m:P.Jewelry) : m.braceletCost=35 := P.jewelry_bracelets m
theorem jewelry_solution (m:P.Jewelry) : m.total=183 := P.jewelry_solution m
theorem charity_donated (m:P.Charity) : m.donated=2000 := P.charity_donated m
theorem charity_solution (m:P.Charity) : m.each=250 := P.charity_solution m
theorem spaghetti_total (m:P.Spaghetti) : m.total=8 := P.spaghetti_total m
theorem spaghetti_solution (m:P.Spaghetti) : m.each=1 := P.spaghetti_solution m
theorem pie_remaining_fraction (m:P.Pie) : 5*m.total=6*1200 := P.pie_remaining_fraction m
theorem pie_total (m:P.Pie) : m.total=1440 := P.pie_total m
theorem pie_solution (m:P.Pie) : m.eaten=240 := P.pie_solution m
theorem bags_combined (m:P.Bags) : m.combined=46 := P.bags_combined m
theorem bags_solution (m:P.Bags) : m.remaining=42 := P.bags_solution m
theorem discount_paid_rate (m:P.Discount) : 92*m.original=100*184 := P.discount_paid_rate m
theorem discount_original (m:P.Discount) : m.original=200 := P.discount_original m
theorem discount_solution (m:P.Discount) : m.saved=16 := P.discount_solution m
theorem classes_frankie (m:P.Classes) : m.frankie=6 := P.classes_frankie m
theorem classes_solution (m:P.Classes) : m.total=9 := P.classes_solution m
theorem height_bill (m:P.Height) : m.bill=36 := P.height_bill m
theorem height_solution (m:P.Height) : m.jan=42 := P.height_solution m
theorem admission_adults (m:P.Admission) : m.adults=44 := P.admission_adults m
theorem admission_children (m:P.Admission) : m.children=14 := P.admission_children m
theorem admission_solution (m:P.Admission) : m.total=58 := P.admission_solution m

end LemmaWeave.Tests.GSM8KSprint0924A11

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.haircut_solution to "work/gsm8k-sprint120-haircut-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.grounded_solution to "work/gsm8k-sprint120-grounded-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.market_solution to "work/gsm8k-sprint120-market-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.pistachios_solution to "work/gsm8k-sprint120-pistachios-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.wheels_solution to "work/gsm8k-sprint120-wheels-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.nes_solution to "work/gsm8k-sprint120-nes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.jewelry_solution to "work/gsm8k-sprint120-jewelry-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.charity_solution to "work/gsm8k-sprint120-charity-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.spaghetti_solution to "work/gsm8k-sprint120-spaghetti-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.pie_solution to "work/gsm8k-sprint120-pie-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.bags_solution to "work/gsm8k-sprint120-bags-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.discount_solution to "work/gsm8k-sprint120-discount-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.classes_solution to "work/gsm8k-sprint120-classes-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.height_solution to "work/gsm8k-sprint120-height-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A11.admission_solution to "work/gsm8k-sprint120-admission-graph.json"
