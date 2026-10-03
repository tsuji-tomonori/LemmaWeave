# 砂糖20袋のキログラム換算

100グラム入りの砂糖を週20袋売るとき、週の販売量をキログラムで求める。

**取得済み固定GSM8Kの1問。**

- 1キログラム=1000グラムを明示して換算する。

## sugar_grams：週のグラム数

条件：1袋100グラムを20袋売る。

根拠：

得られること：20×100=2000グラム。

既習の根拠：袋数×1袋当たり質量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.sugar_grams`。

## sugar_kilograms：キログラム換算

条件：1000グラムが1キログラム。

根拠：

得られること：2000÷1000=2キログラム。

既習の根拠：グラムからキログラムへの単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.sugar_kilograms`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.sugar_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
