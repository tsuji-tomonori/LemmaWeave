# DVDの単位利益と総販売数から純利益を求める

制作費2000ドル、DVD製造費6ドル、販売価格はその2.5倍。1日500枚、週5日を20週販売した利益は？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- 税・流通費・売れ残り・追加固定費は原題にないため導入しない。500 moviesはDVD販売枚数と読む。
- 制作費は1枚ごとではなく期間全体から一度引く。

## empire_sale：販売単価

条件：販売価格は製造費6ドルの2.5倍。

根拠：

得られること：1枚15ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.empire_sale`。

## empire_margin：1枚当たりの粗利益

条件：販売15ドルから製造費6ドルを引く。

根拠：

得られること：1枚9ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.empire_margin`。

## empire_units：総販売枚数

条件：1日500枚、週5日、20週。

根拠：

得られること：500×5×20=50,000枚。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.empire_units`。

## empire_gross：販売による粗利益

条件：1枚9ドルを50,000枚販売。

根拠：

得られること：450,000ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.empire_gross`。

## empire_net：制作費を引く

条件：固定制作費2000ドルを一度だけ引く。

根拠：

得られること：純利益448,000ドル。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.empire_net`。

## empire_exists：全条件の充足

条件：販売15、単位利益9、50,000枚、粗利益450,000、純利益448,000。

根拠：

得られること：価格・数量・固定費の全関係を満たす。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.empire_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907B.empire_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
