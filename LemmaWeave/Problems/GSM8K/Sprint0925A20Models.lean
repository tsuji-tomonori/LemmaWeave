import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0925A20
structure Hotel where gross paid : ℕ; hg : gross = 3 * 250; hp : paid + 100 = gross
theorem hotel_gross (m : Hotel) : m.gross = 750 := by cases m; omega
theorem hotel_discount (m : Hotel) : m.paid + 100 = 750 := by cases m; omega
theorem hotel_solution (m : Hotel) : m.paid = 650 := by cases m; omega
structure SandwichCake where favorable total percent : ℕ; hf : favorable = 3; ht : total = 5; hp : total * percent = favorable * 100
theorem sandwich_cake_favorable (m : SandwichCake) : m.favorable = 3 ∧ m.total = 5 := by cases m; omega
theorem sandwich_cake_reference_is_wrong : (12 : ℕ) ≠ 60 := by norm_num
theorem sandwich_cake_solution (m : SandwichCake) : m.percent = 60 := by cases m; omega
structure Rachel where patty rachel : ℕ; hp : 3 * patty = 12; hr : rachel = 2 * patty + 5
theorem rachel_patty (m : Rachel) : m.patty = 4 := by cases m; omega
theorem rachel_solution (m : Rachel) : m.rachel = 13 := by cases m; omega
structure Sentence where base increase total : ℕ; hb : 5000 * base = 40000; hi : 4 * increase = base; ht : total = base + increase + 2
theorem sentence_base (m : Sentence) : m.base = 8 := by cases m; omega
theorem sentence_increase (m : Sentence) : m.increase = 2 := by cases m; omega
theorem sentence_solution (m : Sentence) : m.total = 12 := by cases m; omega
structure Lollipops where totalCents unit shared paid : ℕ; ht : totalCents = 3 * 100; hu : 12 * unit = totalCents; hs : 4 * shared = 12; hp : paid = shared * unit
theorem lollipops_total (m : Lollipops) : m.totalCents = 300 := by cases m; omega
theorem lollipops_unit (m : Lollipops) : m.unit = 25 := by cases m; omega
theorem lollipops_shared (m : Lollipops) : m.shared = 3 := by cases m; omega
theorem lollipops_solution (m : Lollipops) : m.paid = 75 := by cases m; omega
structure CarWash where daily total : ℕ; hd : daily = 80 * 5; ht : total = 5 * daily
theorem carwash_daily (m : CarWash) : m.daily = 400 := by cases m; omega
theorem carwash_solution (m : CarWash) : m.total = 2000 := by cases m; omega
structure Wages where second first : ℕ; hs : second = 12 * 9; hf : first + second = 160
theorem wages_second (m : Wages) : m.second = 108 := by cases m; omega
theorem wages_solution (m : Wages) : m.first = 52 := by cases m; omega
structure Points where eric mark samanta total : ℕ; he : eric = 6; hm : 2 * mark = 3 * eric; hs : samanta = mark + 8; ht : total = eric + mark + samanta
theorem points_eric (m : Points) : m.eric = 6 := by cases m; omega
theorem points_mark (m : Points) : m.mark = 9 := by cases m; omega
theorem points_samanta (m : Points) : m.samanta = 17 := by cases m; omega
theorem points_solution (m : Points) : m.total = 32 := by cases m; omega
structure CornChips where chipsCost remaining packets : ℕ; hc : chipsCost = 15 * 200; hr : remaining + chipsCost = 4500; hp : 150 * packets = remaining
theorem corn_chips_cost (m : CornChips) : m.chipsCost = 3000 := by cases m; omega
theorem corn_chips_remaining (m : CornChips) : m.remaining = 1500 := by cases m; omega
theorem corn_chips_solution (m : CornChips) : m.packets = 10 := by cases m; omega
structure Robes where needed cost : ℕ; hn : needed + 12 = 30; hc : cost = needed * 2
theorem robes_needed (m : Robes) : m.needed = 18 := by cases m; omega
theorem robes_solution (m : Robes) : m.cost = 36 := by cases m; omega
structure Mangoes where sold remaining each : ℕ; hs : 2 * sold = 560; hr : remaining + sold = 560; he : 8 * each = remaining
theorem mangoes_remaining (m : Mangoes) : m.remaining = 280 := by cases m; omega
theorem mangoes_solution (m : Mangoes) : m.each = 35 := by cases m; omega
structure Stitches where hemQuarterInches stitches minutes : ℕ; hh : hemQuarterInches = 3 * 12 * 4; hs : stitches = hemQuarterInches; hm : stitches = 24 * minutes
theorem stitches_length (m : Stitches) : m.hemQuarterInches = 144 := by cases m; omega
theorem stitches_count (m : Stitches) : m.stitches = 144 := by cases m; omega
theorem stitches_solution (m : Stitches) : m.minutes = 6 := by cases m; omega
structure Cassettes where tapes spent remaining : ℕ; ht : tapes = 2 * 9; hs : spent = tapes + 25; hr : remaining + spent = 50
theorem cassettes_tapes (m : Cassettes) : m.tapes = 18 := by cases m; omega
theorem cassettes_spent (m : Cassettes) : m.spent = 43 := by cases m; omega
theorem cassettes_solution (m : Cassettes) : m.remaining = 7 := by cases m; omega
structure Beach where first second total : ℕ; hf : first + 3 = 24; hs : second + 5 = 20; ht : total = first + second + 18
theorem beach_first (m : Beach) : m.first = 21 := by cases m; omega
theorem beach_second (m : Beach) : m.second = 15 := by cases m; omega
theorem beach_solution (m : Beach) : m.total = 54 := by cases m; omega
structure Swimming where butterfly backstroke weekly monthly : ℕ; hf : butterfly = 3 * 4; hb : backstroke = 2 * 6; hw : weekly = butterfly + backstroke; hm : monthly = 4 * weekly
theorem swimming_butterfly (m : Swimming) : m.butterfly = 12 := by cases m; omega
theorem swimming_backstroke (m : Swimming) : m.backstroke = 12 := by cases m; omega
theorem swimming_weekly (m : Swimming) : m.weekly = 24 := by cases m; omega
theorem swimming_solution (m : Swimming) : m.monthly = 96 := by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0925A20
