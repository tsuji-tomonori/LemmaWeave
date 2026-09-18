# 雑誌の割引総額

18か月、月2号の各号が25セント引きのとき通常価格との差を求める。

**取得済み固定GSM8Kの1問。**

- twice-a-monthを毎月2号とする。

## magazine_issues：号数

条件：18か月、月2号。

根拠：

得られること：36号。

既習の根拠：期間×頻度。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.magazine_issues`。

## magazine_savings：割引総額

条件：36号が各25セント引き。

根拠：

得られること：900セント=9ドル。

既習の根拠：単価差×個数、100セント=1ドル。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.magazine_savings`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914E.magazine_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
