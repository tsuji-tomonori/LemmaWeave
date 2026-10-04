import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A18

structure Barrettes where
  kristine crystal combined : ℕ
  hKristine : kristine = 3 + 1
  hCrystal : crystal = 3 * 3 + 1
  hCombined : combined = kristine + crystal
theorem barrettes_kristine (m : Barrettes) : m.kristine = 4 := by cases m; omega
theorem barrettes_crystal (m : Barrettes) : m.crystal = 10 := by cases m; omega
theorem barrettes_solution (m : Barrettes) : m.combined = 14 := by
  have h₁ := barrettes_kristine m
  have h₂ := barrettes_crystal m
  cases m; omega

structure Teams where first second difference : ℕ
  hFirst : first = 12 + 10
  hSecond : second = 8 + 11
  hDifference : difference + second = first
theorem teams_first (m : Teams) : m.first = 22 := by cases m; omega
theorem teams_second (m : Teams) : m.second = 19 := by cases m; omega
theorem teams_solution (m : Teams) : m.difference = 3 := by
  have h₁ := teams_first m
  have h₂ := teams_second m
  cases m; omega

structure Candles where bedroom living total : ℕ
  hBedroom : bedroom = 20
  hDouble : bedroom = 2 * living
  hTotal : total = bedroom + living + 20
theorem candles_living (m : Candles) : m.living = 10 := by cases m; omega
theorem candles_solution (m : Candles) : m.total = 50 := by
  have h := candles_living m
  cases m; omega

structure ReunionEqual where people perTable : ℕ
  hPeople : people = 45 + 123
  hEqual : 14 * perTable = people
theorem reunion_people (m : ReunionEqual) : m.people = 168 := by cases m; omega
theorem reunion_equal_solution (m : ReunionEqual) : m.perTable = 12 := by
  have h := reunion_people m
  cases m; omega
theorem reunion_unequal_possible : 13 * 11 + 25 = 45 + 123 := by decide
theorem reunion_not_determined (m : ReunionEqual) : 11 ≠ m.perTable := by
  have h := reunion_equal_solution m
  cases m; omega
theorem reunion_answer_scope (m : ReunionEqual) :
    m.perTable = 12 ∧ 13 * 11 + 25 = 45 + 123 ∧ 11 ≠ m.perTable := by
  exact ⟨reunion_equal_solution m, reunion_unequal_possible, reunion_not_determined m⟩

structure Aquarium where reduced tax total : ℕ
  hReduced : 2 * reduced = 120
  hTax : 20 * tax = reduced
  hTotal : total = reduced + tax
theorem aquarium_reduced (m : Aquarium) : m.reduced = 60 := by cases m; omega
theorem aquarium_tax (m : Aquarium) : m.tax = 3 := by
  have h := aquarium_reduced m
  cases m; omega
theorem aquarium_solution (m : Aquarium) : m.total = 63 := by
  have h₁ := aquarium_reduced m
  have h₂ := aquarium_tax m
  cases m; omega

structure Books where alannah queen total : ℕ
  hAlannah : alannah = 30 + 20
  hTotal : total = 30 + alannah + queen
theorem books_alannah (m : Books) : m.alannah = 50 := by cases m; omega
theorem books_more_reading (m : Books) (h : 5 * m.queen = 6 * m.alannah) :
    m.total = 140 := by
  have h₁ := books_alannah m
  cases m; omega
theorem books_of_reading (m : Books) (h : 5 * m.queen = m.alannah) :
    m.total = 90 := by
  have h₁ := books_alannah m
  cases m; omega
theorem books_readings_differ : 140 ≠ 90 := by decide
theorem books_answer_scope (m : Books) :
    (5 * m.queen = 6 * m.alannah → m.total = 140) ∧
    (5 * m.queen = m.alannah → m.total = 90) ∧ 140 ≠ 90 := by
  exact ⟨books_more_reading m, books_of_reading m, books_readings_differ⟩

