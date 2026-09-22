import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0922A14

structure Cans where trips roundtrip perTrip total : ℕ
  hTrips : trips * 4 = 28
  hRoundtrip : roundtrip = 10 * 2
  hPerTrip : perTrip = roundtrip + 30
  hTotal : total = perTrip * trips
theorem cans_trips (m : Cans) : m.trips = 7 := by omega
theorem cans_roundtrip (m : Cans) : m.roundtrip = 20 := by rw [m.hRoundtrip]; norm_num
theorem cans_per_trip (m : Cans) : m.perTrip = 50 := by rw [m.hPerTrip, cans_roundtrip m]; norm_num
theorem cans_solution (m : Cans) : m.total = 350 := by rw [m.hTotal, cans_per_trip m, cans_trips m]; norm_num

structure Stickers where silver bronze total each : ℕ
  hSilver : silver = 2 * 50
  hBronze : bronze + 20 = silver
  hTotal : total = 50 + silver + bronze
  hEach : each * 5 = total
theorem stickers_silver (m : Stickers) : m.silver = 100 := by rw [m.hSilver]; norm_num
theorem stickers_bronze (m : Stickers) : m.bronze = 80 := by omega
theorem stickers_total (m : Stickers) : m.total = 230 := by rw [m.hTotal, stickers_silver m, stickers_bronze m]; norm_num
theorem stickers_solution (m : Stickers) : m.each = 46 := by
  have h := m.hEach; rw [stickers_total m] at h; omega

structure Pizza where eaten people : ℕ
  hEaten : eaten + 4 = 16
  hPeople : people * 2 = eaten
theorem pizza_eaten (m : Pizza) : m.eaten = 12 := by omega
theorem pizza_solution (m : Pizza) : m.people = 6 := by
  have hp := m.hPeople
  rw [pizza_eaten m] at hp
  omega

structure Tanning where weekly firstHalf remaining : ℕ
  hWeekly : weekly = 30 * 2
  hFirstHalf : firstHalf = weekly * 2
  hRemaining : remaining + firstHalf = 200
theorem tanning_week (m : Tanning) : m.weekly = 60 := by rw [m.hWeekly]; norm_num
theorem tanning_first_half (m : Tanning) : m.firstHalf = 120 := by rw [m.hFirstHalf, tanning_week m]; norm_num
theorem tanning_solution (m : Tanning) : m.remaining = 80 := by
  have h := m.hRemaining
  rw [tanning_first_half m] at h
  omega

structure Freelance where hourly weekly monthlyGross fica net : ℕ
  hHourly : hourly + 30 = 40
  hWeekly : weekly = hourly * 40
  hMonthly : monthlyGross = weekly * 4
  hFica : fica = 25 * 4
  hNet : net + fica + 400 = monthlyGross
theorem freelance_hourly (m : Freelance) : m.hourly = 10 := by omega
theorem freelance_weekly (m : Freelance) : m.weekly = 400 := by rw [m.hWeekly, freelance_hourly m]; norm_num
theorem freelance_monthly_gross (m : Freelance) : m.monthlyGross = 1600 := by rw [m.hMonthly, freelance_weekly m]; norm_num
theorem freelance_fica (m : Freelance) : m.fica = 100 := by rw [m.hFica]; norm_num
theorem freelance_solution (m : Freelance) : m.net = 1100 := by
  have h := m.hNet
  rw [freelance_monthly_gross m, freelance_fica m] at h
  omega

structure Pens where blue redUnit red totalCents totalDollars : ℕ
  hBlue : blue = 10 * 10
  hRedUnit : redUnit = 2 * 10
  hRed : red = 15 * redUnit
  hTotal : totalCents = blue + red
  hDollars : totalDollars * 100 = totalCents
theorem pens_blue (m : Pens) : m.blue = 100 := by rw [m.hBlue]; norm_num
theorem pens_red_unit (m : Pens) : m.redUnit = 20 := by rw [m.hRedUnit]; norm_num
theorem pens_red (m : Pens) : m.red = 300 := by rw [m.hRed, pens_red_unit m]; norm_num
theorem pens_solution (m : Pens) : m.totalDollars = 4 := by
  have ht := m.hTotal; rw [pens_blue m, pens_red m] at ht
  have hd := m.hDollars
  rw [ht] at hd
  omega

structure Frame where increase wanted smaller remaining : ℕ
  hIncrease : increase * 100 = 60 * 20
  hWanted : wanted = 60 + increase
  hSmaller : smaller * 4 = wanted * 3
  hRemaining : remaining + smaller = 60
theorem frame_increase (m : Frame) : m.increase = 12 := by omega
theorem frame_wanted (m : Frame) : m.wanted = 72 := by rw [m.hWanted, frame_increase m]; norm_num
theorem frame_smaller (m : Frame) : m.smaller = 54 := by
  have h := m.hSmaller; rw [frame_wanted m] at h; omega
theorem frame_solution (m : Frame) : m.remaining = 6 := by
  have h := m.hRemaining
  rw [frame_smaller m] at h
  omega

structure Stamps where notebooks binders total kept give : ℕ
  hNotebooks : notebooks = 4 * 20
  hBinders : binders = 2 * 50
  hTotal : total = notebooks + binders
  hKept : kept * 4 = total
  hGive : give + kept = total
theorem stamps_notebooks (m : Stamps) : m.notebooks = 80 := by rw [m.hNotebooks]; norm_num
theorem stamps_binders (m : Stamps) : m.binders = 100 := by rw [m.hBinders]; norm_num
theorem stamps_total (m : Stamps) : m.total = 180 := by rw [m.hTotal, stamps_notebooks m, stamps_binders m]; norm_num
theorem stamps_kept (m : Stamps) : m.kept = 45 := by
  have h := m.hKept
  rw [stamps_total m] at h
  omega
