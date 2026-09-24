import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0924A11
structure Haircut where normal special trendy daily weekly : ℕ; hN:normal=5*5; hS:special=6*3; hT:trendy=8*2; hD:daily=normal+special+trendy; hW:weekly=daily*7
theorem haircut_normal (m:Haircut) : m.normal=25 := by omega
theorem haircut_special (m:Haircut) : m.special=18 := by omega
theorem haircut_trendy (m:Haircut) : m.trendy=16 := by omega
theorem haircut_daily (m:Haircut) : m.daily=59 := by omega
theorem haircut_solution (m:Haircut) : m.weekly=413 := by omega
structure Grounded where extra total : ℕ; hE:extra=4*3; hT:total=14+extra
theorem grounded_extra (m:Grounded) : m.extra=12 := by omega
theorem grounded_solution (m:Grounded) : m.total=26 := by omega
structure Market where spent remaining : ℕ; hS:spent=25+35; hR:remaining+spent=100
theorem market_spent (m:Market) : m.spent=60 := by omega
theorem market_solution (m:Market) : m.remaining=40 := by omega
structure Pistachios where costPerOunce dailyOunces dailyCost weeklyCost : ℕ; hU:5*costPerOunce=10; hO:5*dailyOunces=30; hD:dailyCost=dailyOunces*costPerOunce; hW:weeklyCost=dailyCost*7
theorem pistachios_unit (m:Pistachios) : m.costPerOunce=2 := by omega
theorem pistachios_daily (m:Pistachios) : m.dailyOunces=6 := by omega
theorem pistachios_daily_cost (m:Pistachios) : m.dailyCost=12 := by omega
theorem pistachios_solution (m:Pistachios) : m.weeklyCost=84 := by omega
structure Wheels where cars bicycles total : ℕ; hC:cars=4*2; hB:bicycles=2*3; hT:total=cars+4+bicycles+3+1
theorem wheels_cars (m:Wheels) : m.cars=8 := by omega
theorem wheels_bicycles (m:Wheels) : m.bicycles=6 := by omega
theorem wheels_solution (m:Wheels) : m.total=22 := by omega
structure NES where tradeCredit tendered nonconsole price : ℕ; hC:5*tradeCredit=4*150; hT:tendered=tradeCredit+80; hN:nonconsole=10+30; hP:price+nonconsole=tendered
theorem nes_trade_credit (m:NES) : m.tradeCredit=120 := by omega
theorem nes_tendered (m:NES) : m.tendered=200 := by omega
theorem nes_nonconsole (m:NES) : m.nonconsole=40 := by omega
theorem nes_solution (m:NES) : m.price=160 := by omega
structure Jewelry where necklaceCost ringCost braceletCost total : ℕ; hN:necklaceCost=(12-5)*4; hR:ringCost=(30-18)*10; hB:braceletCost=(15-8)*5; hT:total=necklaceCost+ringCost+braceletCost
theorem jewelry_necklaces (m:Jewelry) : m.necklaceCost=28 := by omega
theorem jewelry_rings (m:Jewelry) : m.ringCost=120 := by omega
theorem jewelry_bracelets (m:Jewelry) : m.braceletCost=35 := by omega
theorem jewelry_solution (m:Jewelry) : m.total=183 := by omega
structure Charity where donated each : ℕ; hD:5*donated=4*2500; hE:8*each=donated
theorem charity_donated (m:Charity) : m.donated=2000 := by omega
theorem charity_solution (m:Charity) : m.each=250 := by omega
structure Spaghetti where total each : ℕ; hT:total=1+2+5; hE:8*each=total
theorem spaghetti_total (m:Spaghetti) : m.total=8 := by omega
theorem spaghetti_solution (m:Spaghetti) : m.each=1 := by omega
structure Pie where total eaten : ℕ; hR:5*total=6*1200; hE:eaten+1200=total
theorem pie_remaining_fraction (m:Pie) : 5*m.total=6*1200 := m.hR
theorem pie_total (m:Pie) : m.total=1440 := by omega
theorem pie_solution (m:Pie) : m.eaten=240 := by omega
structure Bags where combined remaining : ℕ; hC:combined=16+30; hR:remaining+4=combined
theorem bags_combined (m:Bags) : m.combined=46 := by omega
theorem bags_solution (m:Bags) : m.remaining=42 := by omega
structure Discount where original saved : ℕ; hP:92*original=100*184; hS:saved+184=original
theorem discount_paid_rate (m:Discount) : 92*m.original=100*184 := m.hP
theorem discount_original (m:Discount) : m.original=200 := by omega
theorem discount_solution (m:Discount) : m.saved=16 := by omega
structure Classes where frankie total : ℕ; hF:frankie=2*3; hT:total=3+frankie
theorem classes_frankie (m:Classes) : m.frankie=6 := by omega
theorem classes_solution (m:Classes) : m.total=9 := by omega
structure Height where bill jan : ℕ; hB:2*bill=72; hJ:jan=bill+6
theorem height_bill (m:Height) : m.bill=36 := by omega
theorem height_solution (m:Height) : m.jan=42 := by omega
structure Admission where adults children total : ℕ; hA:adults=22*2; hC:children=7*2; hT:total=adults+children
theorem admission_adults (m:Admission) : m.adults=44 := by omega
theorem admission_children (m:Admission) : m.children=14 := by omega
theorem admission_solution (m:Admission) : m.total=58 := by omega
end LemmaWeave.Problems.GSM8K.Sprint0924A11