structure OriginalAges where
  maiya first : ℕ
  hTwice : first = 2 * maiya
  hYounger : first + 1 = maiya
theorem ages_original_inconsistent (m : OriginalAges) : False := by cases m; omega
structure CorrectedAges where
  maiya first second : ℕ
  hTwice : first = 2 * maiya
  hSecondYounger : second + 1 = maiya
  hAverage : maiya + first + second = 3 * 5
theorem ages_conditional_solution (m : CorrectedAges) : m.maiya = 4 := by cases m; omega
theorem ages_answer_scope :
    (¬ ∃ m : OriginalAges, True) ∧ (∀ m : CorrectedAges, m.maiya = 4) := by
  constructor
  · rintro ⟨m, _⟩
    exact ages_original_inconsistent m
  · intro m
    exact ages_conditional_solution m

structure Sled where t1 t2 t3 t4 total : ℕ
  h1 : 10 * t1 = 180
  h2 : 20 * t2 = 120
  h3 : 10 * t3 = 80
  h4 : 20 * t4 = 140
  hTotal : total = t1 + t2 + t3 + t4
theorem sled_first (m : Sled) : m.t1 = 18 := by cases m; omega
theorem sled_second (m : Sled) : m.t2 = 6 := by cases m; omega
theorem sled_third (m : Sled) : m.t3 = 8 := by cases m; omega
theorem sled_fourth (m : Sled) : m.t4 = 7 := by cases m; omega
theorem sled_solution (m : Sled) : m.total = 39 := by
  have h₁ := sled_first m
  have h₂ := sled_second m
  have h₃ := sled_third m
  have h₄ := sled_fourth m
  cases m; omega

-- Cents make both the exact-price result and the approximate-rate countermodel integral.
structure MowerExact where afterFirst afterSecond : ℕ
  hFirst : 4 * afterFirst = 3 * 10000
  hSecond : 5 * afterSecond = 4 * afterFirst
theorem mower_first (m : MowerExact) : m.afterFirst = 7500 := by cases m; omega
theorem mower_exact_solution (m : MowerExact) : m.afterSecond = 6000 := by
  have h := mower_first m
  cases m; omega
theorem mower_alternative : 5 * 6080 = 4 * 7600 ∧ 100 * 7600 = 76 * 10000 := by decide
theorem mower_not_unique : 6000 ≠ 6080 := by decide
theorem mower_answer_scope (m : MowerExact) :
    m.afterSecond = 6000 ∧
    (5 * 6080 = 4 * 7600 ∧ 100 * 7600 = 76 * 10000) ∧ 6000 ≠ 6080 := by
  exact ⟨mower_exact_solution m, mower_alternative, mower_not_unique⟩

structure Podcasts where second third used needed : ℕ
  hSecond : second = 2 * 45
  hThird : third = 60 + 45
  hUsed : used = 45 + second + third + 60
  hNeeded : needed + used = 6 * 60
theorem podcasts_second (m : Podcasts) : m.second = 90 := by cases m; omega
theorem podcasts_third (m : Podcasts) : m.third = 105 := by cases m; omega
theorem podcasts_used (m : Podcasts) : m.used = 300 := by
  have h₁ := podcasts_second m
  have h₂ := podcasts_third m
  cases m; omega
theorem podcasts_solution (m : Podcasts) : m.needed = 60 := by
  have h := podcasts_used m
  cases m; omega

structure CarShare where remaining firstShare newShare increase : ℕ
  hRemaining : remaining + 500 = 1700
  hFirst : 6 * firstShare = remaining
  hNew : 5 * newShare = remaining
  hIncrease : increase + firstShare = newShare
theorem car_remaining (m : CarShare) : m.remaining = 1200 := by cases m; omega
theorem car_first (m : CarShare) : m.firstShare = 200 := by
  have h := car_remaining m
  cases m; omega
theorem car_new (m : CarShare) : m.newShare = 240 := by
  have h := car_remaining m
  cases m; omega