theorem stamps_solution (m : Stamps) : m.give = 135 := by
  have h := m.hGive
  rw [stamps_total m, stamps_kept m] at h
  omega

structure Necklaces where pieces necklaces friends : ℕ
  hPieces : pieces = 3 * 30
  hNecklaces : necklaces * 10 = pieces
  hFriends : friends + 1 = necklaces
theorem necklaces_pieces (m : Necklaces) : m.pieces = 90 := by rw [m.hPieces]; norm_num
theorem necklaces_count (m : Necklaces) : m.necklaces = 9 := by
  have h := m.hNecklaces
  rw [necklaces_pieces m] at h
  omega
theorem necklaces_solution (m : Necklaces) : m.friends = 8 := by
  have h := m.hFriends
  rw [necklaces_count m] at h
  omega

structure Cows where aaron pair marovich total : ℕ
  hAaron : aaron = 4 * 60
  hPair : pair = aaron + 60
  hMarovich : marovich + 30 = pair
  hTotal : total = pair + marovich
theorem cows_aaron (m : Cows) : m.aaron = 240 := by rw [m.hAaron]; norm_num
theorem cows_pair (m : Cows) : m.pair = 300 := by rw [m.hPair, cows_aaron m]; norm_num
theorem cows_marovich (m : Cows) : m.marovich = 270 := by
  have h := m.hMarovich
  rw [cows_pair m] at h
  omega
theorem cows_solution (m : Cows) : m.total = 570 := by rw [m.hTotal, cows_pair m, cows_marovich m]; norm_num

structure Maddie where episodeMinutes total friday known weekend : ℕ
  hTotal : total = 8 * episodeMinutes
  hFriday : friday = 2 * episodeMinutes
  hKnown : known = 138 + 21 + friday
  hWeekend : weekend + known = total
theorem maddie_total_exact (m : Maddie) (hExact : m.episodeMinutes = 44) : m.total = 352 := by rw [m.hTotal, hExact]; norm_num
theorem maddie_friday_exact (m : Maddie) (hExact : m.episodeMinutes = 44) : m.friday = 88 := by rw [m.hFriday, hExact]; norm_num
theorem maddie_known_exact (m : Maddie) (hExact : m.episodeMinutes = 44) : m.known = 247 := by
  rw [m.hKnown, maddie_friday_exact m hExact]; norm_num
theorem maddie_counterexample : ∃ m : Maddie, m.episodeMinutes = 43 ∧ m.weekend = 99 := by
  refine ⟨{ episodeMinutes := 43, total := 344, friday := 86, known := 245, weekend := 99,
    hTotal := by norm_num, hFriday := by norm_num, hKnown := by norm_num, hWeekend := by norm_num }, rfl, rfl⟩
theorem maddie_solution (m : Maddie) (hExact : m.episodeMinutes = 44) : m.weekend = 105 := by
  have ht := maddie_total_exact m hExact
  have hk := maddie_known_exact m hExact
  omega

structure NailsDry where color total : ℕ
  hColor : color = 3 * 2
  hTotal : total = 2 + color + 5
theorem nails_dry_color (m : NailsDry) : m.color = 6 := by rw [m.hColor]; norm_num
theorem nails_dry_solution (m : NailsDry) : m.total = 13 := by rw [m.hTotal, nails_dry_color m]; norm_num

structure Roommates where fixed total groceries : ℕ
  hFixed : fixed = 1100 + 114
  hTotal : total = 757 * 2
  hGroceries : groceries + fixed = total
theorem roommates_fixed (m : Roommates) : m.fixed = 1214 := by rw [m.hFixed]; norm_num
theorem roommates_total (m : Roommates) : m.total = 1514 := by rw [m.hTotal]; norm_num
theorem roommates_solution (m : Roommates) : m.groceries = 300 := by
  have h := m.hGroceries
  rw [roommates_fixed m, roommates_total m] at h
  omega

structure Running where billyThirds tiffanyThirds saturdayThirds : ℕ
  hBilly : billyThirds = 6 * 3
  hTiffany : tiffanyThirds = 3 * 2 * 3 + 3
  hTie : billyThirds + saturdayThirds = tiffanyThirds
theorem running_billy_before (m : Running) : m.billyThirds = 18 := by rw [m.hBilly]; norm_num
theorem running_tiffany (m : Running) : m.tiffanyThirds = 21 := by rw [m.hTiffany]; norm_num
theorem running_solution (m : Running) : m.saturdayThirds = 3 := by
  have h := m.hTie
  rw [running_billy_before m, running_tiffany m] at h
  omega

structure Muffins where melissa pair tiffany total revenue : ℕ
  hMelissa : melissa = 4 * 30
  hPair : pair = 30 + melissa
  hTiffany : tiffany * 2 = pair
  hTotal : total = pair + tiffany
  hRevenue : revenue = total * 4
theorem muffins_melissa (m : Muffins) : m.melissa = 120 := by rw [m.hMelissa]; norm_num
theorem muffins_pair (m : Muffins) : m.pair = 150 := by rw [m.hPair, muffins_melissa m]; norm_num
theorem muffins_tiffany (m : Muffins) : m.tiffany = 75 := by
  have h := m.hTiffany
  rw [muffins_pair m] at h
  omega
theorem muffins_total (m : Muffins) : m.total = 225 := by rw [m.hTotal, muffins_pair m, muffins_tiffany m]; norm_num
theorem muffins_solution (m : Muffins) : m.revenue = 900 := by rw [m.hRevenue, muffins_total m]; norm_num

end LemmaWeave.Problems.GSM8K.Sprint0922A14
