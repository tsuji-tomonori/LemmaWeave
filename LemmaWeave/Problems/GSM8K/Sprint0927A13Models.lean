import Mathlib
namespace LemmaWeave.Problems.GSM8K.Sprint0927A13

structure ColoredHangers where
  pink green blue yellow total : ℕ
  hPink : pink = 7
  hGreen : green = 4
  hBlue : blue + 1 = green
  hYellow : yellow + 1 = blue
  hTotal : total = pink + green + blue + yellow
theorem hangers_blue (m : ColoredHangers) : m.blue = 3 := by cases m; omega
theorem hangers_yellow (m : ColoredHangers) : m.yellow = 2 := by cases m; omega
theorem hangers_solution (m : ColoredHangers) : m.total = 16 := by cases m; omega

structure JellyBeans where
  napoleon sedrich pairSum twiceSum mikey : ℕ
  hNapoleon : napoleon = 17
  hSedrich : sedrich = napoleon + 4
  hPair : pairSum = napoleon + sedrich
  hTwice : twiceSum = 2 * pairSum
  hMikey : twiceSum = 4 * mikey
theorem jelly_sedrich (m : JellyBeans) : m.sedrich = 21 := by cases m; omega
theorem jelly_pair (m : JellyBeans) : m.pairSum = 38 := by cases m; omega
theorem jelly_solution (m : JellyBeans) : m.mikey = 19 := by cases m; omega

structure TicketTrades where
  bluePerRed redPerYellow yellowNeeded ownedYellow ownedRed ownedBlue
    bluePerYellow targetBlue ownedValue neededBlue versesPerBlue : ℕ
  hBluePerRed : bluePerRed = 10
  hRedPerYellow : redPerYellow = 10
  hYellowNeeded : yellowNeeded = 10
  hOwnedYellow : ownedYellow = 8
  hOwnedRed : ownedRed = 3
  hOwnedBlue : ownedBlue = 7
  hBluePerYellow : bluePerYellow = bluePerRed * redPerYellow
  hTarget : targetBlue = yellowNeeded * bluePerYellow
  hOwnedValue : ownedValue = ownedYellow * bluePerYellow + ownedRed * bluePerRed + ownedBlue
  hNeeded : targetBlue = ownedValue + neededBlue
  hVerses : versesPerBlue = 2
theorem tickets_blue_per_yellow (m : TicketTrades) : m.bluePerYellow = 100 := by cases m; omega
theorem tickets_target (m : TicketTrades) : m.targetBlue = 1000 := by cases m; omega
theorem tickets_owned (m : TicketTrades) : m.ownedValue = 837 := by cases m; omega
theorem tickets_solution (m : TicketTrades) : m.neededBlue = 163 := by cases m; omega

structure DVDDiscount where
  percent discount original paid : ℕ
  hPercent : percent = 25
  hDiscount : discount = 40
  hRate : 100 * discount = percent * original
  hPaid : original = discount + paid
theorem dvd_original (m : DVDDiscount) : m.original = 160 := by cases m; omega
theorem dvd_solution (m : DVDDiscount) : m.paid = 120 := by cases m; omega

structure FriendsByGender where
  boyPercent girlPercent boys total girls : ℕ
  hBoyPercent : boyPercent = 55
  hGirlPercent : girlPercent + boyPercent = 100
  hBoys : boys = 33
  hRate : 100 * boys = boyPercent * total
  hSplit : total = boys + girls
theorem friends_total (m : FriendsByGender) : m.total = 60 := by cases m; omega
theorem friends_solution (m : FriendsByGender) : m.girls = 27 := by cases m; omega

end LemmaWeave.Problems.GSM8K.Sprint0927A13
