import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0924A16

structure Tylenol where
  dose : ℕ
  doses : ℕ
  daily : ℕ
  hDose : dose = 2 * 375
  hDoses : 6 * doses = 24
  hDaily : daily = dose * doses
theorem tylenol_dose (m : Tylenol) : m.dose = 750 := by cases m <;> omega
theorem tylenol_doses (m : Tylenol) : m.doses = 4 := by cases m <;> omega
theorem tylenol_solution (m : Tylenol) : m.daily = 3000 := by cases m <;> omega

structure Mowing where
  ridingAcres : ℕ
  pushAcres : ℕ
  ridingHours : ℕ
  pushHours : ℕ
  totalHours : ℕ
  hRidingAcres : 4 * ridingAcres = 3 * 8
  hAcres : ridingAcres + pushAcres = 8
  hRidingHours : 2 * ridingHours = ridingAcres
  hPushHours : pushHours = pushAcres
  hTotal : totalHours = ridingHours + pushHours
theorem mowing_riding_acres (m : Mowing) : m.ridingAcres = 6 := by cases m <;> omega
theorem mowing_riding_hours (m : Mowing) : m.ridingHours = 3 := by cases m <;> omega
theorem mowing_push_acres (m : Mowing) : m.pushAcres = 2 := by cases m <;> omega
theorem mowing_push_hours (m : Mowing) : m.pushHours = 2 := by cases m <;> omega
theorem mowing_solution (m : Mowing) : m.totalHours = 5 := by cases m <;> omega

structure Seaweed where
  usable : ℕ
  human : ℕ
  livestock : ℕ
  hUsable : 2 * usable = 400
  hHuman : 4 * human = usable
  hLivestock : human + livestock = usable
theorem seaweed_usable (m : Seaweed) : m.usable = 200 := by cases m <;> omega
theorem seaweed_human (m : Seaweed) : m.human = 50 := by cases m <;> omega
theorem seaweed_solution (m : Seaweed) : m.livestock = 150 := by cases m <;> omega

theorem jump_literal_impossible : ¬ ∃ third : ℤ, third + 2 = third := by omega
structure JumpCorrected where
  first : ℤ
  second : ℤ
  third : ℤ
  fourth : ℤ
  hFirst : first = 22
  hSecond : second = first + 1
  hThird : third + 2 = second
  hFourth : fourth = third + 3
theorem jump_corrected_second (m : JumpCorrected) : m.second = 23 := by cases m <;> omega
theorem jump_corrected_third (m : JumpCorrected) : m.third = 21 := by cases m <;> omega
theorem jump_corrected_fourth (m : JumpCorrected) : m.fourth = 24 := by cases m <;> omega
theorem jump_reference_solution (m : JumpCorrected) : m.fourth = 24 := by cases m <;> omega

structure Coffee where
  pods : ℕ
  boxes : ℕ
  cost : ℕ
  hPods : pods = 40 * 3
  hBoxes : pods = boxes * 30
  hCost : cost = boxes * 8
theorem coffee_pods (m : Coffee) : m.pods = 120 := by cases m <;> omega
theorem coffee_boxes (m : Coffee) : m.boxes = 4 := by cases m <;> omega
theorem coffee_solution (m : Coffee) : m.cost = 32 := by cases m <;> omega

structure Road where
  miles : ℕ
  signs : ℕ
  perMile : ℕ
  hMiles : miles = 5 + 2
  hSigns : signs + 3 = 17
  hRate : signs = miles * perMile
theorem road_miles (m : Road) : m.miles = 7 := by cases m <;> omega
theorem road_signs (m : Road) : m.signs = 14 := by cases m <;> omega
theorem road_solution (m : Road) : m.perMile = 2 := by cases m <;> omega

structure Coconuts where
  before : ℕ
  after : ℕ
  hBefore : before = 3 * 14
  hAfter : after + 10 = before
theorem coconuts_before (m : Coconuts) : m.before = 42 := by cases m <;> omega
theorem coconuts_solution (m : Coconuts) : m.after = 32 := by cases m <;> omega

structure Herd where
  femaleHippos : ℕ
  newHippos : ℕ
  newElephants : ℕ
  hippos : ℕ
  elephants : ℕ
  total : ℕ
  hFemaleHippos : 7 * femaleHippos = 5 * 35
  hNewHippos : newHippos = 5 * femaleHippos
  hNewElephants : newElephants = newHippos + 10
  hHippos : hippos = 35 + newHippos
  hElephants : elephants = 20 + newElephants
  hTotal : total = hippos + elephants
