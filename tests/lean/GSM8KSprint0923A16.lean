import LemmaWeave.Problems.GSM8K.Sprint0923A16Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0923A16
namespace P := LemmaWeave.Problems.GSM8K.Sprint0923A16

theorem allowance_first (m : P.Allowance) : m.first = 40 := P.allowance_first m
theorem allowance_second (m : P.Allowance) : m.second = 36 := P.allowance_second m
theorem allowance_total (m : P.Allowance) : m.total = 76 := P.allowance_total m
theorem allowance_after_clothes (m : P.Allowance) : m.afterClothes = 38 := P.allowance_after_clothes m
theorem allowance_solution (m : P.Allowance) : m.afterGame = 3 := P.allowance_solution m
theorem triangle_remaining (m : P.TriangleAngles) : m.b + m.c = 120 := P.triangle_remaining m
theorem triangle_c (m : P.TriangleAngles) : m.c = 40 := P.triangle_c m
theorem triangle_solution (m : P.TriangleAngles) : m.b = 80 := P.triangle_solution m
theorem library_notebooks (m : P.LibraryItems) : m.notebooks = 30 := P.library_notebooks m
theorem library_pens (m : P.LibraryItems) : m.pens = 80 := P.library_pens m
theorem library_solution (m : P.LibraryItems) : m.total = 110 := P.library_solution m
theorem migration_per_bird (m : P.BirdMigration) : m.perBird = 110 := P.migration_per_bird m
theorem migration_solution (m : P.BirdMigration) : m.combined = 2200 := P.migration_solution m
theorem ages_jeremy_future (m : P.FutureAges) : m.jeremyFuture = 43 := P.ages_jeremy_future m
theorem ages_sebastian_now (m : P.FutureAges) : m.sebastianNow = 44 := P.ages_sebastian_now m
theorem ages_sebastian_future (m : P.FutureAges) : m.sebastianFuture = 47 := P.ages_sebastian_future m
theorem ages_solution (m : P.FutureAges) : m.sophiaFuture = 60 := P.ages_solution m
theorem cookies_given (m : P.CookieBoxes) : m.given = 28 := P.cookies_given m
theorem cookies_solution (m : P.CookieBoxes) : m.left = 17 := P.cookies_solution m
theorem catchup_head_start (m : P.CatchUp) : m.headStartMiles = 5 := P.catchup_head_start m
theorem catchup_speed_gap (m : P.CatchUp) : m.speedGap = 5 := P.catchup_speed_gap m
theorem catchup_solution (m : P.CatchUp) : m.catchUpHours = 1 := P.catchup_solution m
theorem gifts_visitors (m : P.GiftBags) : m.visitors = 90 := P.gifts_visitors m
theorem gifts_made (m : P.GiftBags) : m.made = 30 := P.gifts_made m
theorem gifts_solution (m : P.GiftBags) : m.more = 60 := P.gifts_solution m
theorem weekly_last (m : P.WeeklyReading) : m.lastWeek = 1500 := P.weekly_last m
theorem weekly_this (m : P.WeeklyReading) : m.thisWeek = 3000 := P.weekly_this m
theorem weekly_solution (m : P.WeeklyReading) : m.total = 4500 := P.weekly_solution m
theorem sister_current (m : P.SisterAge) : m.sisterNow = 16 := P.sister_current m
theorem sister_years (m : P.SisterAge) : m.yearsUntil = 40 := P.sister_years m
theorem sister_solution (m : P.SisterAge) : m.emmaThen = 47 := P.sister_solution m
theorem billboard_total (m : P.BillboardAverage) : m.total = 60 := P.billboard_total m
theorem billboard_solution (m : P.BillboardAverage) : m.average = 20 := P.billboard_solution m
theorem speed_skateboard (m : P.RelativeSpeeds) : m.skateboard = 6 := P.speed_skateboard m
theorem speed_running (m : P.RelativeSpeeds) : m.running = 3 := P.speed_running m
theorem speed_solution (m : P.RelativeSpeeds) : m.distance = 6 := P.speed_solution m
theorem berries_one_bird (m : P.BerryEating) : m.oneBirdFourDays = 28 := P.berries_one_bird m
theorem berries_solution (m : P.BerryEating) : m.allBirds = 140 := P.berries_solution m
theorem bananas_remaining (m : P.BananaTree) : m.basketRemaining = 140 := P.bananas_remaining m
theorem bananas_cut (m : P.BananaTree) : m.cut = 210 := P.bananas_cut m
theorem bananas_solution (m : P.BananaTree) : m.initial = 310 := P.bananas_solution m
theorem gold_bag_each (m : P.TreasureGold) : m.bagEach = 50 := P.gold_bag_each m
theorem gold_bags (m : P.TreasureGold) : m.bagTotal = 100 := P.gold_bags m
theorem gold_total (m : P.TreasureGold) : m.total = 200 := P.gold_total m
theorem gold_solution (m : P.TreasureGold) : m.perHour = 25 := P.gold_solution m

end LemmaWeave.Tests.GSM8KSprint0923A16

#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.allowance_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.triangle_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.library_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.migration_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.ages_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.cookies_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.catchup_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.gifts_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.weekly_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.sister_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.billboard_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.speed_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.berries_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.bananas_solution
#print axioms LemmaWeave.Tests.GSM8KSprint0923A16.gold_solution

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.allowance_solution to "work/gsm8k-sprint106-allowance-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.triangle_solution to "work/gsm8k-sprint106-triangle-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.library_solution to "work/gsm8k-sprint106-library-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.migration_solution to "work/gsm8k-sprint106-migration-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.ages_solution to "work/gsm8k-sprint106-ages-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.cookies_solution to "work/gsm8k-sprint106-cookies-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.catchup_solution to "work/gsm8k-sprint106-catchup-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.gifts_solution to "work/gsm8k-sprint106-gifts-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.weekly_solution to "work/gsm8k-sprint106-weekly-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.sister_solution to "work/gsm8k-sprint106-sister-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.billboard_solution to "work/gsm8k-sprint106-billboard-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.speed_solution to "work/gsm8k-sprint106-speed-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.berries_solution to "work/gsm8k-sprint106-berries-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.bananas_solution to "work/gsm8k-sprint106-bananas-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0923A16.gold_solution to "work/gsm8k-sprint106-gold-graph.json"
