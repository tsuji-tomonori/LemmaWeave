import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A16P1

structure SyrupModel where
  weeklyGallons : ℕ
  gallonsPerBox : ℕ
  boxCount : ℕ
  pricePerBox : ℕ
  totalCost : ℕ
  hWeekly : weeklyGallons = 180
  hCapacity : gallonsPerBox = 30
  hBoxes : weeklyGallons = gallonsPerBox * boxCount
  hPrice : pricePerBox = 40
  hCost : totalCost = boxCount * pricePerBox

theorem syrup_boxes (m : SyrupModel) : m.boxCount = 6 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

theorem syrup_solution (m : SyrupModel) : m.totalCost = 240 := by
  have hPrev := syrup_boxes m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

structure CrackersModel where
  students : ℕ
  nonEaters : ℕ
  eaters : ℕ
  crackersPerPack : ℕ
  totalEaten : ℕ
  hStudents : students = 20
  hNonEaters : nonEaters = 2
  hEaters : students = nonEaters + eaters
  hPack : crackersPerPack = 10
  hTotal : totalEaten = eaters * crackersPerPack

theorem crackers_eaters (m : CrackersModel) : m.eaters = 18 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

theorem crackers_solution (m : CrackersModel) : m.totalEaten = 180 := by
  have hPrev := crackers_eaters m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

structure CarnivalModel where
  games : ℕ
  found : ℕ
  ticketValue : ℕ
  totalValue : ℕ
  totalTickets : ℕ
  wonTickets : ℕ
  perGame : ℕ
  hGames : games = 5
  hFound : found = 5
  hTicketValue : ticketValue = 3
  hValue : totalValue = 30
  hTotalTickets : totalValue = ticketValue * totalTickets
  hWon : totalTickets = found + wonTickets
  hEqualGames : wonTickets = games * perGame

theorem carnival_total_tickets (m : CarnivalModel) : m.totalTickets = 10 := by
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

theorem carnival_won_tickets (m : CarnivalModel) : m.wonTickets = 5 := by
  have hPrev := carnival_total_tickets m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

theorem carnival_solution (m : CarnivalModel) : m.perGame = 1 := by
  have hPrev := carnival_won_tickets m
  rcases m with ⟨a,b,c,d,e,f,g,h1,h2,h3,h4,h5,h6,h7⟩
  simp_all <;> omega

structure TipModel where
  bill : ℕ
  percent : ℕ
  totalTip : ℕ
  friendShare : ℕ
  markShare : ℕ
  hBill : bill = 200
  hPercent : percent = 20
  hTipRate : 100 * totalTip = percent * bill
  hFriend : friendShare = 10
  hSplit : totalTip = friendShare + markShare

theorem tip_total (m : TipModel) : m.totalTip = 40 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

theorem tip_solution (m : TipModel) : m.markShare = 30 := by
  have hPrev := tip_total m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all <;> omega

structure BusModel where
  rows : ℕ
  sectionsPerRow : ℕ
  studentsPerSection : ℕ
  sections : ℕ
  capacity : ℕ
  hRows : rows = 13
  hSectionsPerRow : sectionsPerRow = 2
  hStudentsPerSection : studentsPerSection = 2
  hSections : sections = rows * sectionsPerRow
  hCapacity : capacity = sections * studentsPerSection

theorem bus_sections (m : BusModel) : m.sections = 26 := by
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

theorem bus_solution (m : BusModel) : m.capacity = 52 := by
  have hPrev := bus_sections m
  rcases m with ⟨a,b,c,d,e,h1,h2,h3,h4,h5⟩
  simp_all

end LemmaWeave.Problems.GSM8K.Sprint0929A16P1
