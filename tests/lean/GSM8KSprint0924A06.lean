import LemmaWeave.Problems.GSM8K.Sprint0924A06Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A06
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A06

theorem ages_alma (m : P.Ages) : m.alma = 20 := P.ages_alma m
theorem ages_sum (m : P.Ages) : m.sum = 80 := P.ages_sum m
theorem ages_solution (m : P.Ages) : m.score = 40 := P.ages_solution m
theorem oysters_units (m : P.Oysters) : m.units = 24 := P.oysters_units m
theorem oysters_rate (m : P.Oysters) : m.rate = 10 := P.oysters_rate m
theorem oysters_solution (m : P.Oysters) : m.total = 240 := P.oysters_solution m
theorem salads_angel (m : P.Salads) : m.angel = 400 := P.salads_angel m
theorem salads_solution (m : P.Salads) : m.total = 600 := P.salads_solution m
theorem soda_milliliters (m : P.Soda) : m.milliliters = 2000 := P.soda_milliliters m
theorem soda_solution (m : P.Soda) : m.days = 4 := P.soda_solution m
theorem sisters_difference (m : P.Sisters) : m.difference = 13 := P.sisters_difference m
theorem sisters_equation (m : P.Sisters) : 18 + m.years = 2 * (5 + m.years) := P.sisters_equation m
theorem sisters_solution (m : P.Sisters) : m.years = 8 := P.sisters_solution m
theorem balloons_initial (m : P.Balloons) : m.initial = 35 := P.balloons_initial m
theorem balloons_burst (m : P.Balloons) : m.burst = 5 := P.balloons_burst m
theorem balloons_solution (m : P.Balloons) : m.left = 30 := P.balloons_solution m
theorem buses_daily (m : P.Buses) : m.daily = 24 := P.buses_daily m
theorem buses_solution (m : P.Buses) : m.total = 120 := P.buses_solution m
theorem pads_skates (m : P.Pads) : m.skates = 75 := P.pads_skates m
theorem pads_solution (m : P.Pads) : m.pads = 50 := P.pads_solution m
theorem temperature_week (m : P.Temperature) : m.week = 420 := P.temperature_week m
theorem temperature_first3 (m : P.Temperature) : m.first3 = 120 := P.temperature_first3 m
theorem temperature_next2 (m : P.Temperature) : m.next2 = 160 := P.temperature_next2 m
theorem temperature_first5 (m : P.Temperature) : m.first5 = 280 := P.temperature_first5 m
theorem temperature_solution (m : P.Temperature) : m.remaining = 140 := P.temperature_solution m
theorem rings_old (m : P.Rings) : m.old = 100 := P.rings_old m
theorem rings_total (m : P.Rings) : m.total = 300 := P.rings_total m
theorem rings_sold (m : P.Rings) : m.sold = 225 := P.rings_sold m
theorem rings_after_sale (m : P.Rings) : m.afterSale = 75 := P.rings_after_sale m
theorem rings_after_buy (m : P.Rings) : m.afterBuy = 375 := P.rings_after_buy m
theorem rings_solution (m : P.Rings) : m.final = 225 := P.rings_solution m
theorem chips_known (m : P.Chips) : m.known = 7 := P.chips_known m
theorem chips_solution (m : P.Chips) : m.emily = 3 := P.chips_solution m
theorem fruit_lemons (m : P.Fruit) : m.lemons = 30 := P.fruit_lemons m
theorem fruit_avocados (m : P.Fruit) : m.avocados = 60 := P.fruit_avocados m
theorem fruit_solution (m : P.Fruit) : m.total = 90 := P.fruit_solution m
theorem quiz_kelsey (m : P.Quiz) : m.kelsey = 43 := P.quiz_kelsey m
theorem quiz_solution (m : P.Quiz) : m.martin = 40 := P.quiz_solution m
theorem library_tuesday (m : P.Library) : m.tuesday = 130 := P.library_tuesday m
theorem library_wednesday (m : P.Library) : m.wednesday = 165 := P.library_wednesday m
theorem library_solution (m : P.Library) : m.current = 150 := P.library_solution m
theorem parking_capacity (m : P.Parking) : m.capacity = 85 := P.parking_capacity m
theorem parking_solution (m : P.Parking) : m.available = 62 := P.parking_solution m

end LemmaWeave.Tests.GSM8KSprint0924A06

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.ages_solution to "work/gsm8k-sprint116-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.oysters_solution to "work/gsm8k-sprint116-oysters-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.salads_solution to "work/gsm8k-sprint116-salads-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.soda_solution to "work/gsm8k-sprint116-soda-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.sisters_solution to "work/gsm8k-sprint116-sisters-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.balloons_solution to "work/gsm8k-sprint116-balloons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.buses_solution to "work/gsm8k-sprint116-buses-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.pads_solution to "work/gsm8k-sprint116-pads-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.temperature_solution to "work/gsm8k-sprint116-temperature-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.rings_solution to "work/gsm8k-sprint116-rings-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.chips_solution to "work/gsm8k-sprint116-chips-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.fruit_solution to "work/gsm8k-sprint116-fruit-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.quiz_solution to "work/gsm8k-sprint116-quiz-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.library_solution to "work/gsm8k-sprint116-library-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A06.parking_solution to "work/gsm8k-sprint116-parking-graph.json"
