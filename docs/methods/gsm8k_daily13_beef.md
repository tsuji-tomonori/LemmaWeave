# 牛肉5パックの代金

4ポンド入りを5パック、1ポンド5.50ドルで買った代金を求める。

**取得済み固定GSM8Kの1問。**

- 小数誤差を避けるため550セントとして計算する。

## beef_pounds：総重量

条件：1パック4ポンドを5パック。

根拠：

得られること：総重量は20ポンド。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.beef_pounds`。

## beef_total_cents：セントでの代金

条件：20ポンド、1ポンド550セント。

根拠：

得られること：代金は11000セント。

既習の根拠：単価と数量の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.beef_total_cents`。

## beef_total_dollars：ドル換算

条件：100セントが1ドル、合計11000セント。

根拠：

得られること：110ドル。

既習の根拠：単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.beef_total_dollars`。

## beef_exists：条件の充足

条件：重量20、単価550、合計11000セント・110ドルと置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.beef_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.beef_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
