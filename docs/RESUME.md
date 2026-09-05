# 次の開始位置

環境構築を最初から繰り返す必要はありません。GitHub ActionsでLean 4.33.1と固定mathlibが実行済みです。`docs/EXECUTION_ENVIRONMENT.md` と `reports/command-index.json` を参照してください。

最初の5小問は全てLean検証・公理監査が通っています。Model/Goalsのハッシュは `8af41f90043f974febccefd85eac511209802f3ce3ce34a92c066d3459b7310f` です。証明に合わせて書き換えないでください。

1. `reports/acceptance.json` のAC04を確認し、固定原ページとModel/Goalsの独立レビューを実行する。現在はすべて `self_review_only`。別エージェントの利用を明示的に許可されていない実行モードでは起動せず、自己レビューと区別する。
2. `reports/dependencies/raw/LemmaWeave.Problems.DNC2026M1.sets_solution.json.gz` の2,795宣言から分類を続ける。`knowledge/declaration-classifications.json` にない宣言を、型と同版ソースに基づいて分類する。最初の対象は `Nat.le_of_dvd` の前提、`Finset.mem_Icc` の局所有限順序インスタンス、`Lean.Omega` の数学的正当性と実装用の宣言との区別。
3. `knowledge/educational-frontier.json.gz` は未分類宣言ごとの型・利用問題を保持する。名前の接頭辞だけで数学的前提を実装詳細に除外しない。日本語カードの前提を埋め、学習グラフの既知部分を再検査する。
4. 抽出器の残試験は、Lean 4.33.1でimportした本文が自然に消去・取得不能となるケース。`explicitHole` は `sorryAx` の負例であり、そのケースの再現済みとは扱わない。正確な宣言ソースファイルの対応も未完。
5. `scripts/analyze_corpus.py`、`scripts/lw.py validate`、`scripts/acceptance_report.py`、`scripts/lw.py report` の順に再生成する。圧縮生グラフは実行出力ハッシュと連結されているので編集しない。
6. 最初の縦通しの未完ゲートを解消してから、50小問・6分野、完了10小問・4分野への拡大を再評価する。次の公式原ページ候補は同PDFの第1問[1](2)(3)、第2問[1]、第3問[1](2)(3)。これらは位置を閲覧しただけで小問台帳に未登録であり、収集件数へ入れない。図形は実際の点・角・距離からモデル化し、無根拠な座標仮定へ置き換えない。

ユーザーは既存リポジトリへの適宜pushを許可しています。原資料の再配布、許諾申請の送信、他者への連絡、マージはその許可から自動的に導かれません。原資料の利用条件と、独自の数学コードの公開範囲を分けてください。
