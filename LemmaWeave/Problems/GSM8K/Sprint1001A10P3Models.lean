import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A10P3

structure WheelsModel where
  bicycles bicycleWheels tricycles tricycleWheels total : ℕ
  hBicycles : bicycles = 6
  hBicycleWheels : bicycleWheels = 2 * bicycles
  hTricycles : tricycles = 15
  hTricycleWheels : tricycleWheels = 3 * tricycles
  hTotal : total = bicycleWheels + tricycleWheels

theorem wheels_bicycles (m : WheelsModel) : m.bicycleWheels = 12 := by
  cases m <;> omega

theorem wheels_tricycles (m : WheelsModel) : m.tricycleWheels = 45 := by
  cases m <;> omega

theorem wheels_total (m : WheelsModel) : m.total = 57 := by
  have h1 := wheels_bicycles m
  have h2 := wheels_tricycles m
  cases m <;> omega

structure MushroomsModel where
  red brown blue green redSpotted brownSpotted blueSpotted greenSpotted totalSpotted : ℕ
  hRed : red = 12
  hBrown : brown = 6
  hBlue : blue = 6
  hGreen : green = 14
  hRedSpotted : 3 * redSpotted = 2 * red
  hBrownSpotted : brownSpotted = brown
  hBlueSpotted : 2 * blueSpotted = blue
  hGreenBound : greenSpotted ≤ green
  hTotal : totalSpotted = redSpotted + brownSpotted + blueSpotted + greenSpotted

theorem mushrooms_fixed_spotted (m : MushroomsModel) :
    m.redSpotted = 8 ∧ m.brownSpotted = 6 ∧ m.blueSpotted = 3 := by
  cases m <;> omega

theorem mushrooms_range (m : MushroomsModel) : 17 ≤ m.totalSpotted ∧ m.totalSpotted ≤ 31 := by
  have h := mushrooms_fixed_spotted m
  cases m <;> omega

def MushroomCompletion (greenSpotted total : ℕ) : Prop :=
  greenSpotted ≤ 14 ∧ total = 17 + greenSpotted

theorem mushrooms_zero_green_example : MushroomCompletion 0 17 := by
  constructor <;> norm_num

theorem mushrooms_one_green_example : MushroomCompletion 1 18 := by
  constructor <;> norm_num

theorem mushrooms_not_unique :
    ∃ g₁ t₁ g₂ t₂ : ℕ,
      MushroomCompletion g₁ t₁ ∧ MushroomCompletion g₂ t₂ ∧ t₁ ≠ t₂ := by
  exact ⟨0, 17, 1, 18, mushrooms_zero_green_example, mushrooms_one_green_example, by norm_num⟩

structure DmvModel where
  first multiplier extra called total : ℕ
  hFirst : first = 20
  hMultiplier : multiplier = 4
  hExtra : extra = 14
  hCalled : called = 4 * first + extra
  hTotal : total = first + called

theorem dmv_called (m : DmvModel) : m.called = 94 := by
  cases m <;> omega

theorem dmv_total (m : DmvModel) : m.total = 114 := by
  have h := dmv_called m
  cases m <;> omega

structure SchoolGrowthModel where
  current previous : ℕ
  hCurrent : current = 960
  hGrowth : 120 * previous = 100 * current

theorem school_growth_equation (m : SchoolGrowthModel) : 120 * m.previous = 100 * m.current := by
  exact m.hGrowth

theorem school_previous (m : SchoolGrowthModel) : m.previous = 800 := by
  have h := school_growth_equation m
  cases m <;> omega

structure CompetitionModel where
  sammy gab cher team opponent more : ℕ
  hSammy : sammy = 20
  hGab : gab = 2 * sammy
  hCher : cher = 2 * gab
  hTeam : team = sammy + gab + cher
  hOpponent : opponent = 85
  hMore : opponent + more = team

theorem competition_individual (m : CompetitionModel) :
    m.sammy = 20 ∧ m.gab = 40 ∧ m.cher = 80 := by
  cases m <;> omega

theorem competition_team (m : CompetitionModel) : m.team = 140 := by
  have h := competition_individual m
  cases m <;> omega

theorem competition_more (m : CompetitionModel) : m.more = 55 := by
  have h := competition_team m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A10P3
