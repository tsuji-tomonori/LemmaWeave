# プール代の残額

30ドルから10人分の2.50ドルを払い、残額を求める。

**取得済み固定GSM8Kの1問。**

- 端数を避けるため金額はセントで表し、最後にドルへ戻す。

## pool_cost：入場料合計

条件：1人250セントで10人。

根拠：

得られること：合計2500セント。

既習の根拠：合計=単価×人数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.pool_cost`。

## pool_left：残額

条件：所持金3000セントから2500セントを払う。

根拠：

得られること：500セント、すなわち5ドル残る。

既習の根拠：1ドル=100セントとして単位換算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.pool_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.pool_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
