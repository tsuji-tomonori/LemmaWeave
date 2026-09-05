# LemmaWeave（レマウィーブ）

問題を解くための公式・概念・技法をLean 4の共有補題として持ち、根拠付きの解法と相互リンクするプロジェクトです。パッケージ名は `lemmaweave`、名前空間は `LemmaWeave` です。

2026-09-05時点では、大学入試センター2026年度本試験「数学Ⅰ」の5小問で、Leanビルドと公理監査が通りました。独立した意味レビューは5小問で完了しました。資料の処理条件と補題台帳の完全な分類は未完です。50小問収集・10小問完了のパイロット目標には未到達です。

| 軸 | 実績 |
|---|---:|
| 原ページ確認・数学的仕様作成 | 5小問 |
| 独立意味レビュー前の自己レビュー記録 | 5小問 |
| 独立意味レビュー | 5小問 |
| Lean検証 / 許容公理監査 | 5 / 5小問 |
| 実依存抽出・定義元照合 / 別環境再実行 | 5 / 5小問 |
| 日本語の補題等カード | 79件 |
| 未分類の実依存宣言（重複除外） | 10,949件 |
| 補題棚卸し完了 / Phase 1完全合格 | 0 / 0小問 |

実行済み環境は Lean 4.33.1 / mathlib `0df444a360eaa60ab8c11dca51a86af692955474`。固定した9依存のリビジョンをCIで照合しています。

[成功した実行](https://github.com/tsuji-tomonori/LemmaWeave/actions/runs/33965117317) · [実行報告](reports/SESSION_REPORT.md) · [次の開始位置](docs/RESUME.md) · [AC01–AC12の不足](reports/acceptance.json)

数学的モデル・目標は `LemmaWeave/Problems/DNC2026M1/Model.lean` と `Goals.lean` に分離し、証明前にハッシュを固定しました。証明は `Proof*.lean`、台帳は `corpus/`、圧縮した生依存グラフは `reports/dependencies/raw/`、日本語カードは `knowledge/nodes/` にあります。原PDF・問題文・図・選択肢表はこのリポジトリに含めていません。

この形式化・解答は大学入試センターが作成または承認したものではありません。出典は[大学入試センターの公式掲載ページ](https://www.dnc.ac.jp/kyotsu/kakomondai/r8/r8_honshiken_mondai.html)。原資料の再利用条件は `corpus/sources/DNC-2026-MAIN.json` と `reviews/DNC-mathematical-code-scope.md` を参照してください。

## 解法中心への拡張（2026-09-05）

[改訂設計](docs/METHOD_FIRST_DESIGN.md)に従い、二次関数の共有補題8本と、4つの説明ノードを組み合わせる解法例を追加しました。旧5小問のうち1問の別証明であり、問題数の増加ではありません。

大規模収集の第一弾は[実測manifest](corpus/imports/gsm8k.json)のGSM8K **8,792問**（train 7,473 / test 1,319）。取得・文字列重複検査済みですが、意味レビュー・解法抽出・Lean検証は各0問です。上の日本入試5小問とは別集計です。万単位の検証と文科省全分野の網羅は未完です。[収集元候補](docs/LARGE_SCALE_SOURCES.md)も取得実績とは分けています。

## 実行

通常のLinux環境で固定toolchainを用意して実行します。このチャットの作業環境ではアプリケーションパス検出に失敗したため、GitHub Actionsを標準の実行先にしています。

```sh
lake exe cache get Mathlib.Data.Nat.Basic Mathlib.Algebra.Group.Basic Mathlib.Data.Real.Sqrt Mathlib.Tactic
python3 scripts/run.py --timeout 1800 -- python3 scripts/replay.py
```

`run_targets.py` は全登録バリアントを個別に実行し、失敗した対象を台帳から消しません。終了コード0だけで意味レビューを合格にしません。`lw.py accept` は未完ゲートが残る間、終了コード2です。

`tests/lean/DependencyFixtures.lean` の独自公理と `sorry` は拒否を検査するための負例です。入試証明のimport集合に入りません。抽出器試験は10ケースです。Leanのexported importで定理本文が自然に取得不能になるケースも再現し、未許可の公理として拒否することを確認します。

CI成果物のZIPは `python3 scripts/import_evidence.py <artifact.zip> --run-id <GitHub実行ID>` で取り込みます。現行コード・型・実行出力のハッシュが一致しなければ取り込まず、独立意味レビューや資料の利用条件を自動承認しません。宣言の定義元モジュール・相対ソースパス・取得可能な行範囲は別の圧縮出典ファイルに保存します。

`python3 -m unittest discover -s tests -v` は35テスト。`scripts/inventory.py --write` は実際の依存型と日本語カードを照合し、未分類宣言を型・利用先とともに残します。生成CSVはCI成果物に含まれます。

根の型と証明項から参照を取り出し、ラッパー・暗黙参照・インスタンス・再帰の先まで追っています。証明項全文は保存せず、実参照とLeanの非暗号学的な構造ハッシュを保存します。証明ファイル、型、出力、実行入力には別途SHA256を用います。グラフはgzip圧縮JSONで、`scripts/lw.py` はそのまま読み込めます。

教材UI・教科書全文は未着手です。最初に `AGENTS.md`、`REQUIREMENTS.md`、`docs/DATA_CONTRACT.md`、`docs/ACCEPTANCE.md`、`docs/MIGRATION.md`、`docs/ROADMAP.md` を読んでください。

追加8小問は原ページの位置と分野を確認した候補であり、収集完了5小問には加えていません。処理条件の未確認事項は [権利レビュー](reviews/rights-20260905.md)、残る完了条件は [実行報告](reports/SESSION_REPORT.md) に明記しています。PR #1はマージ済みで、その後の変更もmainへ反映しています。
