import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A19

structure Flowers where firstSum total : ℕ
  hFirst : firstSum = 1491 + 3025
  hTotal : total = firstSum + 1768
theorem flowers_first (m : Flowers) : m.firstSum = 4516 := by cases m; omega
theorem flowers_solution (m : Flowers) : m.total = 6284 := by
  have h := flowers_first m
  cases m; omega

-- Minutes retain the source's approximate first duration without silently rounding it.
structure DriveExact where first second third total : ℕ
  hFirst : 60 * first = 80 * 360
  hSecond : second = 60 * 4
  hThird : third = 40 * 2
  hTotal : total = first + second + third
theorem drive_first_exact (m : DriveExact) : m.first = 480 := by cases m; omega
theorem drive_second (m : DriveExact) : m.second = 240 := by cases m; omega
theorem drive_third (m : DriveExact) : m.third = 80 := by cases m; omega
theorem drive_exact_solution (m : DriveExact) : m.total = 800 := by
  have h₁ := drive_first_exact m
  have h₂ := drive_second m
  have h₃ := drive_third m
  cases m; omega
theorem drive_about_alternative : 60 * 440 = 80 * 330 ∧ 440 + 240 + 80 = 760 := by decide
theorem drive_not_unique : 800 ≠ 760 := by decide
theorem drive_answer_scope (m : DriveExact) :
    m.total = 800 ∧ (60 * 440 = 80 * 330 ∧ 440 + 240 + 80 = 760) ∧ 800 ≠ 760 := by
  exact ⟨drive_exact_solution m, drive_about_alternative, drive_not_unique⟩

structure AverageAge where firstNine newTotal newAverage increase : ℕ
  hFirst : firstNine = 9 * 8
  hTotal : newTotal = firstNine + 28
  hAverage : 10 * newAverage = newTotal
  hIncrease : increase + 8 = newAverage
theorem average_first_nine (m : AverageAge) : m.firstNine = 72 := by cases m; omega
theorem average_total (m : AverageAge) : m.newTotal = 100 := by
  have h := average_first_nine m
  cases m; omega
theorem average_new (m : AverageAge) : m.newAverage = 10 := by
  have h := average_total m
  cases m; omega
theorem average_solution (m : AverageAge) : m.increase = 2 := by
  have h := average_new m
  cases m; omega

structure Zinc where bigMg smallMg bigZinc smallZinc total : ℕ
  hBigMg : bigMg = 2 * 2 * 1000
  hSmallMg : smallMg = 3 * 1 * 1000
  hBigZinc : 100 * bigZinc = 5 * bigMg
  hSmallZinc : 100 * smallZinc = 15 * smallMg
  hTotal : total = bigZinc + smallZinc
theorem zinc_big_mass (m : Zinc) : m.bigMg = 4000 := by cases m; omega
theorem zinc_small_mass (m : Zinc) : m.smallMg = 3000 := by cases m; omega
theorem zinc_big_amount (m : Zinc) : m.bigZinc = 200 := by
  have h := zinc_big_mass m
  cases m; omega
theorem zinc_small_amount (m : Zinc) : m.smallZinc = 450 := by
  have h := zinc_small_mass m
  cases m; omega
theorem zinc_solution (m : Zinc) : m.total = 650 := by
  have h₁ := zinc_big_amount m
  have h₂ := zinc_small_amount m
  cases m; omega

structure WeightExternal where eachHand hands vest external : ℕ
  hHand : 2 * eachHand = 3 * 150
  hHands : hands = 2 * eachHand
  hVest : 2 * vest = 150
  hExternal : external = hands + vest
theorem weight_each_hand (m : WeightExternal) : m.eachHand = 225 := by cases m; omega
theorem weight_hands (m : WeightExternal) : m.hands = 450 := by
  have h := weight_each_hand m
  cases m; omega
theorem weight_vest (m : WeightExternal) : m.vest = 75 := by cases m; omega
theorem weight_external_solution (m : WeightExternal) : m.external = 525 := by
  have h₁ := weight_hands m
  have h₂ := weight_vest m
  cases m; omega
theorem weight_including_body (m : WeightExternal) : m.external + 150 = 675 := by
  have h := weight_external_solution m
  omega
theorem weight_readings_differ : 525 ≠ 675 := by decide
theorem weight_answer_scope (m : WeightExternal) :
    m.external = 525 ∧ m.external + 150 = 675 ∧ 525 ≠ 675 := by
  exact ⟨weight_external_solution m, weight_including_body m, weight_readings_differ⟩

structure Theater where base drinks gross refund lost : ℕ
  hBase : base = 6 * (50 + 10)
  hDrinks : drinks = 3 * 30
  hGross : gross = base + drinks
  hRefund : 10 * refund = 9 * gross
  hLost : lost + refund = gross
theorem theater_base (m : Theater) : m.base = 360 := by cases m; omega
theorem theater_drinks (m : Theater) : m.drinks = 90 := by cases m; omega
theorem theater_gross (m : Theater) : m.gross = 450 := by
  have h₁ := theater_base m
  have h₂ := theater_drinks m
  cases m; omega
theorem theater_refund (m : Theater) : m.refund = 405 := by
  have h := theater_gross m
  cases m; omega
theorem theater_solution (m : Theater) : m.lost = 45 := by
  have h₁ := theater_gross m
  have h₂ := theater_refund m
  cases m; omega

