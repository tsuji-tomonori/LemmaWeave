import Mathlib.Data.Nat.Basic
namespace LemmaWeave.Audit.Fixtures

theorem shared_add_zero (n : ℕ) : n + 0 = n := Nat.add_zero n

mutual
  def evenFlag : ℕ → Bool
    | 0 => true
    | n + 1 => oddFlag n
  def oddFlag : ℕ → Bool
    | 0 => false
    | n + 1 => evenFlag n
end

theorem even_two : evenFlag 2 = true := rfl
end LemmaWeave.Audit.Fixtures
