import LemmaWeave.Problems.GSM8K.Sprint0924A05Models
import LemmaWeave.Audit.Extract

namespace LemmaWeave.Tests.GSM8KSprint0924A05
namespace P := LemmaWeave.Problems.GSM8K.Sprint0924A05

theorem marks_total (m : P.Marks) : m.total = 300 := P.marks_total m
theorem marks_second (m : P.Marks) : m.second = 90 := P.marks_second m
theorem marks_remaining (m : P.Marks) : m.remaining = 130 := P.marks_remaining m
theorem marks_solution (m : P.Marks) : m.third = 65 := P.marks_solution m
theorem lemonade_friends (m : P.Lemonade) : m.friends = 9 := P.lemonade_friends m
theorem lemonade_other_half (m : P.Lemonade) : m.otherHalf = 28 := P.lemonade_other_half m
theorem lemonade_solution (m : P.Lemonade) : m.total = 56 := P.lemonade_solution m
theorem membership_increases (m : P.Membership) : m.increases = 5 := P.membership_increases m
theorem membership_solution (m : P.Membership) : m.sixth = 130 := P.membership_solution m
theorem lambs_brother (m : P.Lambs) : m.brother = 13 := P.lambs_brother m
theorem lambs_solution (m : P.Lambs) : m.total = 23 := P.lambs_solution m
theorem oysters_per_dive (m : P.Oysters) : m.pearlsPerDive = 4 := P.oysters_per_dive m
theorem oysters_solution (m : P.Oysters) : m.dives = 14 := P.oysters_solution m
theorem band_woodwind (m : P.Band) : m.woodwind = 2 * m.brass := P.band_woodwind m
theorem band_percussion (m : P.Band) : m.percussion = 8 * m.brass := P.band_percussion m
theorem band_solution (m : P.Band) : m.brass = 10 := P.band_solution m
theorem typing_words (m : P.Typing) : m.words = 2000 := P.typing_words m
theorem typing_minutes (m : P.Typing) : m.minutes = 40 := P.typing_minutes m
theorem typing_solution (m : P.Typing) : m.waterOunces = 10 := P.typing_solution m
theorem arcade_games (m : P.Arcade) : m.games = 240 := P.arcade_games m
theorem arcade_tokens (m : P.Arcade) : m.tokens = 480 := P.arcade_tokens m
theorem arcade_solution (m : P.Arcade) : m.dollars = 16 := P.arcade_solution m
theorem stickers_steven (m : P.Stickers) : m.steven = 90 := P.stickers_steven m
theorem stickers_terry (m : P.Stickers) : m.terry = 110 := P.stickers_terry m
theorem stickers_solution (m : P.Stickers) : m.total = 230 := P.stickers_solution m
theorem crayons_new (m : P.Crayons) : m.new = 40 := P.crayons_new m
theorem crayons_broken (m : P.Crayons) : m.broken = 24 := P.crayons_broken m
theorem crayons_solution (m : P.Crayons) : m.used = 56 := P.crayons_solution m
theorem tanks_existing (m : P.Tanks) : m.existing = 45 := P.tanks_existing m
theorem tanks_remaining (m : P.Tanks) : m.remaining = 30 := P.tanks_remaining m
theorem tanks_solution (m : P.Tanks) : m.more = 3 := P.tanks_solution m
theorem raise_hourly (m : P.Raise) : m.hourly = 42 := P.raise_hourly m
theorem raise_weekly (m : P.Raise) : m.weekly = 1680 := P.raise_weekly m
theorem raise_expenses (m : P.Raise) : m.expenses = 700 := P.raise_expenses m
theorem raise_solution (m : P.Raise) : m.leftover = 980 := P.raise_solution m
theorem deductions_gross (m : P.Deductions) : m.gross = 420 := P.deductions_gross m
theorem deductions_tax (m : P.Deductions) : m.tax = 84 := P.deductions_tax m
theorem deductions_insurance (m : P.Deductions) : m.insurance = 21 := P.deductions_insurance m
theorem deductions_total (m : P.Deductions) : m.total = 110 := P.deductions_total m
theorem deductions_solution (m : P.Deductions) : m.takeHome = 310 := P.deductions_solution m
theorem games_cost (m : P.Games) : m.cost = 90 := P.games_cost m
theorem games_change (m : P.Games) : m.change = 10 := P.games_change m
theorem games_solution (m : P.Games) : m.bills = 2 := P.games_solution m
theorem cable_sports (m : P.Cable) : m.sports = 9 := P.cable_sports m
theorem cable_solution (m : P.Cable) : m.total = 36 := P.cable_solution m

end LemmaWeave.Tests.GSM8KSprint0924A05

#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.marks_solution to "work/gsm8k-sprint115-marks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.lemonade_solution to "work/gsm8k-sprint115-lemonade-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.membership_solution to "work/gsm8k-sprint115-membership-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.lambs_solution to "work/gsm8k-sprint115-lambs-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.oysters_solution to "work/gsm8k-sprint115-oysters-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.band_solution to "work/gsm8k-sprint115-band-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.typing_solution to "work/gsm8k-sprint115-typing-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.arcade_solution to "work/gsm8k-sprint115-arcade-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.stickers_solution to "work/gsm8k-sprint115-stickers-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.crayons_solution to "work/gsm8k-sprint115-crayons-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.tanks_solution to "work/gsm8k-sprint115-tanks-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.raise_solution to "work/gsm8k-sprint115-raise-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.deductions_solution to "work/gsm8k-sprint115-deductions-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.games_solution to "work/gsm8k-sprint115-games-graph.json"
#lw_dependencies LemmaWeave.Tests.GSM8KSprint0924A05.cable_solution to "work/gsm8k-sprint115-cable-graph.json"
