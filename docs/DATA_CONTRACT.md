# データ契約

版：0.1。これは実装用の仕様であり、スキーマ／検証CLIはまだ実装していない。`templates/` は構造の具体例で、実際の問題・実行証跡ではない。

## 1. 正本とフォルダ

機械可読ファイルを正本とする。初期段階はYAML／JSONを問題別・補題別に保存し、横断検索用CSVや集約JSONを生成する。複数エージェントが一つの巨大なJSONを同時に上書きする設計にしない。

```text
lemmaweave/
  AGENTS.md
  REQUIREMENTS.md
  lean-toolchain                  # 互換性を確認してから作成
  lakefile.toml                   # 同上。lakefile.leanでもよい
  lake-manifest.json
  LemmaWeave/
    Foundations/                 # 学習前提との接続・数学的基盤
    Definitions/
    Lemmas/                      # 問題非依存の共有補題
    Problems/                    # 原問題に対応する仕様・証明
    Audit/                       # 公理・依存抽出ツール
    AllVerified.lean              # 台帳から生成。未完問題の数も別途監査
  corpus/
    sources/
    papers/
    problems/
    scopes/                      # 収集対象と欠番・未確認
  knowledge/
    baselines/
    nodes/
    proof_variants/
    curriculum/
  reviews/
  runs/
  reports/
  scripts/
  tests/
  .private/raw/                  # 保存が許される資料のみ。Git対象外
  work/                          # 未完成コード・探索。合格対象とは隔離
```

このツリーは予定構成であり、今回の文書パッケージにLeanコードや実装済みCLIが存在することは意味しない。

## 2. エンティティ

| エンティティ | 一意性の単位 | 必須情報 |
|---|---|---|
| source | 掲載元・掲載先 | ID、公式／二次掲載、URL、機関、確認日時、取得条件、処理条件、再公開条件 |
| paper | 一冊子の版 | 出典、試験区分、年度、日程、科目、版、ハッシュ、取得状況、ページ、正誤表 |
| occurrence | 一つの出題事例 | 大学・学部・方式・冊子・大問小問位置、canonical problem参照 |
| problem | 一つの数学的要求 | ID、親子関係、仕様、原資料位置、変数・型・仮定・結論・回答形式 |
| proof_variant | ある問題の一つの解法 | ID、problem版、方法区分、Lean root宣言、学習ノード、証明状態 |
| learning_node | 学習すべき一つの事項 | 定義／補題等、命題、仮定、Lean宣言、前提、教育課程分類、説明骨子 |
| declaration | 固定環境のLean宣言 | 完全修飾名、宣言種別、型、本文の取得状態、パッケージ版、ソース位置 |
| review | 特定版への判定 | 担当役割・実行者／セッションID、独立性、対象ハッシュ、所見、判定 |
| run | 実際のコマンド実行 | 開始終了時刻、環境、入力ハッシュ、argv、終了コード、ログ参照 |
| batch | 一回の処理単位 | 対象ID、順序、予算、開始状態、結果、再開操作 |

`problem` と `occurrence` は分離する。同じ問題内容が複数学部に出題されたとき、内容の件数は1、出題事例は複数になる。

## 3. IDとバージョン

人が読めるID例：`JP-DNC-CT-2026-MAIN-M1A-Q01-S01-01`。これは書式例であり、このIDに対応する問題を本パッケージで新規登録したわけではない。

`exam_year` は入試年度、`exam_date` は実施日として別々に保持する。`curriculum_version` は現在の課程と当該出題時の課程を別に持てる形にする。訂正・転記修正・命題変更は版を上げ、旧版を追えるようにする。

証跡のキーは少なくとも `(problem_revision, semantic_model_hash, theorem_type_hash, proof_hash, git_commit, toolchain, mathlib_commit)`。古い版への合格を新しい版へ自動継承しない。

## 4. 状態は一つの列へ押し込まない

| 軸 | 状態の例 |
|---|---|
| source_status | `candidate`, `located`, `fetched`, `unavailable`, `access_blocked` |
| transcription_status | `not_started`, `draft`, `checked`, `uncertain` |
| semantic_status | `not_started`, `draft`, `self_review_only`, `independent_checked`, `changes_requested`, `stale` |
| proof_status | `not_started`, `draft`, `not_run`, `build_failed`, `kernel_checked`, `stale` |
| axiom_audit_status | `not_run`, `passed`, `failed`, `partial`, `stale` |
| dependency_status | `not_run`, `partial`, `extracted`, `stale` |
| inventory_status | `not_started`, `partial`, `mapped`, `stale` |
| educational_expansion_status | `not_started`, `outline`, `partial`, `closed` |
| release_status | `not_reviewed`, `restricted`, `eligible`, `published` |

