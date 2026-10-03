# カーネーション本数の平均

9本、14本、13本の3束に含まれるカーネーション本数の平均を求める。

**取得済み固定GSM8Kの1問。**

- 3束の総数を求め、総数＝束数×平均の整数式を用いる。

## bouquet_total：3束の合計

条件：各束は9本、14本、13本。

根拠：

得られること：合計36本。

既習の根拠：有限個の数量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.bouquet_total`。

## bouquet_average：平均本数

条件：合計36本を3束で等分する。

根拠：

得られること：平均は12本。

既習の根拠：合計＝個数×平均。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.bouquet_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.bouquet_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
