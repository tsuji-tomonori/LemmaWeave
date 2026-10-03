import LemmaWeave.Audit.Extract

namespace NameResolutionA
theorem ready : True := True.intro
end NameResolutionA

namespace NameResolutionB
theorem ready : True := True.intro
end NameResolutionB

open NameResolutionA

#lw_dependencies ready to "work/name-resolution-open-graph.json"
#lw_dependencies NameResolutionA.ready to "work/name-resolution-qualified-graph.json"

open NameResolutionB

/-- error: ambiguous identifier ``ready`, possible interpretations: [NameResolutionA.ready, NameResolutionB.ready] -/
#guard_msgs in
#lw_dependencies ready to "work/name-resolution-ambiguous-graph.json"

open Lean Elab Command in
run_cmd do
  for file in ["work/name-resolution-open-graph.json",
               "work/name-resolution-qualified-graph.json"] do
    let raw ← liftIO <| IO.FS.readFile file
    let json ← liftIO <| IO.ofExcept (Json.parse raw)
    let roots ← liftIO <| IO.ofExcept (json.getObjValAs? (Array String) "roots")
    unless roots == #["NameResolutionA.ready"] do
      throwError "Name resolution changed the exported root: {file}"
  if ← liftIO <| (System.FilePath.mk "work/name-resolution-ambiguous-graph.json").pathExists then
    throwError "Ambiguous root unexpectedly produced a graph"
