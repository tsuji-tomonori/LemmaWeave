# 一袋の個数と総数から袋数を求める

Geraldの一袋40個に対しPamの一袋は三袋分。Pamの総数1200個の袋数を求める。

**取得済み固定GSM8Kの1問。**

- 各袋の個数は一定で、1200個を全て袋に入れている。

## apples_each：Pamの一袋分

条件：Geraldの一袋は40個、Pamの一袋はその三袋分。

根拠：

得られること：Pamの一袋は120個。

既習の根拠：40×3で比例量を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.apples_each`。

## apples_bags：袋数を求める

条件：総数1200個、各袋120個。

根拠：

得られること：袋は10袋。

既習の根拠：総数＝袋数×一袋の個数という自然数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.apples_bags`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.apples_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
