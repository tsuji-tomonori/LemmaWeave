# 参照した一次資料

確認日：2026-09-05。下記は要件を設計するための根拠であり、本プロジェクトの実装や証明の成功を示すものではない。Lean関連のlatest／生成API文書は動くため、実装時には採用した固定版を改めて確認する。

| ID | 出典 | 設計に用いた点 |
|---|---|---|
| S1 | 大学入試センター「過去3年分の試験問題」 https://www.dnc.ac.jp/kyotsu/kakomondai/ | 初期の公式収集元、年度・本試験／追試の区別 |
| S2 | 大学入試センター「このウェブサイトについて」 https://www.dnc.ac.jp/about_site.html | 試験問題の二次利用は一般コンテンツと分けて扱い、利用申請・第三者権利の確認が必要であるという案内 |
| S3 | 東京大学「入試問題の2次利用について」 https://www.u-tokyo.ac.jp/ja/admissions/undergraduate/e01_10.html | 大学ごとに二次利用条件・報告手順を確認する必要 |
| S4 | Lean community「Lean projects」 https://leanprover-community.github.io/install/project.html | Lean／mathlibをプロジェクトとして管理し、版変更後に再ビルドする運用 |
| S5 | Lean Language Reference「Axioms」 https://lean-lang.org/doc/reference/latest/Axioms/ | 公理依存の監査、sorryAx、追加信頼、native_decideによる公理の扱い |
| S6 | Lean API documentation「Lean.Declaration」 https://leanprover-community.github.io/mathlib4_docs/Lean/Declaration.html | 宣言の型・本文・定理／定義／公理の区分を用いた依存抽出の設計 |
| S7 | 文部科学省「中学校学習指導要領解説」 https://www.mext.go.jp/a_menu/shotou/new-cs/1387016.htm | 中学までの既習判定を公式の教育課程へ結びつける入口 |
| S8 | 文部科学省「小学校学習指導要領解説」 https://www.mext.go.jp/a_menu/shotou/new-cs/1387014.htm | 小学校算数を含む前提台帳の入口 |
| S9 | 文部科学省「高等学校学習指導要領解説」 https://www.mext.go.jp/a_menu/shotou/new-cs/1407074.htm | 高校数学の教育課程対応表の入口 |
| S10 | Lean Language Reference https://lean-lang.org/doc/reference/latest/ | タクティクと証明項、カーネル検査の位置づけ |

S7〜S9は今回、参照先の公式入口を確認した。個々の数学事項が小中で既習かの条項・ページ単位の照合は、今後baseline台帳で実施する。本文書はその照合が全項目で済んだと主張しない。

特定のLeanバージョンをこの仕様書で「導入済み」「検証済み」とはしない。S5では現在のnative_decideは呼出しごとの公理を生成すると説明されているため、特定の古い公理名のみを拒否する実装を避ける。実際の採用版でも許容リスト方式をテストする。

## 既存成果物

会話内で提供された `entrance_math_preview.html`、`entrance_math_catalog.xlsx`、`entrance_math_lean_starter_20260905.zip` を初期の種データとする。HTMLには51掲載経路・36大学・30学習モジュール案と、Lean検証済み0件という状態が明記されている。これらは全国・全年度の網羅でも、新規実行の証拠でもない。
