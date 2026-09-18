# 本1冊当たりの平均ページ数

厚さ12インチ、1インチ当たり80ページの6冊について、1冊当たりの平均ページ数を求める。

**取得済み固定GSM8Kの1問。**

- 全冊を積み重ねた厚さが12インチである。

## books_total：全体のページ数

条件：全体は12インチで、1インチ当たり80ページ。

根拠：

得られること：全体は12×80=960ページ。

既習の根拠：比例関係と乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.books_total`。

## books_average：1冊当たりの平均

条件：960ページを6冊で平均する。

根拠：

得られること：答えは960÷6=160ページ。

既習の根拠：算術平均。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.books_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.books_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
