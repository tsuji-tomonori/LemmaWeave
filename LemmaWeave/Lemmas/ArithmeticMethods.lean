import Mathlib.Data.Rat.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! 数量の関係から解法を組み立てる共有補題。単位と場面のモデル化は適用側で明記する。 -/
namespace LemmaWeave.Lemmas.ArithmeticMethods

/-- 分母が0でないとき、部分量を掛け算の関係から求める。 -/
theorem fraction_from_balance (part whole denominator : ℚ) (hd : denominator ≠ 0) :
    part * denominator = whole ↔ part = whole / denominator := by
  exact (eq_div_iff hd).symm

/-- 基準量と、その一定倍の量を合わせる。 -/
theorem scaled_total (base ratio extra total : ℚ)
    (he : extra = ratio * base) (ht : total = base + extra) :
    total = (1 + ratio) * base := by
  rw [ht, he]
  ring

/-- 時間単位を換算してから掛けても、単価を換算してから掛けても同じ。 -/
theorem rate_conversion (rate duration unitSize : ℚ) :
    (rate / unitSize) * duration = rate * (duration / unitSize) := by
  ring

/-- 使用量と残量の保存式は、引き算による残量の式と同値。 -/
theorem remaining_iff (whole used remaining : ℚ) :
    used + remaining = whole ↔ remaining = whole - used := by
  constructor <;> intro h <;> linarith

/-- 保存式に加えて使用量が全体以下なら、残量は非負。 -/
theorem remaining_nonnegative (whole used remaining : ℚ)
    (hb : used + remaining = whole) (hu : used ≤ whole) : 0 ≤ remaining := by
  linarith

/-- 自己資金と二つの援助を合計して不足額を分離する。 -/
theorem missing_after_gifts (price saved gift ratio missing : ℚ) :
    saved + gift + ratio * gift + missing = price ↔
      missing = price - saved - (1 + ratio) * gift := by
  constructor <;> intro h <;> nlinarith

/-- 全体から使用量を除いた後、その残量の一定割合を取る。 -/
theorem fraction_of_remaining (whole used remaining ratio next : ℚ)
    (hb : used + remaining = whole) (hn : next = ratio * remaining) :
    next = ratio * (whole - used) := by
  rw [hn, (remaining_iff whole used remaining).mp hb]

/-- 一回当たりの量×対象数×反復回数×期間数を、期間当たりの量から合成する。 -/
theorem repeated_groups (each objects repeats periods : ℚ) :
    (each * objects * repeats) * periods = each * (objects * (repeats * periods)) := by
  ring

end LemmaWeave.Lemmas.ArithmeticMethods
