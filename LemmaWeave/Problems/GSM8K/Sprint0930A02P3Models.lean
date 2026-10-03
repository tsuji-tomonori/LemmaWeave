import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A02P3

structure CookieModel where
  members : ℕ
  sheetsPerMember : ℕ
  cookiesPerSheet : ℕ
  cookiesPerMember : ℕ
  totalCookies : ℕ
  hMembers : members = 100
  hSheets : sheetsPerMember = 10
  hCookiesPerSheet : cookiesPerSheet = 16
  hPerMember : cookiesPerMember = sheetsPerMember * cookiesPerSheet
  hTotal : totalCookies = members * cookiesPerMember

theorem cookies_per_member (m : CookieModel) : m.cookiesPerMember = 160 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  subst_vars <;> norm_num at * <;> omega

theorem cookies_solution (m : CookieModel) : m.totalCookies = 16000 := by
  have h := cookies_per_member m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  subst_vars <;> norm_num at * <;> omega

structure BabysitterModel where
  hours : ℕ
  oldHourly : ℕ
  oldTotal : ℕ
  newHourly : ℕ
  newHourlyTotal : ℕ
  screams : ℕ
  dollarsPerScream : ℕ
  screamCharge : ℕ
  newTotal : ℕ
  savings : ℕ
  hHours : hours = 6
  hOldHourly : oldHourly = 16
  hOldTotal : oldTotal = hours * oldHourly
  hNewHourly : newHourly = 12
  hNewHourlyTotal : newHourlyTotal = hours * newHourly
  hScreams : screams = 2
  hScreamRate : dollarsPerScream = 3
  hScreamCharge : screamCharge = screams * dollarsPerScream
  hNewTotal : newTotal = newHourlyTotal + screamCharge
  hSavings : oldTotal = newTotal + savings

theorem babysitter_old_total (m : BabysitterModel) : m.oldTotal = 96 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  subst_vars <;> norm_num at * <;> omega

theorem babysitter_hourly_total (m : BabysitterModel) : m.newHourlyTotal = 72 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  subst_vars <;> norm_num at * <;> omega

theorem babysitter_scream_charge (m : BabysitterModel) : m.screamCharge = 6 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  subst_vars <;> norm_num at * <;> omega

theorem babysitter_new_total (m : BabysitterModel) : m.newTotal = 78 := by
  have h1 := babysitter_hourly_total m
  have h2 := babysitter_scream_charge m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10⟩
  omega

theorem babysitter_solution (m : BabysitterModel) : m.savings = 18 := by
  have h1 := babysitter_old_total m
  have h2 := babysitter_new_total m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10⟩
  omega

structure TransportModel where
  originalBags : ℕ
  originalKilogramsPerBag : ℕ
  originalKilograms : ℕ
  originalCost : ℕ
  newBags : ℕ
  newKilogramsPerBag : ℕ
  newKilograms : ℕ
  newCost : ℕ
  hOriginalBags : originalBags = 80
  hOriginalWeight : originalKilogramsPerBag = 50
  hOriginalTotal : originalKilograms = originalBags * originalKilogramsPerBag
  hOriginalCost : originalCost = 6000
  hNewBags : newBags = 3 * originalBags
  hNewWeight : 5 * newKilogramsPerBag = 3 * originalKilogramsPerBag
  hNewTotal : newKilograms = newBags * newKilogramsPerBag
  hProportionalRate : 2 * newCost = 3 * newKilograms

theorem transport_original_kilograms (m : TransportModel) : m.originalKilograms = 4000 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  subst_vars <;> norm_num at * <;> omega

theorem transport_new_bags (m : TransportModel) : m.newBags = 240 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  omega

theorem transport_new_weight (m : TransportModel) : m.newKilogramsPerBag = 30 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,h1,h2,h3,h4,h5,h6,h7,h8⟩
  omega

theorem transport_new_total (m : TransportModel) : m.newKilograms = 7200 := by
  have h1 := transport_new_bags m
  have h2 := transport_new_weight m
  rcases m with ⟨a,b,c,d,e,f,g,h,p1,p2,p3,p4,p5,p6,p7,p8⟩
  subst_vars <;> norm_num at * <;> omega

theorem transport_solution (m : TransportModel) : m.newCost = 10800 := by
  have h := transport_new_total m
  rcases m with ⟨a,b,c,d,e,f,g,h,p1,p2,p3,p4,p5,p6,p7,p8⟩
  omega

structure EggModel where
  dozens : ℕ
  eggsPerDozen : ℕ
  totalEggs : ℕ
  siblings : ℕ
  people : ℕ
  eggsEach : ℕ
  hDozens : dozens = 2
  hPerDozen : eggsPerDozen = 12
  hTotal : totalEggs = dozens * eggsPerDozen
  hSiblings : siblings = 3
  hPeople : people = siblings + 1
  hShare : totalEggs = people * eggsEach

theorem eggs_total (m : EggModel) : m.totalEggs = 24 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  subst_vars <;> norm_num at * <;> omega

theorem eggs_people (m : EggModel) : m.people = 4 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega

theorem eggs_solution (m : EggModel) : m.eggsEach = 6 := by
  have h1 := eggs_total m
  have h2 := eggs_people m
  rcases m with ⟨a,b,c,d,e,f,p1,p2,p3,p4,p5,p6⟩
  subst_vars <;> norm_num at * <;> omega

structure DogModel where
  totalLength : ℕ
  bodyLength : ℕ
  headLength : ℕ
  tailLength : ℕ
  hTotal : totalLength = 30
  hTail : bodyLength = 2 * tailLength
  hHead : bodyLength = 6 * headLength
  hParts : totalLength = bodyLength + headLength + tailLength

theorem dog_body (m : DogModel) : m.bodyLength = 18 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

theorem dog_head (m : DogModel) : m.headLength = 3 := by
  have h := dog_body m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

theorem dog_solution (m : DogModel) : m.tailLength = 9 := by
  have h := dog_body m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  omega

end LemmaWeave.Problems.GSM8K.Sprint0930A02P3
