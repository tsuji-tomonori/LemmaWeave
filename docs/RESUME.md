# 日次実行の再開位置（2026-09-06）

最新計画は [DAILY_EXECUTION_PLAN](DAILY_EXECUTION_PLAN.md)。収集済み8,792問を一周し、1回10問、1日5回、50問/日を暫定目標とする。2026-09-07開始、初期予定2027-03-01、2026-09-14に7日実績から再予測。現在値は `reports/solve-progress.json`。

`python3 scripts/solve_queue.py --write` を実行し `next_batch` から作業する。完了・旧形式の仕上げ・未検証・未着手を分ける。キューや予測の生成は解答作成の代わりにならない。各問は必ずLLMが個別に読んで説明を考える。

以下はこれまでの経緯。日次実行の優先順位と現在の件数は上記を優先。

# 再開時の最優先：一問ずつの記述式解答

最新ユーザー指示は [個別解答方針](INDIVIDUAL_SOLUTION_POLICY.md)。LLMが問題を一問ずつ読み、根拠・条件・結論を順に説明し、各行をLean化する。中学既習の詳細分類、独立レビューを待たない。以下の旧記録の停止条件よりこの指示を優先する。

今回の対象はGSM8K固定版trainの1始まり1787・2060・7275行。`corpus/method_batches/GSM8K-INDIVIDUAL-PROBABILITY-0001.json`、`tests/lean/ProbabilitySteps.lean`、`knowledge/recipes/probability_*.json`を読む。条件付き確率、確率の逆算、独立性不足の反例を個別に扱った。生の結果・成功実行との結合は `reports/method-recipes.json` で確認する。

次の一問の具体候補は同じ固定版train 2390行のトランプと期待回数。原題を自分で読んで解答を作る。絵札と8を除いた全36枚、赤の3・6・9の6枚、1回の該当確率1/6、36回の指示変数の和、期待値の線形性を順番にモデル化する。期待値の式を未説明で仮定しない。復元抽出により各回の周辺分布が同じことと、線形性自体には独立性が不要なことを分ける。この候補はまだ形式化・検証済み件数へ含めない。

検証は既存の固定GitHub Actionsを用いる。各レシピにLeanファイルを登録し、必要な共有モジュールをreplayのbuildへ追加する。成功後にCI成果物を取り込み、`python3 scripts/check_method_recipes.py --render`。数学の個別解答をスクリプトで自動生成しない。

---

以下は履歴。現在の優先順位・件数は上記と最新レポートを参照する。

# 最新の再開位置（2026-09-06）

[進捗と残件](../reports/PROGRESS_20260906.md) と `corpus/method_batches/GSM8K-METHOD-0001.json` を読む。GSM8K先頭5問のモデル・解法を追加した。train第1問と第5問は追加解釈を明示した条件付きモデルで、全5問の独立意味レビューは未実施。次の解法抽出対象は固定train 6〜10行目。原題忠実性の判断を参考解答へ委譲しない。

検証は `python3 scripts/run.py --timeout 1800 -- python3 scripts/replay.py`、成功CI取り込みは従来どおり `scripts/import_evidence.py`。取り込み後に `python3 scripts/check_method_recipes.py --render` で現在のLean入力・グラフ・成功実行を再照合し、説明ページとバッチ集計を更新する。対象を追加する際はレシピの `lean_file` を必ず登録する。

以下は前回の再開記録。今回の差分・集計は上記を優先する。

# 現在の完了状況と残る作業

PR #1はマージ済み。その後の独立レビュー、候補登録、分類もmainへ順次反映した。ユーザーは別エージェントの利用・マージ・mainへのコミットとpushを明示的に許可している。承認待ちを再開条件にしない。

初期5小問は独立意味レビュー・Lean検証・公理監査・実依存抽出を実施済み。Model/Goalsの合成ハッシュは `8af41f90043f974febccefd85eac511209802f3ce3ce34a92c066d3459b7310f`。証明に合わせて変更しない。集合問題の解答欄対応は新独立レビューに訂正済み。

1. **資料の対象行為の確認**：`reviews/rights-20260905.md` に、DNCへの確認が必要な一時保存・解析・AI処理・派生公開の範囲と公式窓口を記録した。ユーザーの承認は第三者権利者の許諾を代替しない。今回の範囲を適法と自動認定してAC01を通さない。
2. **依存分類**：79カード、数学宣言122件と構文木定義60件を分類済み。実依存11,131件中10,949件が未分類。`reports/declaration-index.csv`（CI成果物）と圧縮frontierから型・定義元・利用先を調べる。構文規則はレビュー済みの閉じた60件だけで、数学定理・再帰規則・構造投影へ拡張しない。
3. **収集と証明の拡大**：収集済み5小問・2分野。原ページ位置を確認した追加8候補と未取得の数学ⅠA・ⅡBC公式冊子を登録済み。利用条件を確認後、仕様を起こして独立レビューへ回す。候補やURL発見だけを50小問・6分野に数えない。図形・統計の候補はBATCH-0002/0003にある。
4. **検証と証拠更新**：`python3 scripts/run.py --timeout 1800 -- python3 scripts/replay.py`。成功したCI成果物を `python3 scripts/import_evidence.py <artifact.zip> --run-id <ID>` で照合して取り込む。その後inventory、analyze_corpus、acceptance_report、lw reportを再生成する。コード・カード変更後の古いAC12を流用しない。

上記50小問/6分野・完全合格10小問/4分野は初期パイロットの履歴であり、現在の最終目標ではない。ユーザーの最新要望は万〜十万問規模から解法を抽出し、公式・概念・技法を共通補題へ分解し、説明を相互リンクすること。正本は `docs/METHOD_FIRST_DESIGN.md`。教材へのリンク生成も今回の実装対象。

先に進める作業：`corpus/imports/gsm8k.json` の実収集8,792問から意味レビューと解法抽出を行い、反復する操作を一般補題にする。現在この集合の意味レビュー・解法抽出・Lean検証はいずれも0。`knowledge/recipes/quadratic_extrema.json` が既存問題を共有補題で再構成する最初の例。原始的な前提の分解は各ノードの `unexpanded` に残る。未取得候補データセットは実績へ加えない。文科省対応の不足は `docs/CURRICULUM_COVERAGE.md`。
