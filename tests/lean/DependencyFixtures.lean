import Mathlib.Data.Nat.Basic
import Mathlib.Algebra.Group.Basic
import LemmaWeave.Audit.Extract
import LemmaWeave.Audit.Fixtures.Shared

namespace LemmaWeave.Tests

def OnlyInType (n : Nat) : Prop := n = n
theorem typeOnly (n : Nat) : OnlyInType n := rfl
theorem explicitBase (n : Nat) : n + 0 = n := Nat.add_zero n
theorem wrapper (n : Nat) : n + 0 = n := explicitBase n
theorem implicitSimp (n : Nat) : n + 0 = n := by simp
theorem classDependency {α : Type} [AddMonoid α] (a : α) : a + 0 = a := add_zero a

theorem sharedWrapper (n : ℕ) : n + 0 = n := LemmaWeave.Audit.Fixtures.shared_add_zero n

-- These are deliberately invalid trust fixtures, isolated from the library root.
axiom forbiddenFixture : False
theorem hiddenForbidden : False := forbiddenFixture

-- Deliberate negative fixture for the erased/untrusted body branch, NEVER an exam proof.
theorem explicitHole : False := by sorry

#print axioms wrapper
#print axioms hiddenForbidden
#lw_dependencies LemmaWeave.Tests.wrapper to "work/wrapper-graph.json"
#lw_dependencies LemmaWeave.Tests.typeOnly to "work/type-only-graph.json"
#lw_dependencies LemmaWeave.Tests.implicitSimp to "work/simp-graph.json"
#lw_dependencies LemmaWeave.Tests.classDependency to "work/class-graph.json"
#lw_dependencies LemmaWeave.Tests.hiddenForbidden to "work/forbidden-graph.json"

#lw_dependencies LemmaWeave.Tests.sharedWrapper to "work/shared-graph.json"
#lw_dependencies LemmaWeave.Audit.Fixtures.even_two to "work/mutual-graph.json"

#lw_dependencies LemmaWeave.Tests.explicitHole to "work/hole-graph.json"
run_cmd do
  let graph ← LemmaWeave.Audit.extract ``LemmaWeave.Tests.wrapper 1
  Lean.Elab.Command.liftIO <| IO.FS.writeFile "work/cutoff-graph.json" graph.compress

-- Import the actual exported .olean view. Unlike explicitHole, no declaration
-- is altered or supplied with an unproved body to synthesize this boundary.
run_cmd do
  Lean.Elab.Command.liftIO Lean.enableInitializersExecution
  let exported ← Lean.Elab.Command.liftIO <| Lean.importModules
    #[{ module := `LemmaWeave.Audit.Fixtures.Exported }] {}
    (loadExts := true) (level := .exported)
  let graph ← Lean.withEnv exported <|
    LemmaWeave.Audit.extract `LemmaWeave.Audit.Fixtures.exported_add_zero
  Lean.Elab.Command.liftIO <| IO.FS.writeFile "work/exported-body-graph.json" graph.compress

end LemmaWeave.Tests
