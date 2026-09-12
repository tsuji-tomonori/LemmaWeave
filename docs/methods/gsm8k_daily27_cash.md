# OliverとWilliamの所持金差

Oliverの20ドル札10枚・5ドル札3枚と、Williamの10ドル札15枚・5ドル札4枚の所持金差を求める。

**取得済み固定GSM8Kの1問。**

- 人物ごとに額面×枚数を合計し、所持金の差を求める。

## cash_oliver：Oliverの所持金

条件：20ドル札10枚と5ドル札3枚。

根拠：

得られること：Oliverは215ドル。

既習の根拠：所持金＝各額面×枚数の和。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.cash_oliver`。

## cash_william：Williamの所持金

条件：10ドル札15枚と5ドル札4枚。

根拠：

得られること：Williamは170ドル。

既習の根拠：所持金＝各額面×枚数の和。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.cash_william`。

## cash_difference：所持金の差

条件：Oliverは215ドル、Williamは170ドル。

根拠：

得られること：Oliverの方が45ドル多い。

既習の根拠：多い方＝少ない方＋差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.cash_difference`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.cash_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
