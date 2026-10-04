import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint1001A03P2

structure FishModel where
  bought bad usable perRoll rolls : ℕ
  hBought : bought = 400
  hBadRate : 5 * bad = bought
  hUsable : usable + bad = bought
  hPerRoll : perRoll = 40
  hRolls : perRoll * rolls = usable

theorem fish_bad (m : FishModel) : m.bad = 80 := by
  cases m <;> omega

theorem fish_usable (m : FishModel) : m.usable = 320 := by
  have h := fish_bad m
  cases m <;> omega

theorem fish_rolls (m : FishModel) : m.rolls = 8 := by
  have h := fish_usable m
  cases m <;> omega

structure DessertModel where
  cones conePrice pudding puddingPrice coneCost puddingCost difference : ℕ
  hCones : cones = 15
  hConePrice : conePrice = 5
  hPudding : pudding = 5
  hPuddingPrice : puddingPrice = 2
  hConeCost : coneCost = cones * conePrice
  hPuddingCost : puddingCost = pudding * puddingPrice
  hDifference : puddingCost + difference = coneCost

theorem dessert_cone_cost (m : DessertModel) : m.coneCost = 75 := by
  cases m <;> omega

theorem dessert_pudding_cost (m : DessertModel) : m.puddingCost = 10 := by
  cases m <;> omega

theorem dessert_difference (m : DessertModel) : m.difference = 65 := by
  have h1 := dessert_cone_cost m
  have h2 := dessert_pudding_cost m
  cases m <;> omega

structure ApplesModel where
  daily daysPerWeek bellaWeekly gracePicked graceKept weeks finalKept : ℕ
  hDaily : daily = 6
  hDays : daysPerWeek = 7
  hBellaWeekly : bellaWeekly = daily * daysPerWeek
  hThird : gracePicked = 3 * bellaWeekly
  hKept : bellaWeekly + graceKept = gracePicked
  hWeeks : weeks = 6
  hFinal : finalKept = graceKept * weeks

theorem apples_bella_weekly (m : ApplesModel) : m.bellaWeekly = 42 := by
  cases m <;> omega

theorem apples_grace_picked (m : ApplesModel) : m.gracePicked = 126 := by
  have h := apples_bella_weekly m
  cases m <;> omega

theorem apples_grace_kept (m : ApplesModel) : m.graceKept = 84 := by
  have h1 := apples_bella_weekly m
  have h2 := apples_grace_picked m
  cases m <;> omega

theorem apples_final (m : ApplesModel) : m.finalKept = 504 := by
  have h := apples_grace_kept m
  cases m <;> omega

structure RadioModel where
  hours totalMinutes talks talkMinutes ads adMinutes songMinutes : ℕ
  hHours : hours = 3
  hTotal : totalMinutes = hours * 60
  hTalks : talks = 3
  hTalkMinutes : talkMinutes = talks * 10
  hAds : ads = 5
  hAdMinutes : adMinutes = ads * 5
  hPartition : talkMinutes + adMinutes + songMinutes = totalMinutes

theorem radio_total (m : RadioModel) : m.totalMinutes = 180 := by
  cases m <;> omega

theorem radio_talk (m : RadioModel) : m.talkMinutes = 30 := by
  cases m <;> omega

theorem radio_ads (m : RadioModel) : m.adMinutes = 25 := by
  cases m <;> omega

theorem radio_songs (m : RadioModel) : m.songMinutes = 125 := by
  have h1 := radio_total m
  have h2 := radio_talk m
  have h3 := radio_ads m
  cases m <;> omega

structure TreeModel where
  branches twigsPerBranch twigs fourLeafTwigs fiveLeafTwigs fourLeaves fiveLeaves totalLeaves : ℕ
  hBranches : branches = 30
  hTwigsPer : twigsPerBranch = 90
  hTwigs : twigs = branches * twigsPerBranch
  hFourRate : 10 * fourLeafTwigs = 3 * twigs
  hPartition : fourLeafTwigs + fiveLeafTwigs = twigs
  hFourLeaves : fourLeaves = 4 * fourLeafTwigs
  hFiveLeaves : fiveLeaves = 5 * fiveLeafTwigs
  hTotalLeaves : totalLeaves = fourLeaves + fiveLeaves

theorem tree_twigs (m : TreeModel) : m.twigs = 2700 := by
  cases m <;> omega

theorem tree_four_twigs (m : TreeModel) : m.fourLeafTwigs = 810 := by
  have h := tree_twigs m
  cases m <;> omega

theorem tree_five_twigs (m : TreeModel) : m.fiveLeafTwigs = 1890 := by
  have h1 := tree_twigs m
  have h2 := tree_four_twigs m
  cases m <;> omega

theorem tree_four_leaves (m : TreeModel) : m.fourLeaves = 3240 := by
  have h := tree_four_twigs m
  cases m <;> omega

theorem tree_five_leaves (m : TreeModel) : m.fiveLeaves = 9450 := by
  have h := tree_five_twigs m
  cases m <;> omega

theorem tree_total_leaves (m : TreeModel) : m.totalLeaves = 12690 := by
  have h1 := tree_four_leaves m
  have h2 := tree_five_leaves m
  cases m <;> omega

end LemmaWeave.Problems.GSM8K.Sprint1001A03P2
