# 旅行用の食べ物代

4ドルのサンドイッチ、その2倍のジュース、両者合計の75%の牛乳を買ったとき総額を求める。

**取得済み固定GSM8Kの1問。**

- two times more expensiveを参照解どおり2倍と読む。

## food_juice：ジュース代

条件：ジュースは4ドルのサンドイッチの2倍。

根拠：

得られること：ジュースは8ドル。

既習の根拠：倍率の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.food_juice`。

## food_subtotal：サンドイッチとジュース

条件：サンドイッチ4ドル、ジュース8ドル。

根拠：

得られること：小計は12ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.food_subtotal`。

## food_milk：牛乳代

条件：牛乳は小計12ドルの75%。

根拠：

得られること：牛乳は9ドル。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.food_milk`。

## food_total：食べ物代の総額

条件：小計12ドルに牛乳9ドルを加える。

根拠：

得られること：総額は21ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.food_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.food_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
