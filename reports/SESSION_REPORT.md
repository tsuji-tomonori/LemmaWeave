# LemmaWeave 実行報告 — 2026-09-05

GitHub Actions上で実行環境を構築できた。Lean 4.33.1と固定mathlibの互換性を実行で確認し、初期5小問の証明・公理監査・実依存の走査を実行した。独立レビューと補題分類が未完であり、プロジェクト全体を完了とは報告しない。

## 実績

| 軸 | 件数 |
|---|---:|
| 掲載元を発見 | 3（小問収集数とは別） |
| 版を固定した原冊子 | 1 |
| 小問の原ページ確認・数学的仕様 | 5 |
| 意味照合（self_review_only） | 5 |
| 独立意味レビュー | 0 |
| Lean検証 | 5 |
| 許容公理監査合格 | 5 |
| 型・証明項からの生依存走査 | 5 |
| 補題棚卸し完了 / Phase 1完全合格 | 0 / 0 |
| 日本語カード（定義・補題・基礎付録） | 35 |
| 実依存宣言（重複除外） | 11,131 |
| 根拠付き分類済み宣言 | 58 |
| 未分類宣言 | 11,073 |

50小問収集・6分野、10小問完了・4分野の目標は変更していない。現在は5小問、集合・整数と式・関数の2分野。次の拡大候補の位置を閲覧したことは収集済みに数えていない。

## 実ファイル

- `LemmaWeave/Problems/DNC2026M1/Model.lean`, `Goals.lean`：証明前に分離・固定した仕様。
- `ProofInequalities.lean`, `ProofExtrema.lean`, `ProofSets.lean`：5小問の全目標を証明。全解は同値、極値は上下界と達成を含む。
- `LemmaWeave/Lemmas/CommonDivisor.lean`：元の公約数モデルと有限探索の同値変換。
- `corpus/problems/`, `corpus/proof_variants/`, `reviews/`：出典・版・途中状態・モデルハッシュ・実行参照。
- `reports/dependencies/raw/*.json.gz`：型・証明項から抽出した生グラフ。各実行の出力SHA256と圧縮前のハッシュを照合できる。
- `reports/dependencies/*-analysis.json.gz`：形式依存の循環成分と公理監査。学習循環とは分離。
- `knowledge/nodes/`, `knowledge/learning-graph.json`, `knowledge/educational-frontier.json.gz`：日本語カード、既知の学習前提、未分類宣言ごとの型と利用問題。
- `reports/acceptance.json`, `reports/command-index.json`, `reports/metrics.json`：受入不足、実行コマンドと終了コード、件数。

## 実行証拠