structure Drinks where girls attendees cans boxes cost : ℕ
  hGirls : girls = 15 + 10
  hAttendees : attendees = 15 + girls
  hCans : cans = 2 * attendees
  hBoxes : 8 * boxes = cans
  hCost : cost = 5 * boxes
theorem drinks_girls (m : Drinks) : m.girls = 25 := by cases m; omega
theorem drinks_attendees (m : Drinks) : m.attendees = 40 := by
  have h := drinks_girls m
  cases m; omega
theorem drinks_cans (m : Drinks) : m.cans = 80 := by
  have h := drinks_attendees m
  cases m; omega
theorem drinks_boxes (m : Drinks) : m.boxes = 10 := by
  have h := drinks_cans m
  cases m; omega
theorem drinks_solution (m : Drinks) : m.cost = 50 := by
  have h := drinks_boxes m
  cases m; omega

structure Donations where k1 k2 k3 k4 k5 total : ℕ
  h1 : k1 = 10
  h2 : k2 = 2 * k1
  h3 : k3 = 2 * k2
  h4 : k4 = 2 * k3
  h5 : k5 = 2 * k4
  hTotal : total = k1 + k2 + k3 + k4 + k5
theorem donations_second (m : Donations) : m.k2 = 20 := by cases m; omega
theorem donations_third (m : Donations) : m.k3 = 40 := by
  have h := donations_second m
  cases m; omega
theorem donations_fourth (m : Donations) : m.k4 = 80 := by
  have h := donations_third m
  cases m; omega
theorem donations_fifth (m : Donations) : m.k5 = 160 := by
  have h := donations_fourth m
  cases m; omega
theorem donations_solution (m : Donations) : m.total = 310 := by
  have h₂ := donations_second m
  have h₃ := donations_third m
  have h₄ := donations_fourth m
  have h₅ := donations_fifth m
  cases m; omega

structure BookClub where hardcover paperback perMember total : ℕ
  hHard : hardcover = 6 * 30
  hPaper : paperback = 6 * 12
  hMember : perMember = 150 + hardcover + paperback
  hTotal : total = 6 * perMember
theorem club_hardcover (m : BookClub) : m.hardcover = 180 := by cases m; omega
theorem club_paperback (m : BookClub) : m.paperback = 72 := by cases m; omega
theorem club_member (m : BookClub) : m.perMember = 402 := by
  have h₁ := club_hardcover m
  have h₂ := club_paperback m
  cases m; omega
theorem club_solution (m : BookClub) : m.total = 2412 := by
  have h := club_member m
  cases m; omega

structure Clouds where cumulonimbus cumulus cirrus : ℕ
  hNimbus : cumulonimbus = 3
  hCumulus : cumulus = 12 * cumulonimbus
  hCirrus : cirrus = 4 * cumulus
theorem clouds_cumulus (m : Clouds) : m.cumulus = 36 := by cases m; omega
theorem clouds_solution (m : Clouds) : m.cirrus = 144 := by
  have h := clouds_cumulus m
  cases m; omega

theorem commute_one_way : 80 * (2 * 10) = 1600 := by decide
theorem commute_daily_total : 80 * 10 = 800 := by decide
theorem commute_readings_differ : 1600 ≠ 800 := by decide
theorem commute_answer_scope :
    80 * (2 * 10) = 1600 ∧ 80 * 10 = 800 ∧ 1600 ≠ 800 := by
  exact ⟨commute_one_way, commute_daily_total, commute_readings_differ⟩

structure Earbuds where tax total : ℕ
  hTax : 100 * tax = 15 * 200
  hTotal : total = 200 + tax
theorem earbuds_tax (m : Earbuds) : m.tax = 30 := by cases m; omega
theorem earbuds_solution (m : Earbuds) : m.total = 230 := by
  have h := earbuds_tax m
  cases m; omega

structure Dogs where obedient stubborn total : ℕ
  hObedient : obedient = 12
  hStubborn : stubborn = 4 * obedient
  hTotal : total = obedient + stubborn
theorem dogs_stubborn (m : Dogs) : m.stubborn = 48 := by cases m; omega
theorem dogs_solution (m : Dogs) : m.total = 60 := by
  have h := dogs_stubborn m
  cases m; omega

structure Wardrobe where socks shoes existing neededItems pairs : ℕ
  hSocks : socks = 2 * 20
  hShoes : shoes = 2 * 5
  hExisting : existing = socks + shoes + 10 + 10
  hNeeded : neededItems = existing
  hPairs : 2 * pairs = neededItems
theorem wardrobe_socks (m : Wardrobe) : m.socks = 40 := by cases m; omega
theorem wardrobe_shoes (m : Wardrobe) : m.shoes = 10 := by cases m; omega
theorem wardrobe_existing (m : Wardrobe) : m.existing = 70 := by
  have h₁ := wardrobe_socks m
  have h₂ := wardrobe_shoes m
  cases m; omega
theorem wardrobe_needed_items (m : Wardrobe) : m.neededItems = 70 := by
  have h := wardrobe_existing m
  cases m; omega
theorem wardrobe_solution (m : Wardrobe) : m.pairs = 35 := by
  have h := wardrobe_needed_items m
  cases m; omega

structure ForeignStudents where initial future : ℕ
  hInitial : 10 * initial = 3 * 1800
  hFuture : future = initial + 200
theorem foreign_initial (m : ForeignStudents) : m.initial = 540 := by cases m; omega
theorem foreign_solution (m : ForeignStudents) : m.future = 740 := by
  have h := foreign_initial m
  cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0924A19
