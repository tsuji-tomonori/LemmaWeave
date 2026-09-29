import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A20P1

structure PoolBucketsModel where
  georgePerRound : ℕ
  harryPerRound : ℕ
  bucketsPerRound : ℕ
  totalBuckets : ℕ
  rounds : ℕ
  hGeorge : georgePerRound = 2
  hHarry : harryPerRound = 3
  hPerRound : bucketsPerRound = georgePerRound + harryPerRound
  hTotal : totalBuckets = 110
  hFill : totalBuckets = rounds * bucketsPerRound

theorem pool_buckets_per_round (m : PoolBucketsModel) : m.bucketsPerRound = 5 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  subst_vars <;> norm_num at * <;> omega

theorem pool_rounds_solution (m : PoolBucketsModel) : m.rounds = 22 := by
  have hPerRound := pool_buckets_per_round m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  subst_vars <;> norm_num at * <;> omega

structure BirdseedModel where
  parakeetCount : ℕ
  parakeetDailyEach : ℕ
  parakeetDaily : ℕ
  parrotCount : ℕ
  parrotDailyEach : ℕ
  parrotDaily : ℕ
  finchCount : ℕ
  finchDailyEach : ℕ
  finchDaily : ℕ
  allBirdsDaily : ℕ
  days : ℕ
  weekly : ℕ
  hParakeetCount : parakeetCount = 3
  hParakeetEach : parakeetDailyEach = 2
  hParakeetDaily : parakeetDaily = parakeetCount * parakeetDailyEach
  hParrotCount : parrotCount = 2
  hParrotEach : parrotDailyEach = 14
  hParrotDaily : parrotDaily = parrotCount * parrotDailyEach
  hFinchCount : finchCount = 4
  hFinchHalf : 2 * finchDailyEach = parakeetDailyEach
  hFinchDaily : finchDaily = finchCount * finchDailyEach
  hAllDaily : allBirdsDaily = parakeetDaily + parrotDaily + finchDaily
  hDays : days = 7
  hWeekly : weekly = days * allBirdsDaily

theorem birdseed_parakeets (m : BirdseedModel) : m.parakeetDaily = 6 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  subst_vars <;> norm_num at * <;> omega

theorem birdseed_parrots (m : BirdseedModel) : m.parrotDaily = 28 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  subst_vars <;> norm_num at * <;> omega

theorem birdseed_finches (m : BirdseedModel) : m.finchDaily = 4 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  subst_vars <;> norm_num at * <;> omega

theorem birdseed_daily (m : BirdseedModel) : m.allBirdsDaily = 38 := by
  have hPara := birdseed_parakeets m
  have hParrot := birdseed_parrots m
  have hFinch := birdseed_finches m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  subst_vars <;> norm_num at * <;> omega

theorem birdseed_solution (m : BirdseedModel) : m.weekly = 266 := by
  have hDaily := birdseed_daily m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12⟩
  subst_vars <;> norm_num at * <;> omega

structure ClothingCostModel where
  pants : ℕ
  shirt : ℕ
  coat : ℕ
  hPantsShirt : pants + shirt = 100
  hPantsCoat : pants + coat = 244
  hCoatShirt : coat = 5 * shirt

theorem clothing_shirt (m : ClothingCostModel) : m.shirt = 36 := by
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  subst_vars <;> norm_num at * <;> omega

theorem clothing_pants (m : ClothingCostModel) : m.pants = 64 := by
  have hShirt := clothing_shirt m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  subst_vars <;> norm_num at * <;> omega

theorem clothing_solution (m : ClothingCostModel) : m.coat = 180 := by
  have hShirt := clothing_shirt m
  rcases m with ⟨a,b,c,h1,h2,h3⟩
  subst_vars <;> norm_num at * <;> omega

structure RibbonModel where
  totalMeters : ℕ
  parts : ℕ
  metersPerPart : ℕ
  usedParts : ℕ
  usedMeters : ℕ
  unusedMeters : ℕ
  hTotal : totalMeters = 30
  hParts : parts = 6
  hEqualParts : totalMeters = parts * metersPerPart
  hUsedParts : usedParts = 4
  hUsedMeters : usedMeters = usedParts * metersPerPart
  hBalance : totalMeters = usedMeters + unusedMeters

theorem ribbon_part_length (m : RibbonModel) : m.metersPerPart = 5 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  subst_vars <;> norm_num at * <;> omega

theorem ribbon_used (m : RibbonModel) : m.usedMeters = 20 := by
  have hPart := ribbon_part_length m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  subst_vars <;> norm_num at * <;> omega

theorem ribbon_solution (m : RibbonModel) : m.unusedMeters = 10 := by
  have hUsed := ribbon_used m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  subst_vars <;> norm_num at * <;> omega

structure GameSaleModel where
  targetCents : ℕ
  birthdayCents : ℕ
  christmasCents : ℕ
  giftsCents : ℕ
  remainingCents : ℕ
  pricePerGameCents : ℕ
  games : ℕ
  hTarget : targetCents = 50000
  hBirthday : birthdayCents = 20000
  hChristmas : christmasCents = 15000
  hGifts : giftsCents = birthdayCents + christmasCents
  hBalance : targetCents = giftsCents + remainingCents
  hPrice : pricePerGameCents = 750
  hSales : remainingCents = games * pricePerGameCents

theorem games_gifts (m : GameSaleModel) : m.giftsCents = 35000 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem games_remaining (m : GameSaleModel) : m.remainingCents = 15000 := by
  have hGifts := games_gifts m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

theorem games_solution (m : GameSaleModel) : m.games = 20 := by
  have hRemaining := games_remaining m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  subst_vars <;> norm_num at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A20P1
