import Mathlib.Tactic

namespace LemmaWeave.Problems.GSM8K.Sprint0930A00P3

structure TapeModel where
  rectangleShort : ℕ
  rectangleLong : ℕ
  rectangleTapeEach : ℕ
  rectangleBoxes : ℕ
  rectangleTapeTotal : ℕ
  squareSide : ℕ
  squareTapeEach : ℕ
  squareBoxes : ℕ
  squareTapeTotal : ℕ
  totalTape : ℕ
  hRectShort : rectangleShort = 15
  hRectLong : rectangleLong = 30
  hRectEach : rectangleTapeEach = rectangleLong + 2 * rectangleShort
  hRectBoxes : rectangleBoxes = 5
  hRectTotal : rectangleTapeTotal = rectangleBoxes * rectangleTapeEach
  hSquareSide : squareSide = 40
  hSquareEach : squareTapeEach = 3 * squareSide
  hSquareBoxes : squareBoxes = 2
  hSquareTotal : squareTapeTotal = squareBoxes * squareTapeEach
  hTotal : totalTape = rectangleTapeTotal + squareTapeTotal

theorem tape_rectangle_each (m : TapeModel) : m.rectangleTapeEach = 60 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem tape_rectangle_total (m : TapeModel) : m.rectangleTapeTotal = 300 := by
  have h := tape_rectangle_each m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem tape_square_each (m : TapeModel) : m.squareTapeEach = 120 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem tape_square_total (m : TapeModel) : m.squareTapeTotal = 240 := by
  have h := tape_square_each m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem tape_solution (m : TapeModel) : m.totalTape = 540 := by
  have h1 := tape_rectangle_total m
  have h2 := tape_square_total m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10⟩
  dsimp at *
  omega

structure ChipModel where
  friends : ℕ
  dollarsPerFriend : ℕ
  totalDollars : ℕ
  bags : ℕ
  dollarsPerBag : ℕ
  hFriends : friends = 3
  hPerFriend : dollarsPerFriend = 5
  hTotal : totalDollars = friends * dollarsPerFriend
  hBags : bags = 5
  hEqualPrice : totalDollars = bags * dollarsPerBag

theorem chips_total_cost (m : ChipModel) : m.totalDollars = 15 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem chips_solution (m : ChipModel) : m.dollarsPerBag = 3 := by
  have h := chips_total_cost m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

structure CardModel where
  cardsPerWeek : ℕ
  weeksPerYear : ℕ
  collected : ℕ
  remaining : ℕ
  hCardsPerWeek : cardsPerWeek = 20
  hWeeks : weeksPerYear = 52
  hCollected : collected = cardsPerWeek * weeksPerYear
  hHalfLost : collected = 2 * remaining

theorem cards_collected (m : CardModel) : m.collected = 1040 := by
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem cards_solution (m : CardModel) : m.remaining = 520 := by
  have h := cards_collected m
  rcases m with ⟨a,b,c,d,h1,h2,h3,h4⟩
  dsimp at *
  omega

structure PartyModel where
  initialWomen : ℕ
  initialMen : ℕ
  initialTotal : ℕ
  totalLeft : ℕ
  menLeft : ℕ
  womenLeft : ℕ
  womenStayed : ℕ
  menStayed : ℕ
  moreWomenStayed : ℕ
  hWomen : initialWomen = 30
  hMen : initialMen = 20
  hInitial : initialTotal = initialWomen + initialMen
  hFractionLeft : 5 * totalLeft = 2 * initialTotal
  hMenLeft : menLeft = 9
  hLeftPartition : totalLeft = menLeft + womenLeft
  hWomenBalance : initialWomen = womenStayed + womenLeft
  hMenBalance : initialMen = menStayed + menLeft
  hDifference : womenStayed = menStayed + moreWomenStayed

theorem party_initial_total (m : PartyModel) : m.initialTotal = 50 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  dsimp at *
  omega

theorem party_total_left (m : PartyModel) : m.totalLeft = 20 := by
  have h := party_initial_total m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  dsimp at *
  omega

theorem party_women_left (m : PartyModel) : m.womenLeft = 11 := by
  have h := party_total_left m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  dsimp at *
  omega

theorem party_women_stayed (m : PartyModel) : m.womenStayed = 19 := by
  have h := party_women_left m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  dsimp at *
  omega

theorem party_men_stayed (m : PartyModel) : m.menStayed = 11 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,h1,h2,h3,h4,h5,h6,h7,h8,h9⟩
  dsimp at *
  omega

theorem party_solution (m : PartyModel) : m.moreWomenStayed = 8 := by
  have h1 := party_women_stayed m
  have h2 := party_men_stayed m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,p1,p2,p3,p4,p5,p6,p7,p8,p9⟩
  dsimp at *
  omega

structure CableModel where
  eastWestStreets : ℕ
  eastWestMilesEach : ℕ
  eastWestMiles : ℕ
  northSouthStreets : ℕ
  northSouthMilesEach : ℕ
  northSouthMiles : ℕ
  totalStreetMiles : ℕ
  cableMilesPerStreetMile : ℕ
  cableMiles : ℕ
  dollarsPerCableMile : ℕ
  totalCostDollars : ℕ
  hEastStreets : eastWestStreets = 18
  hEastEach : eastWestMilesEach = 2
  hEastMiles : eastWestMiles = eastWestStreets * eastWestMilesEach
  hNorthStreets : northSouthStreets = 10
  hNorthEach : northSouthMilesEach = 4
  hNorthMiles : northSouthMiles = northSouthStreets * northSouthMilesEach
  hStreetTotal : totalStreetMiles = eastWestMiles + northSouthMiles
  hCableRate : cableMilesPerStreetMile = 5
  hCableMiles : cableMiles = totalStreetMiles * cableMilesPerStreetMile
  hCostRate : dollarsPerCableMile = 2000
  hCost : totalCostDollars = cableMiles * dollarsPerCableMile

theorem cable_east_west (m : CableModel) : m.eastWestMiles = 36 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem cable_north_south (m : CableModel) : m.northSouthMiles = 40 := by
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem cable_street_total (m : CableModel) : m.totalStreetMiles = 76 := by
  have h1 := cable_east_west m
  have h2 := cable_north_south m
  rcases m with ⟨a,b,c,d,e,f,g,h,i,j,k,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11⟩
  dsimp at *
  omega

theorem cable_miles (m : CableModel) : m.cableMiles = 380 := by
  have h := cable_street_total m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

theorem cable_solution (m : CableModel) : m.totalCostDollars = 760000 := by
  have h := cable_miles m
  rcases m with ⟨a,b,c,d,e,f,g,i,j,k,l,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11⟩
  dsimp at *
  subst_vars <;> norm_num at * <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0930A00P3