theorem herd_female_hippos (m : Herd) : m.femaleHippos = 25 := by cases m <;> omega
theorem herd_new_hippos (m : Herd) : m.newHippos = 125 := by cases m <;> omega
theorem herd_new_elephants (m : Herd) : m.newElephants = 135 := by cases m <;> omega
theorem herd_hippos (m : Herd) : m.hippos = 160 := by cases m <;> omega
theorem herd_elephants (m : Herd) : m.elephants = 155 := by cases m <;> omega
theorem herd_solution (m : Herd) : m.total = 315 := by cases m <;> omega

structure TV where
  reality : ℕ
  total : ℕ
  hReality : reality = 5 * 28
  hTotal : total = reality + 10
theorem tv_reality (m : TV) : m.reality = 140 := by cases m <;> omega
theorem tv_solution (m : TV) : m.total = 150 := by cases m <;> omega

structure Theater where
  girls : ℕ
  boys : ℕ
  hGirls : 2 * girls = 8
  hFriends : girls + boys = 8
theorem theater_girls (m : Theater) : m.girls = 4 := by cases m <;> omega
theorem theater_solution (m : Theater) : m.boys = 4 := by cases m <;> omega

structure Eggs where
  purchased : ℕ
  children : ℕ
  parents : ℕ
  eaten : ℕ
  left : ℕ
  hPurchased : purchased = 2 * 24
  hChildren : children = 7 * 2
  hParents : parents = 7 * 4
  hEaten : eaten = children + parents
  hLeft : left + eaten = purchased
theorem eggs_purchased (m : Eggs) : m.purchased = 48 := by cases m <;> omega
theorem eggs_children (m : Eggs) : m.children = 14 := by cases m <;> omega
theorem eggs_parents (m : Eggs) : m.parents = 28 := by cases m <;> omega
theorem eggs_eaten (m : Eggs) : m.eaten = 42 := by cases m <;> omega
theorem eggs_solution (m : Eggs) : m.left = 6 := by cases m <;> omega
theorem eggs_each_person_impossible : ¬ ∃ left : ℕ, left + 7 * (2 * 2 + 2 * 4) = 48 := by omega

structure Pencils where
  afterMove : ℕ
  lostLater : ℕ
  current : ℕ
  hAfterMove : afterMove + 6 = 30
  hLostLater : 3 * lostLater = afterMove
  hCurrent : current + lostLater = afterMove
theorem pencils_after_move (m : Pencils) : m.afterMove = 24 := by cases m <;> omega
theorem pencils_lost_later (m : Pencils) : m.lostLater = 8 := by cases m <;> omega
theorem pencils_solution (m : Pencils) : m.current = 16 := by cases m <;> omega

structure Jellybeans where
  children : ℕ
  each : ℕ
  hChildren : children = 3 + 2
  hShare : 70 = children * each
theorem jellybeans_children (m : Jellybeans) : m.children = 5 := by cases m <;> omega
theorem jellybeans_solution (m : Jellybeans) : m.each = 14 := by cases m <;> omega

/-- Ingredient amounts are represented in quarter-cup scoop units. -/
structure Scoop where
  flour : ℕ
  white : ℕ
  brown : ℕ
  oil : ℕ
  total : ℕ
  hFlour : flour = 2 * 4
  hWhite : white = 1 * 4
  hBrown : brown = 1
  hOil : oil = 2
  hTotal : total = flour + white + brown + oil
theorem scoop_flour (m : Scoop) : m.flour = 8 := by cases m <;> omega
theorem scoop_white (m : Scoop) : m.white = 4 := by cases m <;> omega
theorem scoop_brown (m : Scoop) : m.brown = 1 := by cases m <;> omega
theorem scoop_oil (m : Scoop) : m.oil = 2 := by cases m <;> omega
theorem scoop_solution (m : Scoop) : m.total = 15 := by cases m <;> omega

structure Ship where
  capacity : ℕ
  third : ℕ
  starting : ℕ
  hCapacity : capacity = 300 * 4
  hThird : capacity = 3 * third
  hStarting : starting + 100 = third
theorem ship_capacity (m : Ship) : m.capacity = 1200 := by cases m <;> omega
theorem ship_third (m : Ship) : m.third = 400 := by cases m <;> omega
theorem ship_solution (m : Ship) : m.starting = 300 := by cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0924A16
