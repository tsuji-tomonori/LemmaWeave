# 次の開始位置

## 1. M0：環境の実測

Lean 4.33.1 / mathlib `0df444a360eaa60ab8c11dca51a86af692955474` を使用する。公式mathlibの `lean-toolchain` が同じ版であることを確認済み。`lake-manifest.json` は同コミットの上流lockから構成した候補であり、Lakeでの解決は未実行。

許可された環境でLean 4.33.1を用意した後、このディレクトリで以下を実行する。依存版を更新する操作を普段の再開手順に混ぜない。

```bash
python3 scripts/run.py -- lean --version
python3 scripts/run.py -- lake --version
python3 scripts/run.py -- lake build
python3 scripts/run.py -- lake env lean tests/lean/Smoke.lean
python3 scripts/run.py -- lake env lean tests/lean/DependencyFixtures.lean
```

最初のLake実行前後で `environment/pins.json` の9パッケージのコミットと実体を照合し、lockが変化した場合は自動継続せず原因を記録する。cache取得を使う場合も、取得とカーネル検査を区別する。`lake update`やlatest追随は再開用の既定コマンドにしない。

抽出器のエラーは最大4回程度の同方針試行で切り分ける。v4.33.1の `Lean.Declaration`、`Lean.Util.CollectAxioms` を参照してAPI適合を確認する。import済みの証明本体が公開されていない場合は `partial` を保持し、同じ版のソースの再エラボレーションを検討する。

## 2. M0：監査処理の実動確認

`tests/lean/DependencyFixtures.lean` の出力を、次の最低限の辺に対して検査する。この一覧は**未実行の検査計画**である。

- `wrapper → explicitBase` の証明項参照。
- `typeOnly → OnlyInType` の型参照。
- `implicitSimp` の証明項に挿入された参照（ソースに名前がなくても落とさない）。
- `classDependency` の型クラスを介した参照。
- `hiddenForbidden → forbiddenFixture` を経由する公理違反。
- 追加する相互定義、取得不能本体、打切り、他ファイルに隠した `sorry` の負例。

```bash
python3 scripts/run.py -- python3 scripts/lw.py graph-audit work/wrapper-graph.json
python3 scripts/run.py -- python3 scripts/lw.py graph-audit work/forbidden-graph.json
```

後者は非0が正しい負例結果。草案ではソース位置取得、import済み本体の完全性保証、SCC出力、ASTからの型／証明項ハッシュの台帳接続、Lean負例自動検査が未実装。`lw.py`の昇格禁止を外す前にこれらを実装し、回帰検査する。

## 3. M1：最初の5小問

`corpus/scopes/BATCH-0001.json` の5候補に固定する。まず以下の公式資料を閲覧・利用する範囲を確認する。

- 問題索引：https://www.dnc.ac.jp/kyotsu/kakomondai/r8/r8_honshiken_mondai.html
- 利用条件：https://www.dnc.ac.jp/about_site.html
- 原問題：索引内「数学Ⅰ」。冊子内印刷ページ30、32–33、44が今回の対象。

公開閲覧、内部保存、機械解析、原文転記、形式化した派生物、第三者AI送信、再公開を別々に判定する。大学入試センターは試験問題を一般コンテンツの自由利用対象から除外し、二次利用の事前申請を案内している。今回は行為別照合が未完了であり、適法・違法を確定していない。別途送信や申請を行うときは許可が必要。

取得が許される範囲が確定したら、原PDFのbytesからSHA-256を記録し、ページ画像の数式を目視で再照合する。今回のPDFテキスト抽出では数字・根号・補集合記号等が破損しており、スクリーンショット結果にも画像本体が届かなかった。

最初の意味仕様は `JP-DNC-CT-2026-MAIN-M1-Q01-S01-01` から作る。各問題に `Model.lean`、`Goals.lean`、日本語仕様を用意し、`Proof.lean`と分離する。`freeze`コマンドは原資料確認後のみ使用できる。独立した原資料レビューができなければ `self_review_only` とし、独立意味照合件数を増やさない。

他の4候補も各台帳の `blockers[].next_action` から進める。解集合は必要十分性、最大最小は上下界と達成を満たす。有限探索へ移す場合は原モデルとの橋渡しを別定理とする。

## 4. 受入実装と拡大

監査済み1小問の受入にはAC01–AC12全ての証跡を要する。現在の `accept` は安全側の不合格固定であり、完全な受入CLIではない。意味レビューの版照合、全目標と定理の対応、証明項監査、全宣言の分類、学習DAG、別環境再現を揃えてから判定を実装する。

M0と最初の1件が完了した後に50小問・10完了への拡大を再評価する。目標値は変更しない。収集は6分野、証明は4分野、図形や近似等のモデル化を含める。現在の5候補は2分野のみで、パイロットの分野要件は満たさない。
