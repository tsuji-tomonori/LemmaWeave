# 大規模収集源と件数の扱い

確認日：2026-09-05。これは掲載元の一次資料による候補調査であり、取得実績・Lean証明数ではない。機械可読の候補情報は [large-scale.json](../corpus/source_catalogs/large-scale.json)。個別の取り込み実績は、取得ファイルのハッシュと行数を持つ収集manifestで別に管理する。

追記：GSM8Kの固定commit `3101c7d5072418e28b9008a6636bde82a006892c` を実取得し、[収集manifest](../corpus/imports/gsm8k.json)を保存した。実測8,792行、文字列の完全一致・NFC空白正規化の重複余剰はいずれも0、split横断重複0。数学的同値の判定、意味照合、解法抽出、Lean検証は未実施。原文・解答・MIT表示を別アーカイブに保存し、日本入試台帳とは別collectionとした。再実行は `scripts/import_gsm8k.py --help` を参照。

## 収集候補

| 候補 | 公称規模と単位 | 由来・形式 | 表示ライセンスと確認点 |
|---|---|---|---|
| [GSM8K公式カード](https://huggingface.co/datasets/openai/gsm8k) | main: train 7,473 / test 1,319行、合計8,792。README概数は8.5K | 英語の人手作問と自然言語解答。初等算術の文章題 | カードがデータをMITと明示。[公式LICENSE](https://github.com/openai/grade-school-math/blob/master/LICENSE)の表示を保持。最初の実収集に適する |
| [MATH原論文](https://arxiv.org/abs/2103.03874) / [公式repo](https://github.com/hendrycks/math) | 12,500競技数学問題 | 段階的な自然言語解答。形式証明ではない | [repoのMIT](https://github.com/hendrycks/math/blob/master/LICENSE)は確認。repoはローダ・評価コードと外部データリンクを置く構成であり、第三者由来の問題本文への適用範囲は取得前に別確認 |
| [NuminaMath-CoT公式カード](https://huggingface.co/datasets/AI-MO/NuminaMath-CoT) | 本文内訳859,608サンプル。一方メタデータはtrain 859,494 + test 100 = 859,594行 | 中国高校演習・競技・PDF・フォーラム等の混合。OCR、英訳、CoT整形。synthetic系も含む | Apache-2.0表示。原由来と生成・翻訳を区別し、取り込み対象の出典条件を記録。公称値の差14件は未解決 |
| [OpenMathInstruct-2公式カード](https://huggingface.co/datasets/nvidia/OpenMathInstruct-2) | train 13,972,791問題解答ペア。約14Mは独立問題数ではない | GSM8K/MATHの学習問題と派生作問、Llama 3.1生成解答。派生問題のexpected_answerは多数決 | CC-BY-4.0表示。元データ由来と帰属を保持。解答の多数決一致は証明の代わりにならない |
| [miniF2F v2](https://github.com/facebookresearch/miniF2F) / [Lean 4移植](https://github.com/google-deepmind/miniF2F) | v2は488形式命題。valid 244 / test 244 | 競技・高校・大学初年級。命題と任意の証明例。全件証明済みではない | 元repoのLeanはApache、MetamathはMIT等、ディレクトリ別。Lean 4移植はApache-2.0。原命題の修正歴と固定commit、元問題との照合が必要 |

GSM8Kの解答形式を変えたsocratic版は別問題として加算しない。MATH由来の問題はNuminaMath、OpenMathInstruct、miniF2Fにも現れるので、掲載元の合計を独立問題数にはしない。OpenMathInstructの1M/2M/5Mは全trainの部分集合である。[GSM8Kカード](https://huggingface.co/datasets/openai/gsm8k/raw/main/README.md)、[OpenMathInstructカード](https://huggingface.co/datasets/nvidia/OpenMathInstruct-2/raw/main/README.md)。

NuminaMathの二つの件数は [同一カードのメタデータと本文](https://huggingface.co/datasets/AI-MO/NuminaMath-CoT/raw/main/README.md)にある値を両方残した。実取得時の行数で検証する。miniF2Fのfork・版も混同しない。[OpenAI元repo](https://github.com/openai/miniF2F)とv2の表示に違いがあり、採用時はcommitと実命題集合を固定する。

## 日本の入試・市販問題集との区別

海外コーパスの件数で、日本の入試収集数や数学Ⅰ・Ⅱ・Ⅲ・A・B・Cの網羅数を増やさない。上記候補の日本教育課程への単元・概念・解法対応は未確認である。GSM8Kは初等算術の説明工程を試す素材であり、高校の図形、微積分、確率統計等の代用にしない。

[大学入試センターの利用条件](https://www.dnc.ac.jp/about_site.html)は、一般コンテンツの利用条件から試験問題を分け、問題の二次利用について事前申請と第三者権利への対応を案内している。既存の日本入試台帳の状態は、この海外候補調査によって変更しない。各大学公式PDF、市販問題集、出版社のデジタル教材は、版・出典・保存／解析／外部送信／再公開の条件を個別に記録する。市販問題集を購入できることと、自動収集・再公開条件を確認できたことを同一にしない。これは一律禁止の判定ではなく、具体的な資料・行為ごとの確認事項である。

## 取り込み後の工程と合格分母

1. 許諾表示、上流の固定版、取得物のSHA-256、実行ログを保存する。問題本文の取得は候補カタログ作成とは別イベントとする。
2. 原出題、言い換え、生成派生、別解を分け、正規化前後の件数を残す。本文ハッシュだけで数学的同一性を断定しない。
3. 誤植・矛盾・曖昧な定義域・図の不足を検査し、未確認の模範解答は参考候補として扱う。
4. 解答を「変形・適用・場合分け・構成・最適性」等の段階に分け、各段階を共有補題・健全性定理へ接続する。数値が一致しただけで方法を説明済みにしない。
5. 現行の意味照合、Leanビルド、公理監査、実依存抽出に加え、学習ノードへの分解と説明の状態を保存する。
6. 集計は取得行数、正規化問題数、意味照合数、方法の検証数、共有補題数、説明済み数を別々に出す。評価用testを取り込む場合は、将来の未知問題評価から除外する。

10,000・100,000問は処理目標であり、この候補台帳を置いただけでは達成しない。数が増えても新しい概念が増えない場合があるため、問題数と並べて、文科省の内容区分ごとの未説明概念、未対応解法、再利用された共有補題を報告する。
