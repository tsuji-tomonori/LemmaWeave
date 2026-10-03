import Mathlib

namespace LemmaWeave.Problems.GSM8K.Sprint0929A06P3

structure StampsModel where
  paperFifths : ℕ
  envelopeFifths : ℕ
  totalFifths : ℕ
  ounces : ℕ
  stamps : ℕ
  hPaper : paperFifths = 8
  hEnvelope : envelopeFifths = 2
  hTotal : totalFifths = paperFifths + envelopeFifths
  hOunces : totalFifths = 5 * ounces
  hStamps : stamps = ounces

theorem stamps_paper (m : StampsModel) : m.paperFifths = 8 := by
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  simp_all <;> omega

theorem stamps_total_fifths (m : StampsModel) : m.totalFifths = 10 := by
  have hPrev := stamps_paper m
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  simp_all <;> omega

theorem stamps_ounces (m : StampsModel) : m.ounces = 2 := by
  have hPrev := stamps_total_fifths m
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  simp_all <;> omega

theorem stamps_solution (m : StampsModel) : m.stamps = 2 := by
  have hPrev := stamps_ounces m
  rcases m with ⟨a, b, c, d, e, h1, h2, h3, h4, h5⟩
  simp_all <;> omega

structure HouseModel where
  loan : ℕ
  cashPaid : ℕ
  salePrice : ℕ
  firstPrice : ℕ
  hLoan : 4 * loan = 3 * 500000
  hPurchase : cashPaid + loan = 500000
  hSaleFunds : salePrice = cashPaid
  hAppreciation : 4 * salePrice = 5 * firstPrice

theorem house_loan (m : HouseModel) : m.loan = 375000 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem house_cash (m : HouseModel) : m.cashPaid = 125000 := by
  have hPrev := house_loan m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem house_sale (m : HouseModel) : m.salePrice = 125000 := by
  have hPrev := house_cash m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem house_solution (m : HouseModel) : m.firstPrice = 100000 := by
  have hPrev := house_sale m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure StickersModel where
  combined : ℕ
  afterCards : ℕ
  packs : ℕ
  doraPacks : ℕ
  hCombined : combined = 2 * 9
  hCards : afterCards + 10 = combined
  hPacks : 2 * packs = afterCards
  hSplit : 2 * doraPacks = packs

theorem stickers_combined (m : StickersModel) : m.combined = 18 := by
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem stickers_after_cards (m : StickersModel) : m.afterCards = 8 := by
  have hPrev := stickers_combined m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem stickers_packs (m : StickersModel) : m.packs = 4 := by
  have hPrev := stickers_after_cards m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

theorem stickers_solution (m : StickersModel) : m.doraPacks = 2 := by
  have hPrev := stickers_packs m
  rcases m with ⟨a, b, c, d, h1, h2, h3, h4⟩
  simp_all <;> omega

structure PetsModel where
  catsTotal : ℕ
  dogWeight : ℕ
  hCats : catsTotal = 7 + 10
  hDog : dogWeight = 2 * catsTotal

theorem pets_cats (m : PetsModel) : m.catsTotal = 17 := by
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

theorem pets_solution (m : PetsModel) : m.dogWeight = 34 := by
  have hPrev := pets_cats m
  rcases m with ⟨a, b, h1, h2⟩
  simp_all <;> omega

structure VegetablesModel where
  crateWeight : ℕ
  cartonWeight : ℕ
  totalWeight : ℕ
  hCrates : crateWeight = 12 * 4
  hCartons : cartonWeight = 16 * 3
  hTotal : totalWeight = crateWeight + cartonWeight

theorem vegetables_crates (m : VegetablesModel) : m.crateWeight = 48 := by
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

theorem vegetables_cartons (m : VegetablesModel) : m.cartonWeight = 48 := by
  have hPrev := vegetables_crates m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

theorem vegetables_solution (m : VegetablesModel) : m.totalWeight = 96 := by
  have hPrev := vegetables_cartons m
  rcases m with ⟨a, b, c, h1, h2, h3⟩
  simp_all <;> omega

end LemmaWeave.Problems.GSM8K.Sprint0929A06P3
