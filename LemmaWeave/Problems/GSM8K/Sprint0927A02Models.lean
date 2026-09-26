import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A02
structure Reading where
  mondayPages : ℕ
  tuesdayPages : ℕ
  readPages : ℕ
  remainingPages : ℕ
  remainingHours : ℕ
  hm : mondayPages = 3 * 16
  ht : 2 * tuesdayPages = 13 * 16
  hr : readPages = mondayPages + tuesdayPages
  hrem : remainingPages + readPages = 248
  hh : remainingPages = 16 * remainingHours
theorem reading_monday (m : Reading) : m.mondayPages = 48 := by cases m; omega
theorem reading_tuesday (m : Reading) : m.tuesdayPages = 104 := by cases m; omega
theorem reading_remaining (m : Reading) : m.remainingPages = 96 := by cases m; omega
theorem reading_solution (m : Reading) : m.remainingHours = 6 := by cases m; omega
structure Ingredients where
  flour : ℕ
  eggs : ℕ
  milk : ℕ
  soda : ℕ
  total : ℕ
  hf : flour = 3 * 3
  he : eggs = 3 * 10
  hm : milk = 7 * 5
  hs : soda = 2 * 3
  ht : total = flour + eggs + milk + soda
theorem ingredients_flour (m : Ingredients) : m.flour = 9 := by cases m; omega
theorem ingredients_eggs (m : Ingredients) : m.eggs = 30 := by cases m; omega
theorem ingredients_milk (m : Ingredients) : m.milk = 35 := by cases m; omega
theorem ingredients_soda (m : Ingredients) : m.soda = 6 := by cases m; omega
theorem ingredients_solution (m : Ingredients) : m.total = 80 := by cases m; omega
structure Movies where
  timothy2009 : ℕ
  timothy2010 : ℕ
  theresa2009 : ℕ
  theresa2010 : ℕ
  total : ℕ
  ht09 : timothy2009 = 24
  ht10 : timothy2010 = timothy2009 + 7
  hth09 : 2 * theresa2009 = timothy2009
  hth10 : theresa2010 = 2 * timothy2010
  htotal : total = timothy2009 + timothy2010 + theresa2009 + theresa2010
theorem movies_timothy2010 (m : Movies) : m.timothy2010 = 31 := by cases m; omega
theorem movies_theresa2009 (m : Movies) : m.theresa2009 = 12 := by cases m; omega
theorem movies_theresa2010 (m : Movies) : m.theresa2010 = 62 := by cases m; omega
theorem movies_components (m : Movies) : m.timothy2009 = 24 ∧ m.timothy2010 = 31 := by cases m; omega
theorem movies_solution (m : Movies) : m.total = 129 := by cases m; omega
structure Alligators where
  friendsTotal : ℕ
  total : ℕ
  hf : friendsTotal = 3 * 10
  ht : total = 20 + friendsTotal
theorem alligators_friends (m : Alligators) : m.friendsTotal = 30 := by cases m; omega
theorem alligators_solution (m : Alligators) : m.total = 50 := by cases m; omega
structure PetStore where
  dogs : ℕ
  cats : ℕ
  birds : ℕ
  fish : ℕ
  total : ℕ
  hd : dogs = 6
  hc : 2 * cats = dogs
  hb : birds = 2 * dogs
  hf : fish = 3 * dogs
  ht : total = dogs + cats + birds + fish
theorem petstore_cats (m : PetStore) : m.cats = 3 := by cases m; omega
theorem petstore_birds (m : PetStore) : m.birds = 12 := by cases m; omega
theorem petstore_fish (m : PetStore) : m.fish = 18 := by cases m; omega
theorem petstore_solution (m : PetStore) : m.total = 39 := by cases m; omega
structure CandyStore where
  fudgeCents : ℕ
  truffleCents : ℕ
  pretzelCents : ℕ
  totalCents : ℕ
  totalDollars : ℕ
  hf : fudgeCents = 20 * 250
  ht : truffleCents = 5 * 12 * 150
  hp : pretzelCents = 3 * 12 * 200
  htotal : totalCents = fudgeCents + truffleCents + pretzelCents
  hd : totalCents = 100 * totalDollars
theorem candy_fudge (m : CandyStore) : m.fudgeCents = 5000 := by cases m; omega
theorem candy_truffles (m : CandyStore) : m.truffleCents = 9000 := by cases m; omega
theorem candy_pretzels (m : CandyStore) : m.pretzelCents = 7200 := by cases m; omega
theorem candy_solution (m : CandyStore) : m.totalDollars = 212 := by cases m; omega
structure Clothes where
  shirtsRevenue : ℕ
  dressesRevenue : ℕ
  dressPrice : ℕ
  hs : shirtsRevenue = 4 * 5
  ht : dressesRevenue + shirtsRevenue = 69
  hd : dressesRevenue = 7 * dressPrice
theorem clothes_shirts (m : Clothes) : m.shirtsRevenue = 20 := by cases m; omega
theorem clothes_dresses (m : Clothes) : m.dressesRevenue = 49 := by cases m; omega
theorem clothes_solution (m : Clothes) : m.dressPrice = 7 := by cases m; omega
structure CakeEggs where
  scale : ℕ
  eggsNeeded : ℕ
  milkNeeded : ℕ
  eggsHave : ℕ
  eggsToBuy : ℕ
  hs : 4 * scale = 8
  he : eggsNeeded = 2 * scale
  hm : milkNeeded = 4 * scale
  hh : eggsHave = 3
  hb : eggsToBuy + eggsHave = eggsNeeded
theorem cake_scale (m : CakeEggs) : m.scale = 2 := by cases m; omega
theorem cake_eggs (m : CakeEggs) : m.eggsNeeded = 4 := by cases m; omega
theorem cake_milk (m : CakeEggs) : m.milkNeeded = 8 := by cases m; omega
theorem cake_solution (m : CakeEggs) : m.eggsToBuy = 1 := by cases m; omega
structure Rocks where
  connerDay1 : ℕ
  sydneyDay3 : ℕ
  sydneyFinal : ℕ
  connerBeforeDay3 : ℕ
  hcd1 : connerDay1 = 8 * 4
  hsd3 : sydneyDay3 = 2 * connerDay1
  hsf : sydneyFinal = 837 + 4 + sydneyDay3
  hcb : connerBeforeDay3 = 723 + connerDay1 + 123
theorem rocks_conner_day1 (m : Rocks) : m.connerDay1 = 32 := by cases m; omega
theorem rocks_sydney_day3 (m : Rocks) : m.sydneyDay3 = 64 := by cases m; omega
theorem rocks_sydney_final (m : Rocks) : m.sydneyFinal = 905 := by cases m; omega
theorem rocks_conner_before (m : Rocks) : m.connerBeforeDay3 = 878 := by cases m; omega
theorem rocks_solution (n : ℕ) : 905 ≤ 878 + n ↔ 27 ≤ n := by omega
structure Oasis where
  camelOunces : ℕ
  totalOunces : ℕ
  gallons : ℕ
  hc : camelOunces = 7 * 32
  ht : totalOunces = 32 + camelOunces
  hg : totalOunces = 128 * gallons
theorem oasis_camel (m : Oasis) : m.camelOunces = 224 := by cases m; omega
theorem oasis_total (m : Oasis) : m.totalOunces = 256 := by cases m; omega
theorem oasis_solution (m : Oasis) : m.gallons = 2 := by cases m; omega
end LemmaWeave.Problems.GSM8K.Sprint0927A02
