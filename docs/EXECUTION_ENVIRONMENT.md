# 実行環境

Lean 4.33.1 / mathlib 0df444a360eaa60ab8c11dca51a86af692955474。
`lake-manifest.json` の9依存は GitHub Actions の実チェックアウトで照合した。
環境成立の実行：https://github.com/tsuji-tomonori/LemmaWeave/actions/runs/33946598538

- `lean --version`: 0
- `lake --version`: 0
- `lake exe cache get Mathlib.Data.Nat.Basic Mathlib.Algebra.Group.Basic Mathlib.Data.Real.Sqrt Mathlib.Tactic`: 0
- `python3 scripts/check_pins.py`: 0
- `lake build`: 0（この時点は検査器と合成例。実問題の合格件数には含めない）
- `lake env lean tests/lean/Smoke.lean`: 0
- `lake env lean tests/lean/DependencyFixtures.lean`: 0

上記実行記録は `runs/20260905T0512*` ～ `runs/20260905T0514*` に保存。
後続の実問題試行は別の実行記録として管理する。

この作業環境にも同じ公開バイナリと依存を移した。転送ハッシュは
`environment/runtime-transfer.json`。バイナリの実行は終了コード1で
`failed to locate application`。Lean公式 `src/runtime/io.cpp` の
`lean_io_app_path` は Linux で `/proc/<getpid()>/exe` を読み取る。
この環境ではアプリケーションパス検出が成立しなかった。
`LEAN_SYSROOT` の指定でも解消しなかった。カーネル・ランタイムの改造は行っていない。

したがって、標準の実行先はGitHub Actionsとする。通常のLinux環境では、
固定toolchainを用意し `lake exe cache get ...`、`lake build`、
`python3 scripts/generate_audit.py`、`lake env lean LemmaWeave/Audit/AllRoots.lean`
の順で再現する。`AllTargets.lean` は未完の登録対象も含む。