theorem car_solution (m : CarShare) : m.increase = 40 := by
  have h₁ := car_first m
  have h₂ := car_new m
  cases m; omega

structure Camera where weekly total friend john : ℕ
  hWeekly : 10 * weekly = 5000
  hTotal : total = 4 * weekly
  hFriend : 5 * friend = 2 * total
  hJohn : john + friend = total
theorem camera_weekly (m : Camera) : m.weekly = 500 := by cases m; omega
theorem camera_total (m : Camera) : m.total = 2000 := by
  have h := camera_weekly m
  cases m; omega
theorem camera_friend (m : Camera) : m.friend = 800 := by
  have h := camera_total m
  cases m; omega
theorem camera_solution (m : Camera) : m.john = 1200 := by
  have h₁ := camera_total m
  have h₂ := camera_friend m
  cases m; omega

structure Restaurant where offPeak peak cars : ℕ
  hOff : offPeak = 4 * 8
  hPeak : peak = 4 * 12
  hCars : cars = offPeak + peak
theorem restaurant_offpeak (m : Restaurant) : m.offPeak = 32 := by cases m; omega
theorem restaurant_peak (m : Restaurant) : m.peak = 48 := by cases m; omega
theorem restaurant_cars (m : Restaurant) : m.cars = 80 := by
  have h₁ := restaurant_offpeak m
  have h₂ := restaurant_peak m
  cases m; omega
theorem restaurant_one_per_car (m : Restaurant) : m.cars * 1 = 80 := by
  have h := restaurant_cars m
  cases m; omega
theorem restaurant_two_per_car (m : Restaurant) : m.cars * 2 = 160 := by
  have h := restaurant_cars m
  cases m; omega
theorem restaurant_customers_not_unique (m : Restaurant) :
    m.cars * 1 ≠ m.cars * 2 := by
  have h₁ := restaurant_one_per_car m
  have h₂ := restaurant_two_per_car m
  cases m; omega
theorem restaurant_answer_scope (m : Restaurant) :
    m.cars = 80 ∧ m.cars * 1 = 80 ∧ m.cars * 2 = 160 ∧
    m.cars * 1 ≠ m.cars * 2 := by
  exact ⟨restaurant_cars m, restaurant_one_per_car m,
    restaurant_two_per_car m, restaurant_customers_not_unique m⟩

structure Planks where guest halls replacements used bought : ℕ
  hGuest : guest + 2 = 8
  hHalls : halls = 2 * 4
  hReplacements : replacements = 2 * 3
  hUsed : used = 8 + 20 + 11 + guest + halls + replacements
  hBought : bought = used + 6
theorem planks_guest (m : Planks) : m.guest = 6 := by cases m; omega
theorem planks_halls (m : Planks) : m.halls = 8 := by cases m; omega
theorem planks_replacements (m : Planks) : m.replacements = 6 := by cases m; omega
theorem planks_used (m : Planks) : m.used = 59 := by
  have h₁ := planks_guest m
  have h₂ := planks_halls m
  have h₃ := planks_replacements m
  cases m; omega
theorem planks_solution (m : Planks) : m.bought = 65 := by
  have h := planks_used m
  cases m; omega

-- Four-legged pets are cats and dogs under the ordinary species interpretation.
structure Pets where cats parrots snakes total : ℕ
  hFourLegged : cats + 2 = 6
  hParrots : parrots + 1 = cats
  hSnakes : snakes = cats + 6
  hTotal : total = cats + parrots + snakes + 2
theorem pets_cats (m : Pets) : m.cats = 4 := by cases m; omega
theorem pets_parrots (m : Pets) : m.parrots = 3 := by
  have h := pets_cats m
  cases m; omega
theorem pets_snakes (m : Pets) : m.snakes = 10 := by
  have h := pets_cats m
  cases m; omega
theorem pets_solution (m : Pets) : m.total = 19 := by
  have h₁ := pets_cats m
  have h₂ := pets_parrots m
  have h₃ := pets_snakes m
  cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0924A18
