module

/-- Deliberately ordinary checked theorem. In the module system its exported
signature has no proof body. There is no sorry or custom axiom in this module. -/
public theorem LemmaWeave.Audit.Fixtures.exported_add_zero (n : Nat) : n + 0 = n :=
  Nat.add_zero n
