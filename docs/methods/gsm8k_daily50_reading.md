# 毎日の読書ページ数

180ページと100ページの本を2週間で同じページ数ずつ読了するための1日量を求める。

**取得済み固定GSM8Kの1問。**

- 2週間を14日とし、合計ページ数を等分する。

## reading_total：総ページ数

条件：180ページと100ページを合計する。

根拠：

得られること：総ページ数は280ページ。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.reading_total`。

## reading_days：読書日数

条件：1週7日で2週間。

根拠：

得られること：14日間。

既習の根拠：単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.reading_days`。

## reading_daily：1日ページ数

条件：280ページを14日に等分する。

根拠：

得られること：毎日20ページ。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.reading_daily`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918A.reading_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
