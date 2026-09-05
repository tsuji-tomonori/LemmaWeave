# 次の開始位置

環境構築を最初から繰り返す必要はありません。GitHub ActionsでLean 4.33.1と固定mathlibが実行済みです。`docs/EXECUTION_ENVIRONMENT.md` と `reports/command-index.json` を参照してください。

最初の5小問は全てLean検証・公理監査が通っています。Model/Goalsのハッシュは `8af41f90043f974febccefd85eac511209802f3ce3ce34a92c066d3459b7310f` です。証明に合わせて書き換えないでください。

1. `reports/acceptance.json` のAC04を確認し、固定原ページとModel/Goalsの独立レビューを実行する。現在はすべて `self_review_only`。別エージェントの利用を明示的に許可されていない実行モードでは起動せず、自己レビューと区別する。
2. `reports/dependencies/raw/LemmaWeave.Problems.DNC2026M1.sets_solution.json.gz` の2,795宣言から分類を続ける。`knowledge/declaration-classifications.json` にない宣言を、型と同版ソースに基づいて分類する。最初の対象は `Nat.le_of_dvd` の前提、`Finset.mem_Icc` の局所有限順序インスタンス、`Lean.Omega` の数学的正当性と実装用の宣言との区別。
3. `knowledge/educational-frontier.json.gz` は未分類宣言ごとの型・利用問題を保持する。名前の接頭辞だけで数学的前提を実装詳細に除外しない。日本語カードの前提を埋め、学習グラフの既知部分を再検査する。
4. 抽出器の10ケース目は実際のexported importで本文が失われるケースとして実装済み。`LemmaWeave/Audit/Locations.lean` が定義元・行範囲を別出力し、`scripts/check_locations.py` が生グラフ全宣言との一致を検査する。行範囲が記録されない宣言はその事実を残す。コード変更後は完全再実行と新しい証拠の取り込みが必要。
5. 固定環境では `python3 scripts/run.py --timeout 1800 -- python3 scripts/replay.py` を実行する。成功したCI成果物を `scripts/import_evidence.py <artifact.zip> --run-id <ID>` で取り込み、`scripts/inventory.py --write`、`scripts/analyze_corpus.py`、`scripts/lw.py validate`、`scripts/acceptance_report.py`、`scripts/lw.py report` の順に再生成する。圧縮生グラフは実行出力ハッシュと連結されているので編集しない。
6. 最初の縦通しの未完ゲートを解消してから、50小問・6分野、完了10小問・4分野への拡大を再評価する。次の公式原ページ候補は同PDFの第1問[1](2)(3)、第2問[1]、第3問[1](2)(3)。これらは位置を閲覧しただけで小問台帳に未登録であり、収集件数へ入れない。図形は実際の点・角・距離からモデル化し、無根拠な座標仮定へ置き換えない。

ユーザーは既存リポジトリへの適宜pushを許可しています。原資料の再配布、許諾申請の送信、他者への連絡、マージはその許可から自動的に導かれません。原資料の利用条件と、独自の数学コードの公開範囲を分けてください。

今回の再開変更はPR #1（`codex/resume-phase1-audit`）。mainへの直接更新は自動承認レビューで拒否されたため、レビュー可能なブランチに保存している。マージ済みとは扱わない。現在は35カード、実依存11,131宣言のうち58件を根拠付き分類、11,073件未分類。独立意味レビューは0件。