[検証と監査が成功したGitHub Actions実行](https://github.com/tsuji-tomonori/LemmaWeave/actions/runs/33948148236)。検証した入力コミットは `9d427137107b16cf0f1ab016a115e5655d3344b4`。後の文書更新をこのコミットで実行済みと呼ばない。

台帳・圧縮生グラフ・カードを含めてpushしたコミット `7fd73a8c30711ef70ac1332d0351eba87b13c26d` も、[再実行33949512590](https://github.com/tsuji-tomonori/LemmaWeave/actions/runs/33949512590)で全ステップ成功した。5対象のビルド・監査、15件のPythonテスト、台帳検査を再確認した。ジョブログは `runs/github-run-33949512590/job.log`。この再実行は独立意味レビューではない。

| 実行コマンド・対象 | 終了コード |
|---|---:|
| `lean --version` / `lake --version`（Actions） | 0 / 0 |
| `lake exe cache get Mathlib.Data.Nat.Basic Mathlib.Algebra.Group.Basic Mathlib.Data.Real.Sqrt Mathlib.Tactic` | 0 |
| `python3 scripts/check_pins.py`（9依存照合） | 0 |
| `lake build`（登録5小問を含む） | 0 |
| `lake build LemmaWeave.Problems.DNC2026M1.ProofInequalities` | 0 |
| `lake build LemmaWeave.Problems.DNC2026M1.ProofSets` | 0 |
| `lake build LemmaWeave.Problems.DNC2026M1.ProofExtrema` | 0 |
| `lake env lean work/audit_<problem-variant>.lean`（5対象それぞれ） | 各0 |
| `lake env lean tests/lean/DependencyFixtures.lean` | 0 |
| `python3 scripts/check_extractor.py`（9ケースの期待結果） | 0 |
| `python3 -m unittest discover -s tests -v`（ローカル15テスト） | 0 |
| `python3 scripts/analyze_corpus.py` | 0 |
| `python3 scripts/lw.py validate` | 0 |
| `python3 scripts/acceptance_report.py`（不足を出力） | 0 |

個々の完全なargv・入力ハッシュ・stdout/stderr・終了コードは `reports/command-index.json` と `runs/*/run.json` にある。検査コマンドが0で終了することと、標準合格が出ることは別である。

当初の失敗も保存した。キャッシュ引数の誤り、抽出器のToJson Prop、出力先不在、Omegaのimport、自然数の局所有限順序の依存不足、InUniverseの展開不足を修正した。数学的不可能性とは判定していない。旧出力方式の重複抽出を中断した実行はcancelledであり、そのプロセスの未取得の終了コードはnullのまま保持する。

この作業場所では同じ公開バイナリの取得・ハッシュ照合・展開はできたが、`lean --version` が `failed to locate application`、終了コード1。`LEAN_SYSROOT` 指定でも失敗した。Lean公式実装の実行ファイルパス検出に関係する制限であり、ランタイムを改造せずActionsで続行した。

## 監査と残る境界

全5根の公理は `propext`, `Quot.sound`, `Classical.choice` のみ。禁止公理・unsafe宣言・打切り・本文取得不能は今回の実グラフでは0。元モデルから有限表への同値性もLeanで証明した。Python/CASをLean証明として数えていない。

各根の宣言数は、連立不等式10,813、集合2,795、パラメータ2,747、パラメータ対2,988、極値7,026。取得した実参照は完全に保存した。今回、exported importによって定理本文が自然に失われる再現試験を追加した。定義元モジュール・相対ファイル・取得可能な宣言行範囲の出力も追加し、生グラフの全宣言との一致をCIで検査する。行範囲のない生成宣言・プリミティブは明記し、行番号を捏造しない。

未展開箇所には、実数を有理Cauchy列の同値類で構成する基盤、平方根を支える順序・完備性、有限集合を商型で表す基盤、算術自動証明の正当性が含まれる。mathlibやLean.Omegaという接頭辞だけで説明不要と扱わない。

文部科学省の平成29年告示・小5算数（PDF241ページ、印刷235ページ）の約数・倍数を確認した。同箇所は倍数に0を含めないため、一般のNat整除を丸ごと既習扱いにしていない。

原資料は[大学入試センター公式掲載](https://www.dnc.ac.jp/kyotsu/kakomondai/r8/r8_honshiken_mondai.html)の2026年度数学Ⅰ、SHA256 `f008fbd83aa70eb044b473f7f3ce2dba43e54ce88456d8825721e0de115f8606`。原PDF・問題文・画像・選択肢表の二次利用は[同センターの条件](https://www.dnc.ac.jp/about_site.html)に従い別ゲートとする。原資料を公開リポジトリやCI成果物へ入れていない。

## 次の具体的操作

`docs/RESUME.md` に記載した順で、固定版の独立レビューと、`sets_solution` の未分類宣言から分類を続ける。最新件数は `reports/inventory.json` を参照する。別エージェントの起動・並行委任には現在の実行規則上、ユーザーの明示指示が必要。自己レビューを独立レビューへ読み替えない。

具体的な確認対象と委任範囲は `reviews/INDEPENDENT_REVIEW_REQUEST.md` に固定した。独立レビューの許可待ちは環境構築失敗を意味しない。補題分類・資料の処理許諾・収集範囲の拡大も未完であり、レビューだけで全体が完了するとは扱わない。

教科書全文と教材UIは作成していない。

## 今回の再開で実装した内容

- 分類台帳と実依存型のSHA256照合、日本語カード・利用小問・前提カードの相互検査。名前だけの一括分類を拒否する。
- 独立レビューを原資料、仕様版、Model、根の型、異なるレビューセッションに結び付け、古いレビューの流用を拒否する。
- 証明・監査の入力をローカルimportの推移閉包で検査し、未確認の中間モジュールを見逃さない。
- 10ケースの依存抽出器試験、定義元情報の完全照合、29件のPythonテスト、全パイプライン再実行と安全なCI成果物取り込み。
- AC01–AC12とパイロット条件を実際の証拠から評価する。合格を常に0へ固定する旧処理を除き、未達条件は実際に未達として残す。
- カードの学習前提はバリアントで実際に使われた宣言から作成する。別解の前提を無条件に混ぜない。
- 5小問の原ページと固定モデルを再照合し、`reviews/20260905-resume-source-review.json` に記録した。担当自身による確認なので独立レビューには数えない。

変更は [PR #1](https://github.com/tsuji-tomonori/LemmaWeave/pull/1) に保存。mainの直接更新は自動承認レビューに拒否されたため行っていない。原PDF・画像は公開していない。

最終コード `7f1da1febf39da619baa23aba5f6e8f347f4df6d` の [再実行33964077764](https://github.com/tsuji-tomonori/LemmaWeave/actions/runs/33964077764) は全ステップ成功。成果物のSHA256は `21b5a20fc79b89d3e58706ed20df11a07a9115d960df6d1f2ec47c8178a1f75a`。`scripts/import_evidence.py` が現行入力・実行出力を照合して取り込んだ。参照先は `reports/latest-ci-replay.json`、宣言出典の件数は `reports/source-mapping.json`、取得した実行記録は `runs/20260905T114*/` に保存した。

依存抽出のAC08と別環境再実行のAC12は5小問で証拠を検証できる。AC01（実際の資料処理条件）、AC04/07（独立意味・モデルレビュー）、AC09–11（全分類・教材前提）は未達。収集45小問以上の追加と分野拡大、合格10小問までの仕上げも必要であり、今回のCI成功をPhase 1全体の完了とは扱わない。
