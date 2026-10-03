import LemmaWeave.Problems.GSM8K.Sprint0922A17Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0922A17
open LemmaWeave.Problems.GSM8K.Sprint0922A17

theorem shopping_cost (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Shopping) : m.totalCost = 18 := LemmaWeave.Problems.GSM8K.Sprint0922A17.shopping_cost m
theorem shopping_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Shopping) : m.remaining = 8 := LemmaWeave.Problems.GSM8K.Sprint0922A17.shopping_solution m
theorem minnows_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Minnows) : m.total = 50 := LemmaWeave.Problems.GSM8K.Sprint0922A17.minnows_total m
theorem minnows_white_percent : 100 - 40 - 30 = 30 := LemmaWeave.Problems.GSM8K.Sprint0922A17.minnows_white_percent
theorem minnows_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Minnows) : m.white = 15 := LemmaWeave.Problems.GSM8K.Sprint0922A17.minnows_solution m
theorem heights_short (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Heights) : m.short = 160 := LemmaWeave.Problems.GSM8K.Sprint0922A17.heights_short m
theorem heights_extremes (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Heights) : m.extremes = 250 := LemmaWeave.Problems.GSM8K.Sprint0922A17.heights_extremes m
theorem heights_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Heights) : m.average = 150 := LemmaWeave.Problems.GSM8K.Sprint0922A17.heights_solution m
theorem country_drive_done (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.CountryDrive) : m.driven = 1489 := LemmaWeave.Problems.GSM8K.Sprint0922A17.country_drive_done m
theorem country_drive_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.CountryDrive) : m.remaining = 6716 := LemmaWeave.Problems.GSM8K.Sprint0922A17.country_drive_solution m
theorem cookies_daily (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Cookies) : m.daily = 39 := LemmaWeave.Problems.GSM8K.Sprint0922A17.cookies_daily m
theorem cookies_monthly (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Cookies) : m.monthly = 780 := LemmaWeave.Problems.GSM8K.Sprint0922A17.cookies_monthly m
theorem cookies_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Cookies) : m.total = 2340 := LemmaWeave.Problems.GSM8K.Sprint0922A17.cookies_solution m
theorem paint_castle (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Paint) : m.castle = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A17.paint_castle m
theorem paint_used (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Paint) : m.used = 8 := LemmaWeave.Problems.GSM8K.Sprint0922A17.paint_used m
theorem paint_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Paint) : m.sun = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A17.paint_solution m
theorem walking_after_bus (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Walking) : m.afterBus = 72 := LemmaWeave.Problems.GSM8K.Sprint0922A17.walking_after_bus m
theorem walking_bikes (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Walking) : m.bikes = 45 := LemmaWeave.Problems.GSM8K.Sprint0922A17.walking_bikes m
theorem walking_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Walking) : m.walking = 27 := LemmaWeave.Problems.GSM8K.Sprint0922A17.walking_solution m
theorem lifting_start (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Lifting) : m.start = 60 := LemmaWeave.Problems.GSM8K.Sprint0922A17.lifting_start m
theorem lifting_progress (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Lifting) : m.progress = 70 := LemmaWeave.Problems.GSM8K.Sprint0922A17.lifting_progress m
theorem lifting_peak (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Lifting) : m.peak = 150 := LemmaWeave.Problems.GSM8K.Sprint0922A17.lifting_peak m
theorem lifting_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.Lifting) : m.increase = 90 := LemmaWeave.Problems.GSM8K.Sprint0922A17.lifting_solution m
theorem jean_money_jane (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.JeanMoney) : m.jane = 19 := LemmaWeave.Problems.GSM8K.Sprint0922A17.jean_money_jane m
theorem jean_money_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.JeanMoney) : m.jean = 57 := LemmaWeave.Problems.GSM8K.Sprint0922A17.jean_money_solution m
theorem seed_packets_rate (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.SeedPackets) : m.rate = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A17.seed_packets_rate m
theorem seed_packets_total (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.SeedPackets) : m.totalPackets = 4 := LemmaWeave.Problems.GSM8K.Sprint0922A17.seed_packets_total m
theorem seed_packets_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.SeedPackets) : m.more = 1 := LemmaWeave.Problems.GSM8K.Sprint0922A17.seed_packets_solution m
theorem hiking_water_first (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.HikingWater) : m.first = 1 := LemmaWeave.Problems.GSM8K.Sprint0922A17.hiking_water_first m
theorem hiking_water_after_first (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.HikingWater) : m.afterFirst = 3 := LemmaWeave.Problems.GSM8K.Sprint0922A17.hiking_water_after_first m
theorem hiking_water_second (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.HikingWater) : m.second = 2 := LemmaWeave.Problems.GSM8K.Sprint0922A17.hiking_water_second m
theorem hiking_water_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.HikingWater) : m.final = 1 := LemmaWeave.Problems.GSM8K.Sprint0922A17.hiking_water_solution m
theorem micah_water_afternoon (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.MicahWater) : m.afternoonHalf = 9 := LemmaWeave.Problems.GSM8K.Sprint0922A17.micah_water_afternoon m
theorem micah_water_total_half (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.MicahWater) : m.totalHalf = 12 := LemmaWeave.Problems.GSM8K.Sprint0922A17.micah_water_total_half m
theorem micah_water_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.MicahWater) : m.liters = 6 := LemmaWeave.Problems.GSM8K.Sprint0922A17.micah_water_solution m
theorem road_trip_second (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.RoadTrip) : m.second = 150 := LemmaWeave.Problems.GSM8K.Sprint0922A17.road_trip_second m
theorem road_trip_first_two (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.RoadTrip) : m.firstTwo = 350 := LemmaWeave.Problems.GSM8K.Sprint0922A17.road_trip_first_two m
theorem road_trip_third (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.RoadTrip) : m.third = 175 := LemmaWeave.Problems.GSM8K.Sprint0922A17.road_trip_third m
theorem road_trip_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.RoadTrip) : m.total = 525 := LemmaWeave.Problems.GSM8K.Sprint0922A17.road_trip_solution m
theorem paul_pay_gross (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.PaulPay) : m.gross = 50000 := LemmaWeave.Problems.GSM8K.Sprint0922A17.paul_pay_gross m
theorem paul_pay_after_tax (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.PaulPay) : m.afterTax = 40000 := LemmaWeave.Problems.GSM8K.Sprint0922A17.paul_pay_after_tax m
theorem paul_pay_gummy (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.PaulPay) : m.gummy = 6000 := LemmaWeave.Problems.GSM8K.Sprint0922A17.paul_pay_gummy m
theorem paul_pay_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.PaulPay) : m.left = 34000 := LemmaWeave.Problems.GSM8K.Sprint0922A17.paul_pay_solution m
theorem knife_sales_buyers (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.KnifeSales) : m.buyers = 10 := LemmaWeave.Problems.GSM8K.Sprint0922A17.knife_sales_buyers m
theorem knife_sales_each (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.KnifeSales) : m.each = 5 := LemmaWeave.Problems.GSM8K.Sprint0922A17.knife_sales_each m
theorem knife_sales_cheap (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.KnifeSales) : m.cheap = 250 := LemmaWeave.Problems.GSM8K.Sprint0922A17.knife_sales_cheap m
theorem knife_sales_expensive (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.KnifeSales) : m.expensive = 750 := LemmaWeave.Problems.GSM8K.Sprint0922A17.knife_sales_expensive m
theorem knife_sales_daily (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.KnifeSales) : m.daily = 1000 := LemmaWeave.Problems.GSM8K.Sprint0922A17.knife_sales_daily m
theorem knife_sales_solution (m : LemmaWeave.Problems.GSM8K.Sprint0922A17.KnifeSales) : m.weekly = 5000 := LemmaWeave.Problems.GSM8K.Sprint0922A17.knife_sales_solution m

