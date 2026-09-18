# 3人のリンゴの平均

3人の平均が30個で、2人が40個と28個のときLaylaの個数を求める。

**取得済み固定GSM8Kの1問。**

- 平均×人数で3人の合計を求める。

## apples_total：3人の合計

条件：3人の平均が30個。

根拠：

得られること：合計は30×3=90個。

既習の根拠：平均の定義。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.apples_total`。

## apples_layla：Laylaの個数

条件：合計90個のうちMaggieが40個、Kelseyが28個。

根拠：

得られること：Laylaは90−40−28=22個。

既習の根拠：合計から既知の部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.apples_layla`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.apples_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
