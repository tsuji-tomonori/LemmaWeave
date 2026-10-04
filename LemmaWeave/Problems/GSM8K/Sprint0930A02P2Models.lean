import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0930A02P2

structure CandyModel where
  mark : ℕ
  peter : ℕ
  john : ℕ
  total : ℕ
  people : ℕ
  each : ℕ
  hMark : mark = 30
  hPeter : peter = 25
  hJohn : john = 35
  hTotal : total = mark + peter + john
  hPeople : people = 3
  hShare : total = people * each

theorem candies_total (m : CandyModel) : m.total = 90 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega

theorem candies_solution (m : CandyModel) : m.each = 30 := by
  have h := candies_total m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  subst_vars <;> norm_num at * <;> omega

structure PetModel where
  initial : ℕ
  escaped : ℕ
  afterEscape : ℕ
  died : ℕ
  remaining : ℕ
  hInitial : initial = 16
  hEscaped : escaped = 6
  hEscapeBalance : initial = afterEscape + escaped
  hOneFifthDied : afterEscape = 5 * died
  hDeathBalance : afterEscape = remaining + died

theorem pets_after_escape (m : PetModel) : m.afterEscape = 10 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

theorem pets_died (m : PetModel) : m.died = 2 := by
  have h := pets_after_escape m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

theorem pets_solution (m : PetModel) : m.remaining = 8 := by
  have h1 := pets_after_escape m
  have h2 := pets_died m
  rcases m with ⟨a,b,c,d,e,p1,p2,p3,p4,p5⟩
  omega

structure SpellingModel where
  drewCorrect : ℕ
  drewWrong : ℕ
  drewTotal : ℕ
  carlaCorrect : ℕ
  carlaWrong : ℕ
  carlaTotal : ℕ
  contestTotal : ℕ
  hDrewCorrect : drewCorrect = 20
  hDrewWrong : drewWrong = 6
  hDrewTotal : drewTotal = drewCorrect + drewWrong
  hCarlaCorrect : carlaCorrect = 14
  hCarlaWrong : carlaWrong = 2 * drewWrong
  hCarlaTotal : carlaTotal = carlaCorrect + carlaWrong
  hDistinct : contestTotal = drewTotal + carlaTotal

theorem spelling_drew_total (m : SpellingModel) : m.drewTotal = 26 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  omega

theorem spelling_carla_wrong (m : SpellingModel) : m.carlaWrong = 12 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  omega

theorem spelling_carla_total (m : SpellingModel) : m.carlaTotal = 26 := by
  have h := spelling_carla_wrong m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  omega

theorem spelling_solution (m : SpellingModel) : m.contestTotal = 52 := by
  have h1 := spelling_drew_total m
  have h2 := spelling_carla_total m
  rcases m with ⟨a,b,c,d,e,f,g,p1,p2,p3,p4,p5,p6,p7⟩
  omega

structure SonnetModel where
  linesPerSonnet : ℕ
  heardSonnets : ℕ
  unheardLines : ℕ
  unheardSonnets : ℕ
  totalSonnets : ℕ
  hLines : linesPerSonnet = 14
  hHeard : heardSonnets = 7
  hUnheardLines : unheardLines = 70
  hUnheardCount : unheardLines = unheardSonnets * linesPerSonnet
  hTotal : totalSonnets = heardSonnets + unheardSonnets

theorem sonnets_unheard (m : SonnetModel) : m.unheardSonnets = 5 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  subst_vars <;> norm_num at * <;> omega

theorem sonnets_solution (m : SonnetModel) : m.totalSonnets = 12 := by
  have h := sonnets_unheard m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  omega

structure RibbonModel where
  totalCentimeters : ℕ
  pieces : ℕ
  centimetersPerPiece : ℕ
  cutCentimeters : ℕ
  remainingCentimeters : ℕ
  remainingMeters : ℕ
  hTotal : totalCentimeters = 5100
  hPieces : pieces = 100
  hPerPiece : centimetersPerPiece = 15
  hCut : cutCentimeters = pieces * centimetersPerPiece
  hBalance : totalCentimeters = cutCentimeters + remainingCentimeters
  hMeters : remainingCentimeters = 100 * remainingMeters

theorem ribbon_cut (m : RibbonModel) : m.cutCentimeters = 1500 := by
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  subst_vars <;> norm_num at * <;> omega

theorem ribbon_remaining_centimeters (m : RibbonModel) : m.remainingCentimeters = 3600 := by
  have h := ribbon_cut m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega

theorem ribbon_solution (m : RibbonModel) : m.remainingMeters = 36 := by
  have h := ribbon_remaining_centimeters m
  rcases m with ⟨a,b,c,d,e,f,h1,h2,h3,h4,h5,h6⟩
  omega

end LemmaWeave.Problems.GSM8K.Sprint0930A02P2
