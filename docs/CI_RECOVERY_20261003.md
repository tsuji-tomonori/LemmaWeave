# CI修復と承認済み2件訂正の復旧候補（2026-10-03）

## 対象と反映先

基準は `f6b8d12930760eb4f52658e3150fc656fdf3269e`。対象はLean構文・証明本体・namespace解決、driverの引数と定理参照、監査出力先、CI回帰テストの修復である。数学的条件の訂正は、2026-10-03に承認された試験得点94→104（100%上限時は不可能）と蔵書の受贈方向→81冊の2件に限る。他の原命題・問題文・意味レビュー履歴・ready台帳を変更しない。

反映先はPR #5の作業branch `codex/sprint-20260919-0000` とする。PR #5全体のmainへの統合、解答の意味承認、`solution_ready`への昇格は行わない。正確なHEADの必要CIが成功するまでマージしない。

## 復旧元と検証境界

最終統合 `c26f9901884a92bce51f43fbd24b01cdd68e45e4` の原本は復元できていない。保存済み156b100、hidden-driver修復f77abb6、1ec721e時点のコードsnapshotから新しい後継候補を構成した。

- after-source-integration Git bundle: SHA-256 `32030bcd1ef63dd631f3542873e9fd1043174a03d9f45a44dc25f7cd05d22371`
- hidden-driver-final-f77abb6.zip: SHA-256 `5cf5d4f9609c9e5d9ce4d23f960f006d012423cd5a2d031f65510ec7aaa49202`
- lemmaweave-fixed-driver28-evidence.zip: SHA-256 `def1330235676fb7c078a93557bc12bd92f3af0d4e3b23c49bfcaca52141cf01`

ZIPのCRC、展開パス、bundle前提を確認した。過去のgraph・run・意味レビュー記録を現在の成功証拠として取り込まない。互換性が未決のc9ff34f証拠package候補は採用していない。

## 承認済みの訂正と履歴

技術限定版1459965では元モデルの不整合を維持し、実Leanで2件の失敗を確認した。原文を固定commit・全ファイルhash・レコードhashで再照合した後、次の2件だけを訂正する。

- 試験：既得点2146、目標2250より算術上104が必要。100%以下の得点なら達成不可能であることを別命題にする。原参照解答94と計算誤りの所在は `EXAM_SCORE_ERRATUM_CANDIDATE.md` に残す
- 蔵書：娘と母からの受贈5冊を増加側に置き、72+19+5−15=81。元の誤った収支式と訂正理由は `BOOKS_SOURCE_CORRECTION_CANDIDATE.md` に残す

ユーザー承認は訂正実施の承認であり、ユーザー自身が数学を独立レビューしたという意味ではない。原題・元解答の出典と過去レビューを保持し、実行した検証を個別に記録する。2件の成功だけで全体CIや全レシピの意味検証を合格にしない。

## 監査と回帰テスト

歴史的な107driverの対象と監査根を保持し、承認済み2件の専用driverを追加する。技術復旧入力へのhashと対象対応表は `reviews/hidden-driver-technical-scope-20261003.json` に分離した。これは入力の固定と対象所属の検査用であり、現在のLean・依存監査成功を示すものではない。

判定側では、過去のauthor checkが現在の未承認・staleな意味レビュー状態を上書きしないよう拒否条件を強化した。実Lean回帰テストの一時checkoutにはリポジトリと同じ固定`lean-toolchain`を置く。

修復用branchは定常処理から分けて固定する。全branchのpushで同じworkflowを使い、branch別concurrencyで定常処理による取消を避ける。統合前に最新base・レビュー・競合とexpected headを確認し、統合結果のコミットも再検証する。

## 今回の個別検証

承認済み2件と、同じモデルファイルに属する18件を原資料の各レコードへ個別照合した。18件の構造体条件と定理型は基準版から不変である。各件の現在入力によるLean実行、公理検査、説明行ごとの実依存を確認した範囲だけ、20件のauthor bindingと2バッチのモデルhashを更新し、旧bindingを履歴に残した。蔵書バッチの5つのscopeラベルは台帳の`self_reviewed_model`へ保守的に揃え、元の`complete`ラベルも履歴に残した。

寄付問題の結論`90 ≠ 60`は変更していない。既存の二つの条件付き解釈の証明を実際に使用する証明本体へ修復した。前段10定理への参照を一つずつ除く負例は全て拒否された。

今回のローカル検査では、変更モデル173件のビルド、Python109テスト、上記20件とDNC3件の現在入力によるLean・公理・説明依存検査が成功した。これらは全体replay・exact-head GitHub CI・全解答の意味検証の成功を表さない。全体の凍結モデルbindingには未解決の不一致があり、原ファイルSHAを合成モデルSHAと曖昧に読み替える互換fallbackは追加していない。

## 容量を抑えた全件診断

`python3 scripts/run_method_targets.py --all --archive-graphs --jobs 1`を追加した。既定のCI動作は変更しない。各driverの全明示exportを記録し、実行入力・出力SHA・公理collector・グラフ・説明依存を検査する。rawをlossless gzipへ保存し、復元SHAとmanifestの読み戻しを確認した後、その実行で初めて作成したrawコピーだけを除く。既存rawは事前に保存し、削除しない。失敗はmanifestと終了コードへ残し、recipe以外の監査根も保存する。

このオプションは独立差分レビューと保存・欠落・改竄・衝突の回帰検査を通過した。全件実測とGitHub成果物transport/importの互換性確認は別であり、未確認のまま既定CIへ切り替えない。