`kernel_checked` は固定環境でのビルドが成功したという狭い意味で使用し、公理監査の合格や原問題の正しい翻訳を自動的には意味しない。UI上の「監査済み証明」は、別途、意味レビューと公理監査の合格を満たす計算結果とする。

作業不能は状態の代替ではなく `blockers[]` に構造化する。分類例：`source_missing`, `rights_uncertain`, `transcription_uncertain`, `semantic_ambiguity`, `environment_failure`, `proof_gap`, `missing_lemma`, `dependency_extraction_gap`, `review_unavailable`。

## 5. 権利情報

`access`, `processing`, `redistribution` の各行為に対し、`allowed`, `conditional`, `unknown`, `denied` と根拠を記録する。`processing` はダウンロード保存・自動解析・第三者サービス送信を必要に応じて細分化する。条件を充足した記録がなければ `conditional` を `allowed` と扱わない。

これは運用上の状態管理であり、法律上の適法性を自動判断するものではない。許諾が得られた場合も範囲・期限・媒体・第三者著作物を分離する。原資料、転記、画像、形式化コード、メタデータの公開判定を同一視しない。

## 6. 依存グラフ

### 6.1 生の形式依存

方向：`依存元のLean宣言 → 参照先のLean宣言`。

辺の属性：`type_reference`, `proof_reference`, `definition_reference`, `instance_reference`, `generated_reference` 等。判別できない種別を推測で埋めない。

型と本文の直接参照を保持し、そこから推移閉包を生成する。import一覧は対象探索には使用できるが、使用した補題の代替にはしない。再帰・相互定義による循環はSCC等で管理し、無限再帰を防ぐ。プリミティブ／取得できない本文／意図した打切りを、理由とともに境界として記録する。

### 6.2 学習依存

方向：`前提learning_node → 学ぶlearning_node`。

各辺に `proof_variant_id`, `reason`, `evidence`, `review_status` を持たせる。学習上の順序辺だけをDAG検査する。`used_by_problem`、`equivalent_to`、`alternative_to` は別の関係でありトポロジカルソートに含めない。

初期のノード種別：`definition`, `notation`, `lemma`, `theorem`, `method`, `foundation`。`method` は手順や発想の説明用で、対応する健全性命題がない限り「Leanで証明済み」とは表示しない。

分類軸：`baseline`, `high_school`, `legacy_curriculum`, `foundation`, `implementation`, `unclassified`。この分類はノード種別とは別である。原理が数学的なものを単に `implementation` として省かない。

### 6.3 宣言から学習ノードへの写像

各宣言は、learning_node、baseline項目、またはレビューされた実装詳細ルールへ対応づける。完全性の主張は対象となる宣言集合とルールの版を添える。ルール適用が曖昧なものは未分類に残す。

mathlibの一般定理と学習向け定理には、`same_statement`, `specializes`, `equivalent`, `adapts` の関係と橋渡し宣言を持たせる。表記上の類似のみで統合しない。

## 7. 補題カードの最低品質

Phase 1の補題カードは長い教科書本文ではないが、次を欠かさない。

1. 条件を含めた正確な主張と記号の説明。
2. 利用する前提・他の学習ノード。
3. 対応する固定版のLean宣言と抽出した証跡。
4. 当該問題でどこに使うか、および再利用範囲。
5. 小中既習判定の根拠、または未確認という状態。
6. 自分の言葉で書いた数段階の証明・説明の骨子。未展開箇所の名前と理由。
7. 形式証明済み／未証明、学習向け説明済み／未展開の別々の状態。

同じ内容を新しい名前で包むだけの宣言を新規数学成果と扱わない。既存定理の再利用も本プロジェクトにおいて有用な補題であるが、出自を残す。

## 8. 指標の定義

- `located_sources`：見つかった掲載元。問題数ではない。
- `fetched_papers`：実体とハッシュを確認できた冊子版数。
- `collected_problems`：原資料を確認して小問単位まで登録した正規化問題数。独自作問を含まない。
- `semantic_checked_problems`：現在版を独立に意味照合した問題数。
- `kernel_checked_problems`：要求する全結論に対応するLean定理が現在版でビルド成功した問題数。
- `audited_proofs`：独立意味照合、現在版のLean検証、許容公理監査がすべて合格した問題数。
- `phase1_complete_problems`：上記に加え依存抽出・補題写像が完了した問題数。
- `learning_nodes`：重複を除いた学習ノード数。形式化内部の補助宣言数とは別。
- `unclassified_dependencies`：説明先・基礎・実装詳細への写像が未決の宣言数。
- `educational_frontier`：形式的には根拠があっても、学習者向けにまだ前提へ分解していない数学的事項の集合。

証明率は、固定したバッチの対象小問数など実在する分母に対して計算する。1小問に5定理を作っても5問とは数えない。収集数から国全体・高校数学全体の網羅率は出さない。

`educational_frontier` が空というだけでも、基礎の置き方や学習順のレビューなしに教材完成とはしない。