end LemmaWeave.Tests.GSM8KSprint0922A17

#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.cookies_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.country_drive_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.heights_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.hiking_water_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.jean_money_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.knife_sales_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.lifting_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.micah_water_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.minnows_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.paint_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.paul_pay_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.road_trip_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.seed_packets_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.shopping_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0922A17.walking_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.cookies_solution to "work/gsm8k-sprint88-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.country_drive_solution to "work/gsm8k-sprint88-country_drive-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.heights_solution to "work/gsm8k-sprint88-heights-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.hiking_water_solution to "work/gsm8k-sprint88-hiking_water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.jean_money_solution to "work/gsm8k-sprint88-jean_money-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.knife_sales_solution to "work/gsm8k-sprint88-knife_sales-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.lifting_solution to "work/gsm8k-sprint88-lifting-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.micah_water_solution to "work/gsm8k-sprint88-micah_water-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.minnows_solution to "work/gsm8k-sprint88-minnows-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.paint_solution to "work/gsm8k-sprint88-paint-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.paul_pay_solution to "work/gsm8k-sprint88-paul_pay-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.road_trip_solution to "work/gsm8k-sprint88-road_trip-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.seed_packets_solution to "work/gsm8k-sprint88-seed_packets-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.shopping_solution to "work/gsm8k-sprint88-shopping-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0922A17.walking_solution to "work/gsm8k-sprint88-walking-graph.json"
