# LemmaWeave（レマウィーブ）

問題を解くための公式・概念・技法をLean 4の共有補題として持ち、根拠付きの解法と相互リンクするプロジェクトです。パッケージ名は `lemmaweave`、名前空間は `LemmaWeave` です。

最新方針は [一問ずつの記述式解答とLean化](docs/INDIVIDUAL_SOLUTION_POLICY.md)。LLMが原題を個別に読み、説明行ごとに根拠・適用条件・結論とLean定理を対応させます。中学までの内容は説明上の前提とし、作成者の自己照合で進めます。独立レビューと全依存分類は後続作業です。

今回の解答は、[条件付き確率と卵](docs/methods/probability_eggs.md)、[黄色い玉の個数](docs/methods/probability_marbles.md)、[独立性不足と候補者](docs/methods/probability_candidates.md)。現行入力への検証結果は [解法レポート](reports/method-recipes.json) の `individual_lines` と `proof_evidence`、解答完成件数は [バッチ集計](reports/method-batches.json) の `individual_solutions_ready` を参照します。旧 `phase1_complete` は総合監査の別軸です。

以下は従来の到達状況です。

最新の再開記録は [2026-09-06の進捗](reports/PROGRESS_20260906.md)。GSM8K先頭5問の解法モデルと共有補題8本を追加し、固定CIで5モデルの証明・公理監査・補題リンク照合が成功しました。2問は原文に不足する条件を明示したモデルで、独立意味レビューは未完です。

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

[最新の成功実行](https://github.com/tsuji-tomonori/LemmaWeave/actions/runs/34017142549) · [実行報告](reports/SESSION_REPORT.md) · [次の開始位置](docs/RESUME.md) · [AC01–AC12の不足](reports/acceptance.json)

数学的モデル・目標は `LemmaWeave/Problems/DNC2026M1/Model.lean` と `Goals.lean` に分離し、証明前にハッシュを固定しました。証明は `Proof*.lean`、台帳は `corpus/`、圧縮した生依存グラフは `reports/dependencies/raw/`、日本語カードは `knowledge/nodes/` にあります。原PDF・問題文・図・選択肢表はこのリポジトリに含めていません。

この形式化・解答は大学入試センターが作成または承認したものではありません。出典は[大学入試センターの公式掲載ページ](https://www.dnc.ac.jp/kyotsu/kakomondai/r8/r8_honshiken_mondai.html)。原資料の再利用条件は `corpus/sources/DNC-2026-MAIN.json` と `reviews/DNC-mathematical-code-scope.md` を参照してください。

## 解法中心への拡張（2026-09-05）

[改訂設計](docs/METHOD_FIRST_DESIGN.md)と[最新到達状況](reports/METHOD_FIRST_STATUS.md)に従い、二次関数の共有補題8本と、4つの説明ノードを組み合わせる解法例を追加しました。[リンク付きの解法例](docs/methods/quadratic_extrema.md)を生成し、Lean検証と使用補題リンクの照合が通っています。旧5小問のうち1問の別証明であり、問題数の増加ではありません。

大規模収集の第一弾は[実測manifest](corpus/imports/gsm8k.json)のGSM8K **8,792問**（train 7,473 / test 1,319）。取得・文字列重複検査済みです。取得時点では意味レビュー・解法抽出・Lean検証は各0問でした。再開後の処理数は [解法バッチ集計](reports/method-batches.json) で別に管理します。上の日本入試5小問とは別集計です。万単位の検証と文科省全分野の網羅は未完です。[収集元候補](docs/LARGE_SCALE_SOURCES.md)も取得実績とは分けています。

## 実行

通常のLinux環境で固定toolchainを用意して実行します。このチャットの作業環境ではアプリケーションパス検出に失敗したため、GitHub Actionsを標準の実行先にしています。

```sh
lake exe cache get Mathlib.Data.Nat.Basic Mathlib.Algebra.Group.Basic Mathlib.Data.Real.Sqrt Mathlib.Tactic
python3 scripts/run.py --timeout 1800 -- python3 scripts/replay.py
```

`run_targets.py` は全登録バリアントを個別に実行し、失敗した対象を台帳から消しません。終了コード0だけで意味レビューを合格にしません。`lw.py accept` は未完ゲートが残る間、終了コード2です。

`tests/lean/DependencyFixtures.lean` の独自公理と `sorry` は拒否を検査するための負例です。入試証明のimport集合に入りません。抽出器試験は10ケースです。Leanのexported importで定理本文が自然に取得不能になるケースも再現し、未許可の公理として拒否することを確認します。

CI成果物のZIPは `python3 scripts/import_evidence.py <artifact.zip> --run-id <GitHub実行ID>` で取り込みます。現行コード・型・実行出力のハッシュが一致しなければ取り込まず、独立意味レビューや資料の利用条件を自動承認しません。宣言の定義元モジュール・相対ソースパス・取得可能な行範囲は別の圧縮出典ファイルに保存します。

`python3 -m unittest discover -s tests -v` は44テスト。`scripts/inventory.py --write` は実際の依存型と日本語カードを照合し、未分類宣言を型・利用先とともに残します。生成CSVはCI成果物に含まれます。

根の型と証明項から参照を取り出し、ラッパー・暗黙参照・インスタンス・再帰の先まで追っています。証明項全文は保存せず、実参照とLeanの非暗号学的な構造ハッシュを保存します。証明ファイル、型、出力、実行入力には別途SHA256を用います。グラフはgzip圧縮JSONで、`scripts/lw.py` はそのまま読み込めます。

教材UI・教科書全文は未着手です。最初に `AGENTS.md`、`REQUIREMENTS.md`、`docs/DATA_CONTRACT.md`、`docs/ACCEPTANCE.md`、`docs/MIGRATION.md`、`docs/ROADMAP.md` を読んでください。

追加8小問は原ページの位置と分野を確認した候補であり、収集完了5小問には加えていません。処理条件の未確認事項は [権利レビュー](reviews/rights-20260905.md)、残る完了条件は [実行報告](reports/SESSION_REPORT.md) に明記しています。PR #1はマージ済みで、その後の変更もmainへ反映しています。
